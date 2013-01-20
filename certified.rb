require 'net/https'

Net::HTTP.class_eval do
  alias _use_ssl= use_ssl=

  def use_ssl= boolean
    self.ca_file     = "#{File.dirname(__FILE__)}/certs/ca-bundle.crt"
    
    # Possibly the only good use case for a magic number
    #
    # Some tutorials and very naughty gems suggest doing:
    #   OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    #
    # irb> OpenSSL::SSL::VERIFY_PEER
    # => 1
    # irb> OpenSSL::SSL::VERIFY_NONE
    # => 0
    # irb> OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
    # (irb) warning: already initialized constant VERIFY_PEER
    # => 0
    #  
    # Thus invalidating a line like
    #
    #   self.verify_mode = OpenSSL::SSL::VERIFY_PEER 
    #
    # and requiring hardcoding the value `1'
    #
    self.verify_mode = 1
    self._use_ssl    = boolean
  end
end


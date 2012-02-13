require 'net/https'


module Certified
  VERSION = "0.1.0"
  CA_FILE = "#{File.dirname(__FILE__)}/certs/ca-bundle.crt"
end


Net::HTTP.class_eval do
  alias _use_ssl= use_ssl=

  def use_ssl= boolean
    self.ca_file     = Certified::CA_FILE
    self.verify_mode = OpenSSL::SSL::VERIFY_PEER
    self._use_ssl    = boolean
  end
end


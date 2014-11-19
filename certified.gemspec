Gem::Specification.new do |s|
  s.platform                    = Gem::Platform::RUBY
  s.name                        = 'certified'
  s.version                     = '1.0.0'
  s.licenses                    = ['MIT']
  s.summary                     = 'Ensure net/https uses OpenSSL::SSL::VERIFY_PEER to verify SSL certificates and provides certificate bundle in case OpenSSL cannot find one'
  s.description                 = "Ensure net/https uses OpenSSL::SSL::VERIFY_PEER to verify SSL certificates and provides certificate bundle in case OpenSSL cannot find one"

  s.required_ruby_version       = '>= 1.8.7'

  s.author                      = 'Stevie Graham'
  s.email                       = 'sjtgraham@mac.com'
  s.homepage                    = 'http://github.com/stevegraham/certified'

  s.files                       = Dir['README.md', 'certified.rb', 'certs/ca-bundle.crt']
  s.require_path                = '.'

  s.executables << 'certified-update'

  s.post_install_message = "IMPORTANT: Remember to use the included executable `certified-update` regularly to keep your certificate bundle up to date."
end

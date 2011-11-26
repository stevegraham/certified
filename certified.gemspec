Gem::Specification.new do |s|
  s.platform                    = Gem::Platform::RUBY
  s.name                        = 'certified'
  s.version                     = '0.1.0'
  s.summary                     = 'Ensure net/http uses peer verification'
  s.description                 = "Provides a certificate bundle in case cannot find it's own to verify certificates. Ensures verify mode is set to OpenSSL::SSL::VERIFY_PEER"

  s.required_ruby_version       = '>= 1.8.7'

  s.author                      = 'Stevie Graham'
  s.email                       = 'sjtgraham@mac.com'
  s.homepage                    = 'http://github.com/stevegraham/certified'

  s.files                       = Dir['README.md', 'certified.rb', 'certs/ca-bundle.crt']
  s.require_path                = '.'
end

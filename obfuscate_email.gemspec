Gem::Specification.new do |s|
  s.name        = 'obfuscate_email'
  s.version     = '0.0.1'
  s.summary     = "Obfuscate Email"
  s.description = "Command to obfuscate an email"
  s.authors     = ["Bèr Kessels"]
  s.email       = 'ber@berk.es'
  s.files       = ["lib/obfuscate_email.rb"]
  s.homepage    =
    'http://rubygems.org/gems/obfuscate_email'
  s.license       = 'MIT'

  s.executables  << "obfuscate"

  s.signing_key = File.join(ENV['HOME'], '.ssh', 'gem-private_key.pem')
  s.cert_chain = [File.join(ENV['HOME'], '.ssh', 'gem-public_cert.pem')]
end

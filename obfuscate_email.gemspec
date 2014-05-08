Gem::Specification.new do |s|
  s.name        = 'obfuscate_email'
  s.version     = '0.0.4'
  s.summary     = "Obfuscate Email"
  s.description = "Command to obfuscate an email"
  s.authors     = ["Bèr Kessels"]
  s.email       = 'ber@berk.es'
  s.files       = ["lib/obfuscate_email.rb"]
  s.homepage    = 'https://github.com/berkes/obfuscate_email'
  s.license       = 'MIT'

  s.executables  << "obfuscate"

  certs_dir =File.join(ENV['HOME'], '.gem', 'mycerts', '2014')
  s.signing_key = File.join(certs_dir,  'gem-private_key.pem')
  s.cert_chain = [File.join(certs_dir, 'gem-public_cert.pem')]
end

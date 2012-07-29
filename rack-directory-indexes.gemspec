# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rack/directory_indexes/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["tohosaku"]
  gem.email         = ["ny@cosmichorror.org"]
  gem.description   = %q{Sets the list of resources to look for, when the client requests a directory name }
  gem.summary       = %q{Sets the list of resources to look for, when the client requests a directory name }
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rack-directory-indexes"
  gem.require_paths = ["lib"]
  gem.version       = Rack::DirectoryIndexes::VERSION
end

# -*- encoding: utf-8 -*-
require File.expand_path('../lib/auto_truncated_logger/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["SHIBATA Hiroshi"]
  gem.email         = ["shibata.hiroshi@gmail.com"]
  gem.description   = "logger of auto truncated old file."
  gem.summary       = "AutoTruncatedLogger is a auto truncate old logfile. if you always attension to Rails log file, should use this gem."
  gem.homepage      = "https://github.com/hsbt/auto_truncated_logger"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "auto_truncated_logger"
  gem.require_paths = ["lib"]
  gem.version       = AutoTruncatedLogger::VERSION
end

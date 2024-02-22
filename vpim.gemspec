require 'rubygems'
require 'pp'
require './gemspec'
require './lib/vpim/version'

Gem::Specification.new do |s|
  info(s)
  s.name              = "vpim"
  s.version           = Vpim::VERSION
  s.summary           = "iCalendar and vCard support for ruby"
  s.description       = <<'---'
This is a pure-ruby library for decoding and encoding vCard and iCalendar data
("personal information") called vPim.
---
  s.has_rdoc          = true
  s.extra_rdoc_files  = ["README.rdoc", "CHANGES", "COPYING", "samples/README.mutt" ]

  s.files           = `git ls-files`.split($/)
  s.test_files      = Dir.glob("test/test_*.rb")
  s.executables     = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.require_path      = "lib"
# s.add_dependency("plist")
# s.autorequire       = "vpim"
end


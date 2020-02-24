#!/usr/bin/env ruby
require 'rubygems'
require 'mustache'

class Noop < Mustache
    self.template_file = "#{__dir__}/src/noop.mustache"
end

file = File.open("#{__dir__}/src/no-op.c", 'w')
view = Noop.new
view[:FOO] = Time.now.to_i
file.puts(view.render)
file.close
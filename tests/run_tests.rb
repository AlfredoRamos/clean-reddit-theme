#!/usr/bin/env ruby
# encoding: UTF-8
$stdout.sync = true

require_relative 'test_case'

begin
  TestCase.new.run_tests
rescue => err
  abort "#{err.message}\n\t#{err.backtrace.join("\n\t")}"
end

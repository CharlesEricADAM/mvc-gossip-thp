require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'pry'
require 'router'
require 'controller'
require 'gossip'

Router.new.perform

# binding.pry
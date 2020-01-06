require 'bundler/setup'
Bundler.require

require_relative "../app/item.rb"
require_relative '../app/application'

Item.new('apple',0.50)

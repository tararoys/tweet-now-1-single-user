# Set up gems listed in the Gemfile.
# See: http://gembundler.com/bundler_setup.html
#      http://stackoverflow.com/questions/7243486/why-do-you-need-require-bundler-setup
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# Require gems we care about
require 'rubygems'

require 'uri'
require 'pathname'

require 'pg'
require 'active_record'
require 'logger'
require 'twitter'

require 'sinatra'
require "sinatra/reloader" if development?

require 'erb'

# Some helper constants for path-centric logic
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

APP_NAME = APP_ROOT.basename.to_s

# Set up the controllers and helpers
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }

# Set up the database and models
require APP_ROOT.join('config', 'database')

CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key    = "euchzowuYMqqK1IxJSBA"
  config.consumer_secret = "SSTFtu2QSkTnMqZhZ6neOJsXEbK7zFeUp9kas0pm60"
  config.access_token        = "128418777-ylr8Vd5mmCiftcAmm9dj6qehvI7zsbw66UN2Xdcr"
  config.access_token_secret = "eIgDgCJoF0X7m8600cd2TGPDFQZ4wtwFfCAbRdWkI5URX"
end

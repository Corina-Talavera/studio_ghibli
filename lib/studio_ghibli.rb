require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative "studio_ghibli/version"
require_relative 'studio_ghibli/api'
require_relative 'studio_ghibli/film'
require_relative 'studio_ghibli/cli'
require_relative 'studio_ghibli/version'
module StudioGhibli
  class Error < StandardError; end
  # Your code goes here...
end

#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rubygems'
require 'json'

class API
  def get_film
   data = open('https://ghibliapi.herokuapp.com/films')
   .read
   JSON.parse(data)
  end
end

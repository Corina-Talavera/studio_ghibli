#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'
require 'net/http'
require 'rubygems'
require 'json'
class Film
  attr_accessor :title, :description, :rt_score
  def initialize(title_hash)
    title_hash.each do |method,arg|
      if self.respond_to?("#{method}=")
        self.send("#{method}=",arg)
      end
    end
  end
end

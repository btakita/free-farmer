require 'rubygems'
require 'sinatra'
require 'sinatra/base'

dir = File.dirname(__FILE__)
require "#{dir}/free_farmer/routes"

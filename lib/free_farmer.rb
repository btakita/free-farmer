require 'rubygems'
require 'sinatra'
require 'sinatra/base'

dir = File.dirname(__FILE__)
$:.unshift File.expand_path("#{dir}/../vendor/lucky-luciano/lib")
require "lucky_luciano"
require "#{dir}/free_farmer/resources"
require "#{dir}/free_farmer/routes"

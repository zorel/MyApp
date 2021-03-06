require 'rubygems'
require 'sinatra'
require 'java'

include TorqueBox::Injectors

get '/1' do
 begin
   java.lang.Integer.parse_int("asdf")
 rescue java.lang.NumberFormatException => e
   return "Failed to parse integer: #{e.message}"
 end
end

get '/2' do
  service = inject('service:MyService')
  service.test
  return "test"
end

get '/3' do
  service = inject('service:MyService')
  service.test2
  return "test2"
end


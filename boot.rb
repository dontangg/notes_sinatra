require 'bundler'
Bundler.require
require 'sinatra/content_for'

Sinatra::Base.configure do |c|
  c.set :root, File.dirname(__FILE__)
  c.helpers Sinatra::ContentFor
end

%w{modules}.each do |folder_name|
  Dir[File.expand_path("../#{folder_name}/*.rb", __FILE__)].each {|file| require file}
end

NotesApp.run! if __FILE__ == $0

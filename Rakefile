require './app'
Dir[File.expand_path("../lib/tasks/*.rb", __FILE__)].each {|file| require file}

Sprockets::Sinatra::Task.new do |t|
  t.environment = NotesApp.assets
  t.environment.js_compressor = :uglifier
  t.output      = "./public/assets"
  t.assets      = %w( app.js )
end


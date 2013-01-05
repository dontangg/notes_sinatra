require 'rake/sprocketstask'

Rake::SprocketsTask.new do |t|
  t.environment = Sprockets::Environment.new
  t.environment.append_path 'assets/javascripts'
  t.environment.js_compressor = :uglifier
  t.output      = "./public/assets"
  t.assets      = %w( app.js )
end


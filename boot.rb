require 'bundler'
Bundler.require

%w{modules}.each do |folder_name|
  Dir[File.expand_path("../#{folder_name}/*.rb", __FILE__)].each {|file| require file}
end

NotesApp.run! if __FILE__ == $0

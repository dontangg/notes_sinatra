
class NotesApp < Sinatra::Base
  helpers do
    def javascript_include_tag(source)
      source = "#{source}.js" if File.extname(source) == ''

      if settings.environment == :production
        manifest_path = File.join(settings.root, '/public/assets')
        manifest = Sprockets::Manifest.new(settings.assets, manifest_path)
        "<script src='/assets/#{manifest.assets[source]}'></script>"
      else
        settings.assets[source].to_a.map { |asset|
          "<script src='/assets/#{asset.logical_path}?body=1'></script>"
        }.join
      end
    end
  end
end


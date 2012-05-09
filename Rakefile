$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'bars'
  app.icons += %w{apple-touch-icon.png apple-touch-icon-72x72.png apple-touch-icon-114x114.png}
  app.frameworks += ['CoreLocation', "MapKit"]
  app.files += Dir.glob(File.join(app.project_dir, 'vendor/BubbleWrap/lib/**/*.rb'))
end

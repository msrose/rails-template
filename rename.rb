files = [ 'app/view/layouts/application.html.haml',
          'config.ru',
          'config/application.rb',
          'config/environment.rb',
          'config/environments/development.rb',
          'config/environments/test.rb',
          'config/environments/production.rb',
          'config/initializer/secret_token.rb',
          'config/initializer/session_store.rb',
          'config/routes.rb'
        ]

new_name = ARGV[0]
new_name_camelized = new_name.split('_').map(&:capitalize).join

files.each do |file|
  text = ''
  File.open(file, 'r') do |f|
    while line = f.gets
      text << line
    end
  end

  f = File.open(file, 'w')
  f.write(text.gsub('RailsTemplate', new_name_camelized).gsub('rails_template', new_name))
  file.close
end

new_name = ARGV[0]
new_name_camelized = new_name.split('_').map(&:capitalize).join

['./app/views/layouts/application.html.haml',
 './config.ru',
 './config/application.rb',
 './config/environment.rb',
 './config/environments/development.rb',
 './config/environments/test.rb',
 './config/environments/production.rb',
 './config/initializers/secret_token.rb',
 './config/initializers/session_store.rb',
 './config/routes.rb'
].each do |file|
  text = File.read(file).gsub('RailsTemplate', new_name_camelized).gsub('rails_template', new_name)
  File.open(file, 'w') { |f| f.puts text }
end

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
 './config/routes.rb',
 './Rakefile'
].each do |file|
  puts "Renaming #{file}..."
  text = File.read(file).gsub('RailsTemplate', new_name_camelized).gsub('rails_template', new_name)
  File.open(file, 'w') { |f| f.puts text }
end

puts "Creating a new README"
File.open("README.md", "w") do |f|
  f.puts "##{new_name_camelized}\nCreated with the rails template from https://github.com/msrose/rails_template"
end

puts "Project successfully renamed to #{new_name_camelized}"

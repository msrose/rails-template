# Ruby on Rails Template: msrose
This is the template I use for Ruby on Rails applications. Feel free to clone this repository and use the template in your own projects. Just follow these steps:

1. Clone the repository:

        $ git clone https://github.com/msrose/rails_template new_project_name
        $ cd new_project_name

2. Destroy the current git files:

        $ rm -rf .git

3. Initialize a new git repository:

        $ git init

4. Rename the project (the name must be underscored, i.e. NewProjectName will not work):

        $ ruby rename.rb new_project_name

5. Delete the rename file (recommended, as it is now useless):

        $ rm rename.rb

6. Run bundler without production gems:

        $ bundle --without production

7. Add the files to git and make your first commit:

        $ git add .
        $ git commit -m "Initial commit."

##Gems added
* bootstrap-sass
* strong_parameters
* haml-rails
* rspec-rails
* guard-rspec
* guard-spork
* childprocess
* spork
* faker
* capybara
* rb-inotify
* factory_girl_rails
* pg

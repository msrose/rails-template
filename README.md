# Ruby on Rails Template: msrose
This is the template I use for Ruby on Rails applications. Feel free to clone this repository and use the template in your own projects. Just follow these steps:

1. Clone the repository:

        $ git clone git@github.com:msrose/rails_template.git new_project_name 
        $ cd new_project_name

2. Destroy the current git files:

        $ rm -rf .git
  
3. Rename the project:

        $ ruby rename.rb new_project_name

4. Initialize a new git repository:

        $ git init

5. Run bundler without production gems:

        $ bundle --without production

6. Add the files to git and make your first commit:

        $ git add .
        $ git commit -m "Initial commit."

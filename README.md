# Ruby on Rails Template
This is the template I use for Ruby on Rails applications. Feel free to clone this repository and use the template for your own projects.

## Using this Template

1. Clone the repository:

    ```Shell
    $ git clone https://github.com/msrose/rails_template new_project_name
    $ cd new_project_name
    ```

2. Destroy the current git files:

    ```Shell
    $ rm -rf .git
    ```

3. Initialize a new git repository:

    ```Shell
    $ git init
    ```

4. Rename the project (the name must be underscored, i.e. NewProjectName will not work):

    ```Shell
    $ ruby rename.rb new_project_name
    ```

5. Delete the rename file (recommended, as it is now useless):

    ```Shell
    $ rm rename.rb
    ```

6. Run bundler without production gems:

    ```Shell
    $ bundle --without production
    ```

7. Add the files to git and make your first commit:

    ```Shell
    $ git add .
    $ git commit -m "Initial commit."
    ```

## Versions

* Rails: 3.2.13
* Ruby: 1.9.3

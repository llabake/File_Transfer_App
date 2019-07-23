# File Transfer App
File Transfer App lets the users transfer files from and to a remote server.

## Requirements

#### Ruby

This application uses Ruby version `2.5.1`. To install use `rvm` or `rbenv`.

* RVM

        rvm install 2.5.1
        rvm use 2.5.1
    - To set Ruby `2.5.1` as the default Ruby version for your computer, run 
        
            rvm use 2.5.1 --default

* Rbenv

        rbenv install 2.5.1
    - To switch to `2.5.1` temporarily for this project, use 
            
            rbenv local 2.5.1
    
    - To use this version as the default Ruby version for your global environment, use 
            
            rbenv global 2.5.1

#### Bundler

Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed

To install:

        gem install bundler

#### Rails

This applications uses the one of the latest versions of rails. You will need to upgrade if you don't already have it istalled. The rails version being used is `rails 5.2.1`.

To install:

        gem install rails

#### PostgreSQL

This application makes use of the postgres database. For local development, you need to install it.
To install postgres using `brew`:

        brew install postgresql
    
For extra information on how to configure, make use of this [tutorial](https://www.codementor.io/engineerapart/getting-started-with-postgresql-on-mac-osx-are8jcopb).

To install postgres using a client make use of this application - [Postgres.app](https://postgresapp.com/)

These are just recommendations, feel free to look up more ways of installing and configuring postgresSQL.

## Installation

To get up and running with the project locally, follow the following steps.

* Clone the app

        git clone https://github.com/llabake/file_tranfer_app.git

* Move into the directory and install all the requirements.

    ```bash
    cd file_tranfer_app/

    bundle install
    ```

* Setup the database

    Run this command  `EDITOR=vim rails credentials:edit`. This generates a `master.key` file. <br>
    Look through the pinned messages in the team's communication channel to get the correct key and replace the one generated in the `master.key` <br> 
    Run this command again `EDITOR=vim rails credentials:edit` to enter the correct `database credentials`
    Then run:

        rails db:create
        rails db:migrate

    Please note that if you don't have `vim` installed in your machine, you could use your a different editor.

* Run the application in the development environment

        rails s

    Now visit [localhost:3000](http://localhost:3000)

* Run test

        bundle exec rspec
* Deployment

    Link to the deployed app is here


* Features
    - Sign up
    - Login 
    - Upload file
    - Download file

* Author
    Lemboye Labake

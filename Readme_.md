# Docker environment for Rails 6 and React development

# Getting started

## Getting Rails ready
1. clone this project and `cd rails_on_docker`
2. create a rails app using react: `docker-compose run web rails new . --force --database=postgresql --webpacker=react`
3. prevent a warning with yarn: `docker-compose run web yarn install --check-files`
     * ([TODO] non sono sicuro che serva perché lo fa già il Dockerfile)
4. build because of Gemfile changes (due to rails app creation): `docker-compose build`
5. start the services: `docker-compose up`
6. create the db: `docker-compose run web rake db:create`
7. open browser on 'localhost:3000' to see the rails app

## Create Rails application with react
1. `rails new <api-name> -d=postgresql --webpacker=react --api`
    *  e.g: rails new . -f -d=postgresql --webpacker=react
2. WARNING!! change config/database.yml adding to `default`: 
   * ``host: db``
   * ``username: postgres``
   * ``password:``
2. `rails db:create`
3. `rails server -b 0.0.0.0`

# README (added by Rails)

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

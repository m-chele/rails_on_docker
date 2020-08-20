# Docker environment for Rails 6 and React development

# Getting started

## Getting Rails ready
1. clone this project and `cd rails_on_docker`
2. `docker-compose up` (now you have rails installed and db created on a container called `web`)

## Create Rails application with react
1. `rails new <api-name> -d=postgresql --webpacker=react --api`
    *  e.g: rails new . -f -d=postgresql --webpacker=react
2. WARNING!! change config/database.yml adding to `default`: 
   * ``host: db``
   * ``username: dbuser``
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

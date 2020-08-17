# Docker per Rails
Fonte: https://docs.docker.com/compose/rails/

## TODO
* studiare: https://www.jetbrains.com/help/ruby/using-docker-compose-as-a-remote-interpreter.html
* rifare tutto da zero
* verificare lentezza nello sviluppo


## inzializzazione (TODO: valutare se essite un modo per installare direttamente da qui webpacker)
docker-compose run web rails new . --force --no-deps --database=postgresql

## fa la build (serve dopo modifiche a Gemfile o Dockerfile)
* docker-compose build

## fa il boot dell'app
* docker-compose up

## fa la build prima di fare il boot
docker-compose up --build

## ferma l'app
* docker-compose down

## crea il db
* docker-compose run web rake db:create

## * WIP * installa webpacker (per usare React) 
* docker-compose run web bundle exec rails webpacker:install

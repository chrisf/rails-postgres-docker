# README

This is the skeleton to create a rails app with a postgresql server for CIS4339

* Ruby version: `2.6.5`
* Rails version: `6.0.0`

* System dependencies: `docker`

Initial setup:
`docker-compose build`

To run the dev server:
`docker-compose up`

Create the database:
`docker-compose exec web bundle exec rails db:create db:migrate`

To run any arbitrary command on the container

`docker-compose exec web [command]`

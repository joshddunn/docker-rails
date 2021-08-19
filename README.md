# Docker Rails 🔥

This is an easy to use docker container for Ruby and Rails.

### Usage

Clone this repository and run

```
docker-compose run app rails new . --database=postgresql
```

You will need to add the following to the `default` scope in `database.yml`

```
username: postgres
password: password
host: db
```

To start the app run `docker-compose up --build`.

Finally, once the app is running you will have to create the database

```
docker-compose run app rails db:create
```

Docker Rails 🔥
This is an easy to use docker container for Ruby and Rails.

Usage
Clone this repository and run

```
docker-compose run app rails new . --database=postgresql
```

You will need to make a couple updates in `database.yml`.

```
username: postgres
password: password
host: db
```

To start the app run `docker-compose up --build`.

Once the app is running run

```
docker-compose run app rails db:create
```

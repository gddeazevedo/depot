# How to

## Steps to run when you first start the project

``` bash
$ docker compose build

$ docker compose up

$ docker compose run web rails db:create

$ docker compose run web rails db:migrate
```

## Run the project

```bash
$ docker compose up -d
```

## Stop the project

```bash
$ docker compose down
```

## Use the database

```bash
$ docker exec -it depot_db psql -U postgres
```

## Use the rails commands:

```bash

$ docker compose run web rails <command\>

```

## Change owner

```bash
$ sudo chown -R $USER:$USER .
```

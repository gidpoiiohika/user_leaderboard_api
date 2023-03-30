## Prerequisites

The setups steps expect following tools installed on the system.

- GitHub
- Ruby [3.1.2](https://github.com/gidpoiiohika/user_leaderboard_api/blob/master/Gemfile#L6)
- Rails [7.0.4](https://github.com/gidpoiiohika/user_leaderboard_api/blob/master/Gemfile#L11)
- PostgreSQL 

# Getting Started

### 1.Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.1.2`

If not, install the right ruby version using [RVM](https://rvm.io/rvm/install#installing-rvm) (it could take a while):

```shell
rvm install 3.1.2
rvm use ruby-3.1.2
```

### 2.Clone the repository
```shell
git git@github.com:gidpoiiohika/user_leaderboard_api.git
cd user_leaderboard_api
```

### 3.Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```
* create an env file and database.yml and fill in their data, you can see it in the env and database file.example

```shell
rake db:create
rake db:migrate
rake create_event_and_player  # create 1_000_000 users
rails s
```

# Getting Started Docker

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

# API documentation

The API documentation is available [here](https://planetary-crater-720583.postman.co/workspace/New-Team-Workspace~f7d0f91f-3f78-4959-88d9-6f0252784ccf/request/9997411-c87a6452-5aa0-460a-987e-f91d91eac6a2)

# Prerequisites

What things you need to install the software and how to install them:

[docker](https://docs.docker.com/)

# Installing

## 1. Clone the repository

```shell
git git@github.com:gidpoiiohika/user_leaderboard_api.git
cd user_leaderboard_api
```

* create an env file and database.yml and fill in their data, you can see it in the env and database file.example

## 2. Build the project

```shell
docker-compose run web_leaderboard rails new . --api --force --database=postgresql --T
docker-compose build
docker-compose up
```
* Запрос который отдает список всех мировых лидеров отсортирован по количеству заработанных очков по убыванию. 
<img width="1440" alt="zap1" src="https://user-images.githubusercontent.com/25199412/228903910-a7b5722a-3e2a-4c41-a54d-d371475063c0.png">

* Запрос который отдает список лидеров по конкретной стране. На первых местах будут те кто заработали больше всего очков.
<img width="1440" alt="zap2" src="https://user-images.githubusercontent.com/25199412/228903980-eb2010b0-fbf5-43ce-a7ca-40a21077d378.png">





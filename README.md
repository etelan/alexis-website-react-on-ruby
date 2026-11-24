# Alexis Website

Rails application with React on Rails.

## Requirements

- Ruby 3.4.12
- Node.js and npm
- PostgreSQL

## Setup

Install dependencies and prepare the database:

```sh
npm install-scripts approve @swc/core@1.16.22
npm install-scripts approve @parcel/watcher@2.6.0
sudo apt install postgresql postgresql-contrib
sudo systemctl enable --now postgresql
sudo -u postgres createuser --createdb "$USER"
gem install foreman
bin/setup --skip-server
```

Make sure PostgreSQL is running and your local user can create databases.

## Run the app

```sh
bin/dev
```

The app will open at <http://localhost:3000>.

## Run tests

Run the Rails test suite:

```sh
bin/rails test
```

Run the full local CI checks:

```sh
bin/ci
```

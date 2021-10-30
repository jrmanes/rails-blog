# Ruby on Rails Blog

This is an example of a RoR application.

Here we will use the basic commands and create a CRUD application.

---
## Setup

To setup the project you will need:

Ruby:
```
ruby --version
```

SQLite3

```sqlite3
sqlite3 --version
```

Node
```
node --version
```

Yarn
```
yarn --version
```

---

## Install Rails

```ruby
gem install rails
```

Confirm it with:
```rails
rails --version
```

---
## Useful commands
```
# Setup new app
rails new blog

# Rails server commands
rails console
rails server
rails routes

# Generate Models
rails generate model Article title:string body:text
rails generate model Comment commenter:string body:text article:references

# Generate Controllers
rails generate controller Articles index --skip-routes
rails generate controller Comments

# Generate new migrations
rails generate migration AddStatusToArticles status:string
rails generate migration AddStatusToComments status:string

# DB migrations
rails db:migrate

# Tests commands
# Run specific test in line :X
rails test test/models/article_test.rb:8
# Run all the tests
rails test test/models/article_test.rb
```

---

## Sources
[Rails Guides](https://edgeguides.rubyonrails.org/getting_started.html)

---
Jose Ramón Mañes

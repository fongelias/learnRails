# [learnRails](http://guides.rubyonrails.org/getting_started.html)
## Installation
Rails requires ruby version 2.2.2 or later, as well as sqlite3
Then, to install:

`gem install rails`

## Creating an application
Rails uses generator scripts to generate boilerplate:

`rails new blog`

to see all the different options:

`rails new -h`

## starting the server
`bin/rails server`

## MVC in rails
controllers can be generated with a generator script

`bin/rails generate controller [Controller Name] [action name]`

routing file in `config/routes.rb` determines how Rails connects incoming requests to controllers and actions

all controllers inherit from ApplicationController

### Templating
Templates are in `html.erb` files, which stands for embedded ruby. This means, you have an html file with ruby inside of it

#### Forms
First, you establish the identifying scope of the form by wrapping it in the following:
```
<%= form_with scope: :article, url: articles_path, local:true do |form| %>
<% end %>
```
form_with call takes `scope` `:article`, and points the submission to the url associated with the configuration variable articles_path

### Creating a model
Rails models can be generated:
`bins/rails generate model Article title:string text:text`
specifies model name with attributes and their types
this will add these attributes to the articles table in the database, with a migration file at `db/migrate/[date value]_create_articles.rb`
mapped to the Article model in the file `app/models/article.rb`

### Migrations
migration files use rake commands to create and modify database tables
to run migrations from the migrate folder, run:
`bin/rails db:migrate`

## Glossary
generators = scripts that create files necssary for a particular task

resource = collection of similar objects, supporting CRUD and declared as a standard REST resource









# learnRails
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

all controllers inherit from Application Controller

## Glossary
generators = scripts that create files necssary for a particular task

resource = collection of similar objects, supporting CRUD and declared as a standard REST resource









# StreamOfThoughts Full-stack web app 

# Description
A web application that allows users to create and manage poems and inspirational quotes.

# Getting Started
In order for you to use the content on this repo ensure you have the following:

- A computer that runs on either of the following; (Windows 7+, Linux, Mac OS)
- nodejs 9.0+
- Some bit of patience for your own sanity.

## Technologies Used
---

### Javascript React Front End
StreamOfThoughts front-end was built in Javascript React for user interactivity and dynamic styling of components. Specific React components utilized in the front end build include: [React Router Dom](https://github.com/remix-run/react-router).

### Ruby with Sinatra and SQLite database
SreamOfThoughts backend is driven Ruby with Sinatra and served from an SQLite database.  Active Record makes the datamanagement simple.  Specific technologies used in the backend build include: [Sinatra](https://github.com/sinatra/sinatra), [Thin](https://github.com/macournoyer/thin), [ActiveRecord](https://github.com/rails/rails), [SQLite3](https://github.com/sparklemotion/sqlite3-ruby/).

## Installation

To use this repo on your machine requires some simple steps
---

Simply fork and clone this repo down to your local machine.

### Back-end
To set up the backend, run these commands:

 1. `bundle install`
 2. `bundle exec rake db:migrate db:seed`
 3. You can run the app and explore your API in the Postman by using the custom Rake task:
    `bundle exec rake server`

### Front-end
1. Run `npm install` from terminal in the app directory to install dependences
2. Finally `npm start` from terminal in app directory to start up the app server at `localhost:3000`. 

# Authors
This project was contributed to by:
- [Verah Kwamboka](https://github.com/VKwamboka/)


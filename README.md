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

### Alternative One

- Open a terminal / command line interface on your computer
- Clone the repo by using the following:

        git clone git clone https://github.com/VKwamboka/phase-3-Projects

- Be patient as it creates a copy on your local machine for you.
- Change directory to the repo folder:

        cd phase-3-projects

- (Optional) Open it in ``Visual Studio Code``

        code .

- (Alternate Option) Open it in any editor of your choice.
- Hurray! You are one step closer to being as intelligent as Einstein.

### Alternative Two

- On the top right corner of this page there is a button labelled ``Fork``.
- Click on that button to fork the repo to your own account.
- Take on the process in ``Alternative One`` above.
- Remember to replace your username when cloning.

        git clone https://github.com/your-username-here/phase-3-projects.git


# Running the application

### Back-end
To set up the backend, run these commands:

     cd app/backend

 1. `bundle install`
 2. `bundle exec rake db:migrate db:seed`
 3. Start the Sinatra server API to run and explore the app by using the custom Rake task:
    `bundle exec rake server`

### Front-end

    cd app/frontend
    
1. Run `npm install` from terminal in the app directory to install dependences
2. Finally `npm start` from terminal in app directory to start up the app server at `localhost:3000`. 

# Authors
This project was contributed to by:
- [Verah Kwamboka](https://github.com/VKwamboka/)

## License information
### The MIT License
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)  
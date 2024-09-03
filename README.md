# Pet Register System

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Webpacker

. Install Webpacker

If your Rails app doesn’t already use Webpacker, you can add it by running:

bash

rails webpacker:install

This command sets up Webpacker in your Rails app.
2. Enable Hot Module Replacement (HMR)

Webpacker supports HMR, which allows you to see changes in your frontend code without needing to refresh the entire page.
a. Development Server

To enable HMR, you need to run the Webpack development server. Webpacker installs this automatically. You can start it by running:

bash

bin/webpack-dev-server

This server watches your frontend files and applies updates as you make changes.
b. Configuration

Ensure that your config/webpacker.yml file is configured for development. By default, Webpacker is set up to use HMR in development, but you can check the development section to make sure hmr is enabled:

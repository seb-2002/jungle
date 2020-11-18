# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

This is not intended to be a finished site. Rather, there were very specific features being asked for.

I implemented the following features:

- All of the money amounts on the site are formatted correctly
- The shopping cart displays a message when it is empty rather than an empty table
- When an order is put through successfully the user sees a page with a summary of what has been ordered as well as their own email address.
- When items are sold out they display a red 'sold out' badge in the top left hand corner
- All of the admin features are password protected
- There is a link to an 'about us' page in the navbar which leads to an about us page
- The administrator has access to a dashboard where the amount of products and categories in the database are displayed
- The administrator can see a table of all product categories and add categories
- Users can register and login. Their login information is checked against the database. New users cannot register with an email address already in the database.
- Users can logout from anywhere on the site.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Create `config/application.yml` by copying `config/application.example.yml`. This is the file in which you can create admin credentials (replace 'example' and 'psswrd')
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4242 4242 4242 4242 with a valid expiration and whatever security code to test successful order scenarios.

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe

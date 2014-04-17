# README

## Create database

    $ psql -U gschool_user -d postgres -f scripts/create_database.sql

## Create tables

    $ sequel -m migrations postgres://gschool_user:password@localhost/favorite_foods_test
    $ sequel -m migrations postgres://gschool_user:password@localhost/favorite_foods_development

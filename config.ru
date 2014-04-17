require_relative 'favorite_foods'
require 'sequel'

DB = Sequel.connect('postgres://gschool_user:password@localhost/favorite_foods_development')

run FavoriteFoods

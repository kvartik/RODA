require "roda"
require "sequel"
#require "bcrypt"
#require "rack/protection"

class Myapp < Roda
  Sequel::Model.plugin :validation_helpers

  use Rack::Session::Cookie, secret: "some_nice_long_random_string_DSKJH4378EYR7EGKUFH", key: "_myapp_session"
  #use Rack::Protection
  plugin :csrf

  require './models/user.rb'

database = "myapp_development"
user     = ENV["PGUSER"]
password = ENV["PGPASSWORD"]
DB = Sequel.connect(adapter: "postgres", database: database, host: "127.0.0.1", user: user, password: password)

  r.rout do |r|
    r.root do
      "HELLO!"
    end
    r.



  end
  end
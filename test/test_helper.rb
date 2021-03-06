ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require 'minitest/mock'
require 'database_cleaner'
require "minitest/reporters"

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
end
DatabaseCleaner.strategy = :transaction

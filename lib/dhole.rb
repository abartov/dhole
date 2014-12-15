require 'active_record'
require "dhole/version"
require "dhole/page.rb"
require "dhole/revision.rb"
require "dhole/langlink.rb"
require "dhole/text.rb"

module Dhole
  class Dhole
    def initialize(adapter, db, user, pass, host = 'localhost')
      ActiveRecord::Base.establish_connection(
      :adapter  => adapter,
      :database => db,
      :username => user,
      :password => pass,
      :host     => host)
    end
  end
end

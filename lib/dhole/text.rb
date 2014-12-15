module Dhole
  class Text < ActiveRecord::Base
    self.table_name = 'text'
    has_one :revision, :class_name => 'Revision'
  end
end

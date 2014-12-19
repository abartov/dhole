module Dhole
  class Text < ActiveRecord::Base
    self.table_name = 'text'
    self.primary_key = 'old_id'
    has_one :revision, :class_name => 'Revision'
  end
end

module Dhole
  class Revision < ActiveRecord::Base
    self.table_name = 'revision'
    self.primary_key = 'rev_id'
    belongs_to :text, :class_name => 'Text', :foreign_key => 'rev_text_id'
  end
end

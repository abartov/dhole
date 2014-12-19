module Dhole
  class Category < ActiveRecord::Base
    self.table_name = 'category'
    self.primary_key = 'cat_id'
    # cat_files, cat_title
  end
end

module Dhole
  class CategoryLink < ActiveRecord::Base
    self.table_name = 'categorylinks'
    belongs_to :page, class_name: 'Page', foreign_key: 'cl_from'
    # cat_files, cat_title
  end
end

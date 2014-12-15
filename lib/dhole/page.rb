class Page < ActiveRecord::Base
  self.table_name = 'page'
  has_many :categories
  has_many :langlinks, :class_name => 'LangLink', :foreign_key => 'll_from'
  belongs_to :latest_revision, :class_name => 'Revision', :foreign_key => 'page_latest'
end

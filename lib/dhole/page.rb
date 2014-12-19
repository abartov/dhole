module Dhole
  class Page < ActiveRecord::Base
    self.table_name = 'page'
    self.primary_key = 'page_id'
    has_many :categories
    has_many :langlinks, class_name: 'LangLink', foreign_key: 'll_from'
    has_many :imagelinks, class_name: 'ImageLink', foreign_key: 'il_from'
    #has_many :images, through: :imagelinks, class_name: 'Image'
    belongs_to :latest_revision, class_name: 'Revision', foreign_key: 'page_latest'
  end
end

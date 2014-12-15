module Dhole
  class Image < ActiveRecord::Base
    self.table_name = 'image'
    has_many :image_links, class_name: 'ImageLink'
    has_many :usages, through: :image_links, class_name: 'Page'

    belongs_to :uploader, :class_name => 'User', :foreign_key => 'img_user'  
  end
end


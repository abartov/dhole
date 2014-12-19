module Dhole
  class Image < ActiveRecord::Base
    self.table_name = 'image'
    self.primary_key = 'img_name'
    #has_many :localimagelinks, class_name: 'ImageLink'
    #has_many :localusages, through: :image_links, class_name: 'Page'
    
    belongs_to :uploader, :class_name => 'User', :foreign_key => 'img_user'  

    def local_usage
      ImageLink.where(il_to: img_name).pluck(:il_from)
    end
    def global_usage
      GlobalImageLink.where(gil_to: img_name, gil_namespace_id: '0').pluck(:gil_wiki, :gil_page)
    end
  end
end


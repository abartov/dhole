module Dhole
  class ImageLink < ActiveRecord::Base
    self.table_name = 'imagelinks'
    belongs_to :linking_page, class_name: 'Page', foreign_key: 'il_from'
    belongs_to :linked_image, class_name: 'Image', foreign_key: 'il_to'
  end
end


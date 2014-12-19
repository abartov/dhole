module Dhole
  class GlobalImageLink < ActiveRecord::Base
    self.table_name = 'globalimagelinks'
    belongs_to :linking_page, class_name: 'Page', foreign_key: 'gil_from'
    #belongs_to :linked_image, class_name: 'Image', foreign_key: 'gil_to' # TODO: replace this with an actual lookup, as this doesn't resolve to an ID, of course
  end
end


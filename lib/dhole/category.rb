module Dhole
  class Category < ActiveRecord::Base
    self.table_name = 'category'
    self.primary_key = 'cat_id'
    # cat_files, cat_title
    
    def members
      CategoryLink.where(cl_to: cat_title) || []
    end
    def member_page_titles
      members.select{|cl| cl.cl_type == 'page'}.map {|cl| Page.find(cl.cl_from).page_title}
    end
    def member_file_titles
      members.select{|cl| cl.cl_type == 'file'}.map {|cl| Image.find(cl.cl_from).img_name}
    end
    def member_pages
      members.select{|cl| cl.cl_type == 'page'}.map {|cl| Page.find(cl.cl_from)}
    end
    def member_files
      members.select{|cl| cl.cl_type == 'file'}.map {|cl| Image.find(cl.cl_from)}
    end
    # return only members of specified type ('file','page', 'subcat')
    def members_by_type(mtype)
      # TBD
    end
  end
end

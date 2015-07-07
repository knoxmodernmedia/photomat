require 'fileutils'

class Image < Media
  
  validates_presence_of :file_name

## images will be saved in 3 different image folders,
## and given a file name to match the object id. 


  def self.create(temp_file_path, user)
    
    new_file_name = Time.now.to_i.to_s + File.extname(temp_file_path)

    FileUtils.cp(temp_file_path, image_store_dir + new_file_name) 
    
    Image.new(:merchant_id => user, :file_name => new_file_name) 
    Image.save!
  end

  def full_image
  end

  def thumbnail
  end

  def preview
  end

private
  
  def image_store_dir
    "#{Rails.root}/uploads/images/" 
  end
  
  def init_store_dir
    # test that the storage dir exists
    # and is writable. If not, create and 
    # set permissions. 

  end



end

require 'fileutils'

class Image < Media
  

## images will be saved in 3 different image folders,
## and given a file name to match the object id. 


  def create(file, user)
    
    image = Image.new(:merchant_id => user.id)
    saved = File.new("#{Rails.root}/uploads/images/#{image.id}.#{file.extname}")
    saved.write(file.read)
    
    # clean up
    file.delete

    image  
  end

  def full_image
  end

  def thumbnail
  end

  def preview
  end

private
  def identifier
    self.id
  end

end

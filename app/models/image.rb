require 'fileutils'

class Image < Media
  

## images will be saved in 3 different image folders,
## and given a file name to match the object id. 


  def create(filepath, user)
    
    image = Image.new(:merchant_id => user.id)
    saved = File.new("#{Rails.root}/uploads/images/#{image.id}.#{File.extname(filepath)}")
    saved.write(File.read(filepath))
    image.save
    
    # clean up
    File.delete(filepath)

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

class Image < Media
  

## images will be saved in 3 different image folders,
## and given a file name to match the object id. 

def full_image
end

def thumbnail
end

def preview
## return image as io	
## io = File.read("#{Rails.root}/upload/image/preview/#{self.id}.jpg")
end

private
  def identifier
    self.id
  end

end

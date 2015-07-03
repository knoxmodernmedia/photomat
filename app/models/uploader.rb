class Uploader
  
  def load(files = [])
  
    files.collect do |f|
      if file = File.open(f){ delegate_file(f) }
    end
  
  end	

private
  
  def delegate_file(file)
    f=File.open(file)
    
    if image_files.includes? f.to_sym
      Image.create(f)
    
    elsif compressed_files.includes f.to_sym
      load(f.decompress)
    end      

    
  end	
   
  def image_files
   :gif, :jpg, :png
  end

  def compressed_files
    :zip, :gz, :tar
  end

end
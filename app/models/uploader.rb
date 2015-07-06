class Uploader 
  
  def load(*files, user)
  
    result = files.collect do |f|
      if File.file?(f)
        delegate_file(f) 
      end  
    end
    
    case result.size
      when 0 then nil
      when 1 then result[0]
      else result
    end
  end	

private
  
  def delegate_file(filepath)
    ext = File.extname(filepath).to_sym
    
    if image_file_extensions.include? ext
      Image.create(filepath, user)
    
    #elsif compressed_file_extensions.includes ext
   #   load(file.decompress)
    end      

    
  end	
   
  def image_file_extensions
   [:gif, :jpg, :png]
  end

  def compressed_file_extensions
    [:zip, :gz, :tar]
  end

end
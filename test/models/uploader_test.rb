require 'test_helper'

class UploaderTest < ActiveSupport::TestCase

  def setup 
    @uploader = Uploader.new
    @merchant = merchants(:one)
    @valid_image = "../test_files/image.jpg"
    @invaid_file = "../test_files/document.xml"
  end

  def test_single_image_file_returns_new_image_object
    i = @uploader.load(@valid_image)
    assert_equal "image", i.class.name
  end
  
  def test_returns_nil_from_invalid_file_type
    i = @uploader.load(@invalid_file)
    assert_equal i, nil
  end
  
  def test_unpacks_zip_file

  end

  def test_accepts_array_of_files
  
  end

end

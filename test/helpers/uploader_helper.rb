
def test_file_collection(a=[])
 a.collect {|s| "../test_files/image" + s.to_s} 
end
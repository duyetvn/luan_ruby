require 'json'
def search_word(dictionary)
  print 'Tra tu: '
  word = gets.chomp

  if dictionary.keys.map(&:to_s).include?(word)
    puts dictionary[word]
  else 
    puts "not available"
  end
end

def add_word(dictionary)
  print "nhap tu: "
  word_original = gets.chomp
  print "nhap nghia: "
  translated = gets.chomp
  
  dictionary[word_original.to_s] = translated
end

def read_file(file_name)
  file = File.open(file_name)
  data = file.read
  JSON.parse(data)
end

def write_file(file_name, data)
  file = File.open(file_name, "w")
  file.puts data
  file.close
end

dictionary_global = read_file("input.txt")

# Main
loop do
  print "1 de nhap tu, 2 de tra, 0 de luu: "
  user_input = gets.chomp.to_i
  if user_input == 1
    add_word(dictionary_global)
  elsif user_input == 2
    search_word(dictionary_global)
  elsif user_input == 0
    write_file("output.txt", dictionary_global.to_json)
  else 
    puts "yeu cau khong hop le"
  end
end


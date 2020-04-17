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
  dictionary[word_original.to_sym] = translated
end

file = File.open("input.txt")
data = file.read
dictionary_global = JSON.parse(data)

loop do
  print "1 de nhap tu, 2 de tra, 0 de thoat: "
  user_input = gets.chomp.to_i
  if user_input == 1
    add_word(dictionary_global)
  elsif user_input == 2
    search_word(dictionary_global)
  elsif user_input == 0
    break
  else 
    puts "yeu cau khong hop le"
  end
end


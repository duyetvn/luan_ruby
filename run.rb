require_relative 'dictionary'

en_fr = Dictionary.new("en_fr.txt")
en_fr.add_word('hello', 'hello-fr')
en_fr.store_to_db

en_vi = Dictionary.new('en_vi.txt')

# # ========================
puts 'Nghia cua tu hello trong tieng viet'
puts en_vi.search_word('hello')

puts 'Nghia cua tu hello trong tieng phap'
puts en_fr.search_word('hello')


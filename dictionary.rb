require 'json'

class Dictionary
	# attributes {"hello": "xin chao"}
	# methods search_a_word, add_a_word
	def initialize(file_path)
		file = File.open(file_path)
		data = file.read
		@data =JSON.parse(data)
	end

	def print_all
		puts @data
	end

	def search_word(word)
		if @data.keys.map(&:to_s).include?(word)
			@data[word]
		end
	end

	# Add a word
	# Chi can add dc vao bien @data
end

dic_en_vi = Dictionary.new('en_vi.txt')
puts dic_en_vi.search_word('hello') # => 'xin chao'

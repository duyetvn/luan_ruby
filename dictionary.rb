require 'json'

class Dictionary
	# attributes {"hello": "xin chao"}
	# methods search_a_word, add_a_word
	def initialize(file_path)
		file = File.open(file_path)
		data = file.read
		@data =JSON.parse(data)
		@file_path = file_path
	end

	def print_all
		puts @data
	end

	def search_word(word)
		if @data.keys.map(&:to_s).include?(word)
			@data[word]
		end
	end

	def add_word(origin, translated)
		@data[origin] = translated
	end

	def store_to_db
		file = File.open(@file_path, 'w')
		file.puts @data.to_json
		file.close
	end
end

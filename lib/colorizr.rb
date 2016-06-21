#Re-open String Class
class String
	@@colors_list = ['red', 'green', 'yellow', 'blue', 'pink', 'light_blue', 'white', 'light_grey', 'black']
	@@color_codes = ['31', '32', '33', '34', '95', '94', '97', '37', '30']	
	#use .zip to merge two arrays above into one array made up of [color, code] arrays for each color.
	@@colors = @@colors_list.zip(@@color_codes)
		#http://ruby-doc.org/core-2.2.0/Array.html#method-i-zip Imagine two sides of a zipper with each array item as a zipper tang.

	#Use metaprogramming to define all color methods via one method "create_colors"
	def self.create_colors
		@@colors.each do |color, code|
			method_text = %Q{
				def #{color}
					"\e[#{code}m\#{self}\e[0m"
				end
			}
			class_eval(method_text)
		end
	end

	def self.colors
		puts @@colors_list
	end

	def self.sample_colors
		@@colors.each do |color, code|
			puts "\e[#{code}m#{color}\e[0m"
		end
	end
end

#Test String class additions
String.create_colors
String.sample_colors
String.colors
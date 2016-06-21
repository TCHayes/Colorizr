#Re-open String Class
class String
	@@colors_list = ['red', 'green', 'yellow', 'blue', 'pink', 'light_blue', 'white', 'light_grey', 'black']
	@@color_codes = ['31', '32', '33', '34', '95', '94', '97', '37', '30']	
	#use .zip to merge two arrays above into one array made up of [color, code] arrays for each color.
	@@colors = @@colors_list.zip(@@color_codes)
		#http://ruby-doc.org/core-2.2.0/Array.html#method-i-zip Imagine two sides of a zipper with each array item as a zipper tang.
end
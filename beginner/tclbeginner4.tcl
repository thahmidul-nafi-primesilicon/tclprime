puts "Input a line:"
set line [gets stdin]
puts "Input a word:"
set word [gets stdin]
regexp -indices -nocase $word $line a
puts "Index is"
puts "$a"

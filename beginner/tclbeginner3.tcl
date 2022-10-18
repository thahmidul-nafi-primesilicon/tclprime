proc read_a_file {} {
	puts -nonewline "Enter the name of the file: "
	flush stdout
	set filename [gets stdin]
	if {[file exists $filename]} {
		puts "file exists"
		source $filename
		if {![info exists value]} {
			set value {10 20 30 40 50 60 70 80 90}
		}
		foreach x $value y $variable_name {
			set test_$y $x
			eval "puts \"test_$y = \$test_$y\""
		}
	} else {
			puts "ERROR!! There is no file named \"$filename\""
		}
}


read_a_file 

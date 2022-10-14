# global variables 

proc printglobal {} {
	global a 
	puts "$a"
}


puts "Enter a value: "
set a {}
set a [gets stdin] 


printglobal
 

# local variables

set x 0 


proc printlocal1 {} {
	set x [list 3 4 5 6]
	puts "layer1"
	printlocal2
}

proc printlocal2 {} {
	puts "layer2"
	printlocal3
	
}

proc printlocal3 {} {
	puts "layer3"
	upvar 2 x x 
	puts "$x"
}

printlocal1

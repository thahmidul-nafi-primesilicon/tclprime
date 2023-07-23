puts "Choose the required option from below"

puts {Prime numbers between '0-N': 1}
puts {Prime numbers between 'M-N': 2}
puts {Input a prime number to check if it is prime: 3}

set option [gets stdin]

if {$option == 1} {
	flush stdout
	puts "Enter end of range: "
	set input [gets stdin]
	set primenums {}
	for {set i 2} { $i<=$input } {incr i} {
		lappend primenums $i
		for {set j 2} {$j<=[expr sqrt($i)]} {incr j} { 
			if {[expr {$i%$j}] == 0} {
			set primenums [lreplace $primenums end end]
			break
			}
		}
}
puts "$primenums"
}
if {$option == 2} {
	flush stdout
 puts "Enter both upper and lower ranges: "
  set primenums {}
	set input [gets stdin]
	for {set i [lindex $input 0]} { $i<=[lindex $input 1] } {incr i} {
		if {$i == 1} { continue }
		lappend primenums $i
		for {set j 2} {$j<=[expr sqrt($i)]} {incr j} {
			if {[expr {$i%$j}] == 0} {
			set primenums [lreplace $primenums end end]
			break
			}
		}
}

	puts "$primenums"
}
if {$option == 3} {
	flush stdout
	puts "Enter Number to check if prime: "
set input [gets stdin]
	set isnotprime 0
	for {set i 2} {$i<= [expr sqrt($input)]} {incr i} {
		if {[expr $input % $i] == 0} {
			set isnotprime 1
			break
		} 
	} 
 puts	[expr {!$isnotprime ? "Is Prime" : "Not Prime"}]
}



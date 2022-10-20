puts "Enter a number: "

set num [gets stdin]

proc factorial { n } {
	if {$n == 1} {
		return 1
	}
	return [expr {[factorial [expr {$n-1}]]*$n}] 
}
set fact {}
set sum 0
set avg 0
set sqroot {}

for {set i 1} {$i<=$num} {incr i} {
	lappend fact [factorial $i]
	set sum [expr {$sum + [lindex $fact end]}]
	lappend sqroot [expr sqrt([lindex $fact end])]
}

set avg [expr {$sum/[llength $fact]}]

puts "The list of factorials from 1 to $num is: $fact"
puts "The sum from 1 to $num is: $sum"
puts "The average of factorials from 1 to $num is: $avg"
puts "The square roots of factorials from 1 to $num is: $sqroot"

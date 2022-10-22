# compatible with tcl 8.5 and higher (use pow function instead of ** if necessary)
puts "Input n: "

set n [gets stdin]
for {set i 0} {$i <$n} {incr i} {
	set cachedout {}
	for {set j 0} {$j <$n} { incr j} {
		
			
		if { $i == $j } {
		set value [expr {[expr {$i + 1}] ** 2 -$i}]	
			lappend cachedout $value
		

		}
		if {$i > $j} {
			if {[expr {$i%2}]==0} {
				lappend cachedout [expr {[expr {[expr {$i+1}]**2}] - [expr {2*[expr {$i+1}]-2-$j}]}]
			} else {
				lappend cachedout [expr {[expr {[expr {$i+1}]**2}] - [expr {$j}]}]
			}
		}
		if {$j > $i} {

			if {[expr {$j%2}]==1} {
				lappend cachedout [expr {[expr {[expr {$j+1}]**2}] - [expr {2*[expr {$j+1}]-2-$i}]}]
			} else {
				lappend cachedout [expr {[expr {[expr {$j+1}]**2}] - [expr {$i}]}]
			}
		}
		
	
	
}
if {$i<3} {
	puts -nonewline "   "
}
puts $cachedout
}


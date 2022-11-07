
puts "Enter a number for fibonacci series: "
set num [gets stdin]

proc fib {n} {

  global fibcache
	if { $n == 1 || $n == 0 } {
		if { [llength $fibcache] < 2 } {
			lappend fibcache 1
		}
		return 1
	} else {
		if {[llength $fibcache] > [expr {$n + 1}]} {
			return [lindex $fibcache $n]
		}	else {
			lappend fibcache [expr {[fib [expr {$n-1}]] + [fib [expr {$n-2}]] }]
			return [lindex $fibcache $n]
		}
		 
	}
}

set fibcache {}


fib $num

puts "$fibcache"


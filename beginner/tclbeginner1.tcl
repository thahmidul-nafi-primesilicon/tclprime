puts {Enter the list of numbers:};
puts "\n";
set numlist [gets stdin];

puts numlist
puts [llength $numlist]
puts "\n"

set sum 0

foreach num $numlist {

set sum [expr {$sum + $num}]
}
set mean [expr {$sum / [llength $numlist]}]
set stdev 0


foreach num $numlist {

set stdev [expr {$stdev + pow([expr {$num - $mean}],2) }]
}
set stdev [expr {$stdev/[expr {[llength $numlist] - 1}]}]
set stdev [expr sqrt({$stdev})]
puts "\n"
puts [format "%.3f" $sum]
puts [format "%.3f" $mean] 
puts [format "%.3f" $stdev] 

set f [open "problem19input.txt" r]

set count 0
while {[gets $f line] >= 0} {
	if {$count == 11} {
		set diearea "[lindex $line 1]"
	}
	if {$count == 12} {
		set dieaspectratio "[lindex $line 1]"
	}
	if {$count == 13} {
			 set core_x [string trim [lindex $line 1] "'"]
			 set core_y [string trim [lindex $line 2] "'"]
    }
	incr count 
}
puts $diearea
set dieheight [format "%.3f" [expr sqrt($diearea/$dieaspectratio)]]
puts $dieheight
set diewidth [format "%.3f" [expr 1.5 * $dieheight]]
puts $diewidth
set diecoords "0 0 0 $dieheight $diewidth $dieheight $diewidth 0"
set corecoords "$core_x $core_y $core_x [expr {$dieheight - $core_y}] [expr {$diewidth - $core_x}] [expr {$dieheight - $core_y}] [expr {$diewidth - $core_x}] $core_y"
puts "$diecoords"
puts "$corecoords"
close $f
# canvas .myCanvas -background red -width 1000 -height 1000 
# pack .myCanvas
# .myCanvas create polygon $diecoords -fill yellow -outline green

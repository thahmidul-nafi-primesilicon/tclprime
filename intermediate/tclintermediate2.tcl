set ipf [open "LIF02_Setup_timing.rpt" r]
set ip [read $ipf]
set op [join [lsort [regexp -all -inline {\((?:DLY|delay)[\w\d_]*\)\s*[0-9]\.[0-9][0-9][0-9]} $ip]] " "]
set opfall [open "all_delays_of_delay_cells.txt" w+]
set opfmax [open "delays_occuring_max_times.txt" w+]
set cachedcell [lindex $op 0]
puts -nonewline $opfall "$cachedcell "
foreach {extcol1 extcol2} $op {
	if {$extcol1 != $cachedcell} {
		set cachedcell $extcol1
		puts -nonewline $opfall "\n$cachedcell "
	}
	puts -nonewline $opfall "$extcol2 "
}
close $opfall 
set $opfall [open "all_delays_of_delay_cells.txt" r]
set count 0
while {[gets $opfall line] >= 0} {
		
	set sortedline [lsort -real [lrange $line 1 end]]
	set uniqueitems [lsort -real -unique [lrange $line 1 end]]
	set all_count [lrepeat [llength $uniqueitems] 0]
	foreach num $sortedline {
		foreach item $uniqueitems {
			if { $num == $item } {
			set index1 [lsearch $uniqueitems $item]
			set all_count [lreplace $all_count $index1 $index1 [expr {1+[lindex $all_count $index1]}]]
			}
		}
	}
	puts "[lindex $line 0] [lindex $uniqueitems [lsearch $all_count [expr max([join $all_count ","])]]] (Occurs [expr max([join $all_count ","])] times)"
}


close $ipf
close $opfall
close $opfmax


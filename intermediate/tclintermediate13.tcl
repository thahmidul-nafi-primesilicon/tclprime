set f [open "timing.lifcc.rpt.txt" r]
set paths {}
set curbuf {}
set addlines 0
set curdir ""
set curbuf {}

file mkdir timingreports
while { [gets $f line] >= 0 } {
	if { [regexp {Startpoint} $line a] } {
		set addlines 1
	}
	if { $addlines == 1 } {
    lappend curbuf $line
	}
	if { [regexp {Path Group:\s[*_.\d\w]*} $line pathgrp] } {
			set curdir "timingreports/[lindex $pathgrp 2]_timing.rpt.txt"
}
if { [ regexp {slack \(with no derating\) \(VIOLATED\)} $line lineend] } {
	set addlines 0
	set reportfile [open $curdir a]
	foreach bufline $curbuf {
		puts $reportfile $bufline
	}
	close $reportfile
	set curbuf {}
}
}

close $f


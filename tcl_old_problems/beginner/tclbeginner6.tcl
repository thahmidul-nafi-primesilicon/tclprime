set consonantfile [open "countconsonants.txt" r]
set consonantcount 0
while {![eof $consonantfile]} {
	gets $consonantfile line 
	set consonantcount [expr {$consonantcount + [regexp -all -nocase {[b-df-hj-np-tv-z]} $line]}]	
}

puts "$consonantcount"

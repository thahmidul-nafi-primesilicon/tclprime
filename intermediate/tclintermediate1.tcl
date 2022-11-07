set f [open "prob11text.txt" r]
set f2 [open "prob11outputtext.txt" w+] 
while {![eof $f]} {
	gets $f line
	if { [regexp -all "summer" $line]>0 } {
		puts $f2 "$line"
		regsub {\s[\w-]*$} $line { replace} replaced
		puts $f2 "Modified String: $replaced"
		puts $f2 "Reversed String: [string reverse $line]"
	  set vowels [regexp -all -inline {[aeiou]} $line]
		puts $f2 "Vowels found: [join $vowels ""]"
		puts $f2 "Number of Vowels: [llength $vowels]"
		puts $f2 "Number of Unique Vowels: [llength [lsort -unique $vowels]]"
	  set splittext [split $line {}]
		foreach letter {a e i o u} {
			if {[llength [lsearch -all $splittext $letter]] > 0 } {
				puts $f2 "Positions of \"$letter\" in the string: [lsearch -all $splittext $letter]"
			}
		}
			}
		}

		close $f2
		close $f

set filein [open "lyricsinput.txt" r]
set fileout [open "lyricsoutput.txt" w+]
set count 0
while {![eof $filein]} {
	incr count 
	gets $filein line
	if {[regexp -all "summer" $line]>0} {
		set printline [string map { "summer" "winter"} $line]
		puts $fileout "Number of times summer appears in line: [regexp -all "summer" $line]"
		puts $fileout "$count: $printline"
	}
	
}

close $filein 
close $fileout



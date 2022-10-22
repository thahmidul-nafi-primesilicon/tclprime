canvas .myCanvas -background red -width 200 -height 200 
pack .myCanvas
set itemlist {}
set block {{0.0000 0.0000} {654.9930 0.0000} {654.9930 4300.6880} {790.6530 4300.6880} {790.6530 4700.7520} {654.9930 4700.7520} {654.9930 7413.9520} {0.0000 7413.9520}}
foreach item $block {
	foreach term $item {
		lappend itemlist $term
	}
}
.myCanvas create polygon $itemlist -fill yellow -outline green

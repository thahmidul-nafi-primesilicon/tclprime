
canvas .myCanvas -background red -width 900 -height 900 

set poly { 0 0 655 0 655 4300 790 4300 790 4700 655 4700 655 7413 0 7413 }
set poly2 { 0 0 835 0 835 4300 970 4300 970 4700 835 4700 835 7413 0 7413 }
set polyscaled [lmap a $poly {expr {$a / 15 + 50}}]
set polyscaled2 [lmap a $poly2 {expr {$a / 15 + 50}}]

.myCanvas create polygon $polyscaled2 -fill white -outline black
.myCanvas create polygon $polyscaled -fill blue -outline black

# .myCanvas create polygon 200 200 250 200 250 275 200 275 -fill blue -outline black 


pack .myCanvas

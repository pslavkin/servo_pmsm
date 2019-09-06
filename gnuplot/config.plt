set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 3 linecolor rgb '#Fd480f' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 4 linecolor rgb '#0048Ff' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 5 linecolor rgb '#FF0F00' linetype 1 linewidth 1 pointtype 5 pointsize 1

set multiplot layout 3, 1
set tmargin 3

set title "torque & speed"
set ylabel "Nm - rev/seg"
set yrange [0:0.15];
set autoscale
plot '< tail -n 500 log.txt' every ::1 using 1:3 smooth acsplines linestyle 1 notitle
#plot '< tail -n 500 log.txt' every ::1 using 1:2 smooth acsplines linestyle 1 notitle, \
#     '< tail -n 500 log.txt' every ::1 using 1:3 smooth acsplines linestyle 2 notitle

set ylabel "phase margin"
set title "degrees"
set autoscale
plot '< tail -n 500 log.txt' every ::1 using 1:($5-$4) smooth acsplines linestyle 5 notitle

set ylabel "pos 0-1"
set title "pos"
set yrange [-0.2:1.2];
set autoscale
plot '< tail -n 500 log.txt' every ::1 using 1:4 with   lines linestyle 3 notitle, \
     '< tail -n 500 log.txt' every ::1 using 1:5 with   lines linestyle 4 notitle,


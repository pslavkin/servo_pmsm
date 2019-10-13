set style line 1 linecolor rgb '#FF0000' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 2 linecolor rgb '#00FF00' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 3 linecolor rgb '#0000FF' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 4 linecolor rgb '#FFFF00' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 5 linecolor rgb '#00FFFF' linetype 1 linewidth 1 pointtype 5 pointsize 1
set style line 6 linecolor rgb '#FF00FF' linetype 1 linewidth 1 pointtype 5 pointsize 1

set multiplot layout 3, 1
set tmargin 3

#set ylabel "phase margin"
#set title "degrees"
#set autoscale
#plot '< tail -n 222 log.txt' every ::1 using 1:($5-$4) smooth acsplines linestyle 5 notitle

set ylabel "pos"
set title "abs pos turns"
set yrange [-0.2:1.2];
set autoscale
plot '< tail -n 222 log.txt' every ::1 using 1:2 with   lines linestyle 3 notitle, \
     '< tail -n 222 log.txt' every ::1 using 1:3 with   lines linestyle 4 notitle,

set ylabel "speed"
set title "0-1 deg/seg"
set yrange [-0.2:1.2];
set autoscale
plot '< tail -n 222 log.txt' every ::1 using 1:4 with   lines linestyle 3 notitle, \
     '< tail -n 222 log.txt' every ::1 using 1:5 with   lines linestyle 4 notitle,

set title "torque"
set ylabel "Nm - rev/seg"
set yrange [0:0.15];
set autoscale
plot '< tail -n 222 log.txt' every ::1 using 1:6 with lines  linestyle 1 notitle, \
     '< tail -n 222 log.txt' every ::1 using 1:7 with lines  linestyle 2 notitle



set terminal png size 800,500
set output "compromized_hosts.png"

set xlabel "Time (s)" offset -4 font "Verdana,22"
set ylabel "The number of \n compromised  hosts " offset -2 font "Verdana,22"
set key font "Verdana,16"

set xrange [0:10]
set yrange [0:20]
set grid
set xtics font "Verdana,20"
set ytics font "Verdana,20"
set ytics 5

set rmargin 4
set tmargin 1
set bmargin 3
set lmargin 11

set linestyle 4
set key box width 0.5 height 1 maxcols 0.5 spacing 0.95
set key at 9.8, 19.4


set style line 1 \
    linecolor rgb '#dd181f' \
    linetype 5 linewidth 2 \
    pointtype 7 pointsize 2.5

set style line 2 \
    linecolor rgb '#27ae60' \
    linetype 1 linewidth 2 \
    pointtype 8 pointsize 2.5

set style line 3 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 5 pointsize 2.5

set style line 4 \
    linecolor rgb '#FFC300' \
    linetype 1 linewidth 2 \
    pointtype 12 pointsize 2.5

set style line 5 \
    linecolor rgb '#dc7633' \
    linetype 1 linewidth 2 \
    pointtype 3 pointsize 2.5

set style line 6 \
    linecolor rgb 'black' \
    linetype 1 linewidth 2 \
    pointtype 4 pointsize 2.5

plot "compromized_hosts.dat" using 1:2 title "GaTeBaSeP" with linespoints linestyle 1, "compromized_hosts.dat" using 1:3 title "E2BaSeP" with linespoints linestyle 2, "compromized_hosts.dat" using 1:4 title "Naive Bayes" with linespoints linestyle 3, "compromized_hosts.dat" using 1:5 title "BSVR-ARP" with linespoints linestyle 4,  "compromized_hosts.dat" using 1:6 title "MR-ARP" with linespoints linestyle 5, "compromized_hosts.dat" using 1:7 title "Decision tree" with linespoints linestyle 6
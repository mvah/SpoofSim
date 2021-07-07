set terminal png size 800,500
set output "true_positive_rate.png"

set xlabel "Number of hosts" offset -4 font "Verdana,22"
set ylabel " True positive Rate (%)" offset -1 font "Verdana,22"
set key font "Verdana,16"

set xrange [0:1000]
set yrange [0:100]
set grid
set xtics font "Verdana,20"
set ytics font "Verdana,20"
set ytics 20
set xtics 200

set rmargin 4
set tmargin 1
set bmargin 3
set lmargin 10

set linestyle 4
set key box width 0.5 height 1 maxcols 0.5 spacing 1
set key at 430, 32.0

set style line 1 \
    linecolor rgb '#dd181f' \
    linetype 5 linewidth 2 \
    pointtype 7 pointsize 2.5

set style line 2 \
    linecolor rgb '#27ae60' \
    linetype 1 linewidth 2 \
    pointtype 8 pointsize 2.5

set style line 3 \
    linecolor rgb '#FFC300' \
    linetype 2 linewidth 2 \
    pointtype 5 pointsize 2.5

set style line 4 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 13 pointsize 3.5

plot "true_positive_rate.dat" using 1:2 title "GaTeBaSeP" with linespoints linestyle 1, "true_positive_rate.dat" using 1:3 title "E2BaSeP" with linespoints linestyle 2, "true_positive_rate.dat" using 1:4 title "BSVR-ARP" with linespoints linestyle 3, "true_positive_rate.dat" using 1:5 title "Naive Bayes" with linespoints linestyle 4
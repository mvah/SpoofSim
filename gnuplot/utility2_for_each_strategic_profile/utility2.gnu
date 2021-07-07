set terminal png size 800,500
set output "utility2.png"

set xlabel "Part of the game" offset -4 font "Verdana,22"
set ylabel " Player's utilities (%)" offset -0 font "Verdana,22"
set key font "Verdana,16"

set xrange [0:10]
set yrange [0:170]
set grid
set xtics font "Verdana,20"
set ytics font "Verdana,20"
set ytics 30
set xtics 1

set rmargin 4
set tmargin 1
set bmargin 3
set lmargin 9

set linestyle 4
set key box width 0.5 height 1 maxcols 0.5 spacing 1
set key at 4.2, 166.0

set style line 1 \
    linecolor rgb '#dd181f' \
    linetype 5 linewidth 2 \
    pointtype 6 pointsize 2.5

set style line 2 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 2 pointsize 2.5

set style line 3 \
    linecolor rgb '#f17005' \
    linetype 2 linewidth 2 \
    pointtype 8 pointsize 2.5

set style line 4 \
    linecolor rgb '#00080a' \
    linetype 1 linewidth 2 \
    pointtype 4 pointsize 2.5

set style line 5 \
    linecolor rgb '#c207b4' \
    linetype 5 linewidth 2 \
    pointtype 6 pointsize 2.5

set style line 6 \
    linecolor rgb '#Fae733' \
    linetype 1 linewidth 2 \
    pointtype 2 pointsize 2.5

set style line 7 \
    linecolor rgb '#27dd60' \
    linetype 2 linewidth 2 \
    pointtype 12 pointsize 2.5

set style line 8 \
    linecolor rgb '#93084b' \
    linetype 1 linewidth 2 \
    pointtype 4 pointsize 2.5

plot "utility2.dat" using 1:2 title "Ud(nd, na)" with linespoints linestyle 1, "utility2.dat" using 1:3 title "Ud(nd, a)" with linespoints linestyle 2, "utility2.dat" using 1:4 title " Ud(d, na)" with linespoints linestyle 3, "utility2.dat" using 1:5 title " Ud(d, a)" with linespoints linestyle 4, "utility2.dat" using 1:6 title " Ua(nd, na)" with linespoints linestyle 5, "utility2.dat" using 1:7 title "Ua(nd, a)" with linespoints linestyle 6, "utility2.dat" using 1:8 title "Ua(d, na)" with linespoints linestyle 7, "utility2.dat" using 1:9 title "Ua(d, a)" with linespoints linestyle 8


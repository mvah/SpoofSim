set terminal png size 800,500
set output "utility1.png"

set xlabel "Part of the game" offset -4 font "Verdana,22"
set ylabel " Player's utilities (%)" offset -0 font "Verdana,22"
set key font "Verdana,16"

set xrange [0:10]
set yrange [0:100]
set grid
set xtics font "Verdana,20"
set ytics font "Verdana,20"
set ytics 20
set xtics 1

set rmargin 4
set tmargin 1
set bmargin 3
set lmargin 9

set linestyle 4
set key box width 0.5 height 1 maxcols 0.5 spacing 1
set key at 3.6, 97.0

set style line 1 \
    linecolor rgb '#900C3F' \
    linetype 5 linewidth 2 \
    pointtype 6 pointsize 2.5

set style line 2 \
    linecolor rgb '#FF5733' \
    linetype 1 linewidth 2 \
    pointtype 2 pointsize 2.5

set style line 3 \
    linecolor rgb '#27ae60' \
    linetype 2 linewidth 2 \
    pointtype 9 pointsize 2.5

set style line 4 \
    linecolor rgb '#FFC300' \
    linetype 1 linewidth 2 \
    pointtype 4 pointsize 2.5

plot "utility1.dat" using 1:2 title "Attacker" with linespoints linestyle 1, "utility1.dat" using 1:3 title "Defender" with linespoints linestyle 2
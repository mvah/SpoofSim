set terminal png size 800,500
set output "packet_drop_rate.png"

set xlabel "Number of hosts"  font "Verdana,22"
set ylabel "Packet drop rate (%)"  font "Verdana,22"
set key font "Verdana,14"

set grid
set xtics font "Verdana,20"
set ytics font "Verdana,20"
set ytics 5

set rmargin 1
set tmargin 1
set bmargin 3
set lmargin 9

# set border 3 front lt black linewidth 1.000 dashtype solid
set boxwidth 0.7 relative
set style fill   solid 
set grid 

set linestyle 4
set key box width 0.5 height 1 maxcols 0.5 spacing 1
set key at 2.9, 14.5

set style data histograms

# set xrange [0:100] noreverse writeback
set yrange [0:15] noreverse writeback
plot 'packet_drop_rate.dat' using 2:xtic(1) lc rgb"#dd181f" title "GaTeBaSeP", '' u 3:xtic(1) lc rgb"#27ae60" title "E2BaSeP", '' u 4:xtic(1) lc rgb"#0060ad" title "Naive Bayes", '' u 5:xtic(1) lc rgb"#FFC300" title "BSVR-ARP"
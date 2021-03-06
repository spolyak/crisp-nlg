load "common-twocolumn.plt"

set terminal pdf dashed font "Helvetica,26" size 30cm,20cm

set output "give-minimal.pdf"

set xlabel "grid width (N)"
set ylabel "time (s)"
set xrange [ 1 : 40 ]
set yrange [ 0 : 40 ]
set mxtics 5
set mytics 5
set xtics 5
set ytics 5

plot "give-minimal.csv" \
        using 2:9   title "FF"         with l ls 1, \
     "" using 2:14  title "Metric-FF"  with l ls 2, \
     "" using 2:19  title "FF-ha"      with l ls 4, \
     "" using 2:30  title "SGPLAN 6"   with l ls 3, \
     "" using 2:39  title "LAMA"       with l ls 5, \
     "" using 2:40  title "C3"         with l ls 6

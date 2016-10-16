#! /bin/gnuplot

# small sample script to be extended for any project

#set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
set terminal dumb
# Line width of the axes
set border linewidth 1.5

# Line styles
set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set style line 2 linecolor rgb '#dd181f' linetype 1 linewidth 2


set title "test.dat"
set xlabel "x"
set ylabel "y"
#set autoscale

set xrange [-2*pi:2*pi] 
set yrange [-1.5:1.5]
set xtics ('-2π' -2*pi, '-π' -pi, 0, 'π' pi, '2π' 2*pi)
set ytics 1
set tics scale 0.75

set key below center
# set label "test" at 1,2 center

plot sin(x) title "sin(x)" with lines ls 1
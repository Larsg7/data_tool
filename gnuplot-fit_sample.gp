#! /bin/gnuplot 

#set terminal wxt size 350,262 enhanced font 'Verdana,10' persist
set terminal dumb
file="`echo $plot_file`"    # make sure to set the $plot_file environment varible first

f(x) = a*x+b
a = 1
b = 1
fit f(x) file via a,b

title_f(a, b) = sprintf('f(x) = %.2f*x+%.2f', a, b)  # display the final m and b values on the chart
plot f(x) t title_f(a,b), file

pause mouse keypress
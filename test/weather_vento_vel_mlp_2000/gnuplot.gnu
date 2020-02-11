set encoding utf8
set term postscript eps enhanced color

set output 'data_chart.eps'

set xlabel 'Event'
set ylabel 'Wind Speed (m/s)'

set style line 1 lt 1 lw 1
set style line 2 lt 2 lw 1

plot 'test_out_training.csv' using 1 title 'Real' with lines ls 1,\
     'test_out.csv' using 1 title 'Simulation' with lines ls 2;

exit


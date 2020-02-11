set encoding utf8
set term postscript eps enhanced color

set output 'radiation_chart.eps'

#set title 'Solar radiation simulation using an ANN'

set xlabel 'Event'
set ylabel 'Radiation (kJ/m^2)'

set style line 1 lt 1 lw 1
set style line 2 lt 2 lw 1

plot 'test_out_training_denormalized.csv' using 1 title 'Real' with lines ls 1,\
     'net/net_output_avg_denormalized.csv' using 1 title 'Simulation' with lines ls 2;

exit


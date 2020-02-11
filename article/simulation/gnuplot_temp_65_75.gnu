set encoding utf8
set term postscript eps enhanced color

set output 'temp_chart_65_75.eps'

#set title 'Temperature simulation by ANN topology'

set xlabel 'Event'
set ylabel 'Temperature ({/Symbol \260}C)'

set style line 1 lt 1 lw 1
set style line 2 lt 2 lw 1
set style line 3 lt 3 lw 1
set style line 4 lt 4 lw 1
set style line 5 lt 5 lw 1
set style line 6 lt 6 lw 1
set style line 7 lt 7 lw 1

set xrange [65:75]

plot 'weather_temp_mlp_2000/test_out_training_denormalized.csv' using 1 title 'Real' with lines ls 1,\
     'weather_temp_mlp_2000/net/net_output_avg_denormalized.csv' using 1 title 'MLP' with lines ls 2,\
     'weather_temp_complete_2000/net/net_output_avg_denormalized.csv' using 1 title 'CP' with lines ls 3,\
     'weather_temp_random_2000/net/net_output_avg_denormalized.csv' using 1 title 'RD' with lines ls 4,\
     'weather_temp_scalefree_2000/net/net_output_avg_denormalized.csv' using 1 title 'SF' with lines ls 5,\
     'weather_temp_smallworld_2000/net/net_output_avg_denormalized.csv' using 1 title 'SW' with lines ls 6,\
     'weather_temp_hybrid_2000/net/net_output_avg_denormalized.csv' using 1 title 'HY' with lines ls 7;

exit


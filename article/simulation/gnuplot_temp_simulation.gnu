set encoding utf8
set term postscript eps enhanced color

set output 'temp_simulation_rmse.eps'

set xlabel 'Network topology'
set ylabel 'RMSE'

set boxwidth 1 relative
set style data histograms
set style fill solid 1.0 border -1

plot 'weather_temp_simulation.csv' using 2:xticlabels(1) title 'RMSE';

exit


set encoding utf8
set term postscript eps enhanced color

set output 'radiation_training_etp.eps'

set xlabel 'Network topology'
set ylabel 'ETP (s)'

set boxwidth 1 relative
set style data histograms
set style fill solid 1.0 border -1

plot 'weather_radiation_training.csv' using 4:xticlabels(1) title 'ETP';

exit


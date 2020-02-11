set encoding utf8
set term postscript eps enhanced color

set output 'temp_training_etl.eps'

set xlabel 'Network topology'
set ylabel 'ETL (s)'

set boxwidth 1 relative
set style data histograms
set style fill solid 1.0 border -1

plot 'weather_temp_training.csv' using 3:xticlabels(1) title 'ETL';

exit


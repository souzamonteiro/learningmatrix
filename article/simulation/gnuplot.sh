#!/bin/sh

gnuplot < gnuplot_radiacao.gnu
gnuplot < gnuplot_radiacao_65_75.gnu

gnuplot < gnuplot_temp.gnu
gnuplot < gnuplot_temp_65_75.gnu

gnuplot < gnuplot_radiation_simulation.gnu
gnuplot < gnuplot_temp_simulation.gnu

gnuplot < gnuplot_radiation_etl.gnu
gnuplot < gnuplot_radiation_etp.gnu

gnuplot < gnuplot_temp_etl.gnu
gnuplot < gnuplot_temp_etp.gnu


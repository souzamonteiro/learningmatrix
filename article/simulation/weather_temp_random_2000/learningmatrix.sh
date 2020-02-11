#!/bin/sh

#../../../bin/mkmlp.gua -o net.net --ni 5 --no 1 --nl 2 --nhu 10
#../../../bin/mknet.gua --prefix net/net --nfiles 100 -n 26 --topology random -d 13.1154 --ni 5 --tseed
#../../../bin/mknextstep.gua -i inmet_700.csv --o1 data_in_training.csv --o2 data_out_training.csv --np 5
#../../../bin/mknextstep.gua -i inmet_300.csv --o1 test_in_training.csv --o2 test_out_training.csv --np 5
cp data_in_training.csv data_in.csv
cp test_in_training.csv test_in.csv
../../../bin/learningmatrix.gua -i test_in.csv --prefix net/net --nfiles 100 -c net/net_log.csv --its data_in_training.csv --ots data_out_training.csv --ann net.net --annout net_out.net --lrate 0.005 --af tanh --oaf linear --of none --loops --prepare --nw --epochs 2000 --interval 200
../../../../scntools-1.4.8/bin/csvavg.gua --prefix net/net --sufix "_output" --nfiles 100 --separator "\t" --oavg net/net_output_avg.csv --odev net/net_output_dev.csv --oerr net/net_output_err.csv
../../../bin/denormalize.gua -i test_out_training.csv -o test_out_training_denormalized.csv --min 20.5 --max 33.5
../../../bin/denormalize.gua -i net/net_output_avg.csv -o net/net_output_avg_denormalized.csv --min 20.5 --max 33.5


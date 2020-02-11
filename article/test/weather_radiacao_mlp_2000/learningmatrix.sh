#!/bin/sh

#../../../bin/mkmlp.gua -o net.net --ni 5 --no 1 --nl 2 --nhu 10
#../../../bin/mknet.gua -o net.net -n 26 --topology complete --ni 5
../../../bin/mknextstep.gua -i inmet_700.csv --o1 data_in_training.csv --o2 data_out_training.csv --np 5
../../../bin/mknextstep.gua -i inmet_300.csv --o1 test_in_training.csv --o2 test_out_training.csv --np 5
cp data_in_training.csv data_in.csv
cp test_in_training.csv test_in.csv
../../../bin/learningmatrix.gua -i data_in.csv -o data_out.csv -c net.csv -r net.rep --cf net_correctness.csv --its data_in_training.csv --ots data_out_training.csv --ann net.net --annout net_out.net --lrate 0.005 --af tanh --oaf linear --of none --loops --prepare --nw --epochs 2000 --interval 200
../../../bin/learningmatrix.gua -i test_in.csv -o test_out.csv --no 1 --ann net_out.net --af tanh --oaf linear --of none --loops


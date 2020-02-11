#!/bin/sh

#../../../scntools-1.4.8/bin/mknet.gua -o net.net -n 5 --topology complete
#../../bin/mkmlp.gua -o net.net --ni 1 --no 1 --nl 1 --nhu 3
cp data_in_training.csv data_in.csv
../../bin/learningmatrix.gua -i data_in.csv -o data_out.csv -c net.csv -r net.rep --cf net_correctness.csv --its data_in_training.csv --ots data_out_training.csv --ann net.net --annout net_out.net --lrate 0.005 --af tanh --oaf linear --of none --loops --prepare --nw --epochs 200000 --interval 1000
#../../bin/learningmatrix.gua -i test_in.csv -o test_out.csv --no 1 --ann net_out.net --af tanh --oaf linear --of none --loops

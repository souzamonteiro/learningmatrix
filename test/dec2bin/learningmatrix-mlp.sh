#!/bin/sh

#../../bin/mkmlp.gua -o mlp.net --ni 1 --no 3 --nl 3 --nhu 4
../../bin/learningmatrix.gua -i mlp_in.csv -o mlp_out.csv -c mlp.csv -r mlp.rep --cf mlp_correctness.csv --its mlp_in_training.csv --ots mlp_out_training.csv --ann mlp.net --annout mlp_out.net --lrate 0.005 --af tanh --oaf logistic --of step --prepare --loops --nw --epochs 70000 --interval 1000

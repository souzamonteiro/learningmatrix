#!/bin/sh

#../../../scntools-1.4.7/bin/mknet.gua -o complete.net -n 30 --topology complete
../../bin/learningmatrix.gua -i complete_in.csv -o complete_out.csv -c complete.csv -r complete.rep --cf complete_correctness.csv --its complete_in_training.csv --ots complete_out_training.csv --ann complete.net --annout complete_out.net --lrate 0.45 --af logistic --oaf logistic --of step --prepare --epochs 10000 --interval 50

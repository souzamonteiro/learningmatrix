#!/bin/sh

#../../../scntools-1.4.8/bin/mknet.gua -o complete.net -n 23 --topology complete
#../../bin/mknextstep.gua -i data_0001_0020.csv --o1 complete_in_training.csv --o2 complete_out_training.csv --np 2
cp complete_in_training.csv complete_in.csv
../../bin/learningmatrix.gua -i complete_in.csv -o complete_out.csv -c complete.csv -r complete.rep --cf complete_correctness.csv --its complete_in_training.csv --ots complete_out_training.csv --ann complete.net --annout complete_out.net --lrate 0.005 --af linear --oaf linear --of none --prepare --loops --nw --epochs 100000 --interval 1000

#!/bin/sh
../../bin/learningmatrix.gua -i complete_in.csv -o complete_out.csv -c complete.csv -r complete.rep --cf complete_correctness.csv --its complete_in_training.csv --ots complete_out_training.csv --ann complete.net --annout complete_out.net --prepare --epochs 1000

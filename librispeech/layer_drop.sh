#!/bin/zsh
declare -a StringArray=('0.5 0.25')

for val in ${StringArray[@]}; do
    echo $val
    python layer_drop.py hparams/nine/layer_drop05.yaml --test_layerdrop $val

done



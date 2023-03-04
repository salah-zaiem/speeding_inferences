#!/bin/zsh
declare -a StringArray=('24 22 20 18 16 14 12')

for val in ${StringArray[@]}; do
    echo $val
    python limited_layers.py hparams/limited_layers.yaml --output_folder /gpfsstore/rech/nou/uzn19yk/results/efficient/librispeech/layer_removal/$val --considered_layers $val

done



#!/bin/zsh
declare -a StringArray=('20 18')

for val in ${StringArray[@]}; do
    echo $val
    python limited_layers.py hparams/limited_layers.yaml --output_folder /gpfsstore/rech/nou/uzn19yk/results/efficient/librispeech/layer_removal/$val --considered_layers $val

done



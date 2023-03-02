#!/bin/zsh
declare -a StringArray=('0.90 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99')
declare -a StringArray=('0.965')


for val in ${StringArray[@]}; do
    echo $val
    python early_exiting.py hparams/early_exits.yaml --entropy 0 --similarity 1 --sim_value $val


done



#!/bin/zsh
declare -a StringArray=('0.04 0.035 0.03 0.02 0.01')
declare -a StringArray=('0.05 0.025')

for val in ${StringArray[@]}; do
    echo $val
    python early_exiting.py hparams/early_exits.yaml --entropy 1 --similarity 0 --entropy_value $val


done



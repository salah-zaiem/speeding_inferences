#!/bin/zsh
declare -a StringArray=('0.94 0.95 0.955 0.96 0.97 0.98 0.99')


for val in ${StringArray[@]}; do
    echo $val
    python new_ee.py hparams/new_early_exits.yaml --entropy 0 --similarity 1 --sim_value $val


done



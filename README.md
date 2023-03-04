This repository contains the code allowing to reproduce the results obtained in the paper : "Fine-tuning Strategies for Faster Inference using Speech Self-Supervised Models:  A Comparative Study". 

This repository is a SpeechBrain Recipe allowing to run the described experiments after installing the SpeechBrain Library. 
For every experiment, 5 tests are run at the end, two for GPU runtimes with and without LM, two for CPU runtimes and one for the MACs computations.


## Downsampling experiments : 
Three methods are prpoposed in the downsampling experiments, to run the signal downsampling one with a factor 2 downsampling: 

```
python sd_notupsampled.py hparams/signal_downsampling/sig_down8000.yaml 
```

To run an average downsampling with factor 3  :

```
python conv_upsample.py hparams/avg_downsampling/average_3_ups.yaml
```

## Layer Removal experiments : 

To run the layer removal experimental (preceded by the full model computations)
```
bash layer_removal.sh
```


## Early-exiting experiments : 
To run the EE experiments, a few changes (that can be found in the "to\_change" folder) have to be made to the transformers library. After that it could be run by :
```
python new_ee.py hparams/early_exiting/early_exits.yaml
```


This repository contains the code allowing to reproduce the results obtained in the paper : "Fine-tuning Strategies for Faster Inference using Speech Self-Supervised Models:  A Comparative Study". 

This repository is a SpeechBrain Recipe allowing to run the described experiments after installing the SpeechBrain Library. 

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

```
bash layer_removal.sh
```


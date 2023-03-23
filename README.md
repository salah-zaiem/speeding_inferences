This repository contains the code allowing to reproduce the results obtained in the paper : "Fine-tuning Strategies for Faster Inference using Speech Self-Supervised Models:  A Comparative Study". 

This repository is a SpeechBrain Recipe allowing to run the described experiments after installing the SpeechBrain Library. 
For every experiment, 5 tests are run at the end, two for GPU runtimes with and without LM, two for CPU runtimes and one for the MACs computations.


# Downsampling experiments : 
Three methods are prpoposed in the downsampling experiments, to run the signal downsampling one with a factor 2 downsampling: 

```
python downsampled_train.py hparams/sig_down8000.yaml 
```

To run a convolutional downsampling with factor 3  :

```
python downsampled_train.py hparams/sig_down8000.yaml --downsampling_factor 3 --downsampling_technique convolutional
```

### Results with Librispeech train-clean-100
The inference times shown here are for running the whole test-clean LibriSpeech split, and are in seconds. MACs shown here are the mean MACs for a test batch.

| Name | Factor | WER   | GPU- Inference Time | CPU - Inference Time | WER-LM | GPULM - Inference Time | CPULM - Inference Time | MACs (G)|
|------|--------|-------|---------------------|----------------------|--------|------------------------|------------------------|---------|
| CL2  |      2 | 4.61  |                  84 |                  582 | 3.48   |                     98 |                    600 | 192.97  |
| CL3  |      3 | 5.47  |                  69 |                  414 |   4.12 |                     91 |                    436 | 134.864 |
| CL4  |      4 | 21.88 |                  67 |                  335 |   14.6 |                    106 |                    340 | 96.11   |
| AV2  |      2 | 4.93  |                  80 |                  570 | 3.66   |                     98 |                    578 | 192.97  |
| AV3  |      3 | 6.01  |                  64 |                  406 | 4.27   |                     90 |                    422 | 134.864 |
| AV4  |      4 | 26.84 |                  60 |                  326 |  18.02 |                    115 |                    385 | 96.11   |
| SD2  |      2 | 4.85  |                  86 |                  569 | 3.58   |                     97 |                    575 | 192.97  |
| SD3  |      3 | 5.83  |                  72 |                  427 |  4.08  |                     89 |                    458 | 134.864 |
| SD4  |      4 | 16.08 |                  63 |                  330 |   11.1 |                     97 |                    369 | 96.11   |

CL: Learned convolutional downsampling

SD : signal downsampling

AV : Averaging window


# Layer Removal experiments : 

To run the layer removal experimental (preceded by the full model computations)
```
bash layer_removal.sh
```


## Early-exiting experiments : 
To run the EE experiments, a few changes (that can be found in the "early\_exiting" folder) have to be made to the transformers library. After that it could be run by :

```
python early_exiting.py hparams/early_exiting/early_exits.yaml
```


# **About SpeechBrain**
- Website: https://speechbrain.github.io/
- Code: https://github.com/speechbrain/speechbrain/
- HuggingFace: https://huggingface.co/speechbrain/

# **Citing**
Bibtex for the paper describing these experiments : 
```bibtex
@article{zaiem2023fine,
  title={Fine-tuning Strategies for Faster Inference using Speech Self-Supervised Models: A Comparative Study},
  author={Zaiem, Salah and Algayres, Robin and Parcollet, Titouan and Essid, Slim and Ravanelli, Mirco},
  journal={arXiv preprint arXiv:2303.06740},
  year={2023}
}
```

Please, cite SpeechBrain if you use it for your research or business.

```bibtex
@misc{speechbrain,
  title={{SpeechBrain}: A General-Purpose Speech Toolkit},
  author={Mirco Ravanelli and Titouan Parcollet and Peter Plantinga and Aku Rouhe and Samuele Cornell and Loren Lugosch and Cem Subakan and Nauman Dawalatabad and Abdelwahab Heba and Jianyuan Zhong and Ju-Chieh Chou and Sung-Lin Yeh and Szu-Wei Fu and Chien-Feng Liao and Elena Rastorgueva and François Grondin and William Aris and Hwidong Na and Yan Gao and Renato De Mori and Yoshua Bengio},
  year={2021},
  eprint={2106.04624},
  archivePrefix={arXiv},
  primaryClass={eess.AS},
  note={arXiv:2106.04624}
}
```

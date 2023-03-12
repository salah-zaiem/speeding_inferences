What to do to run the early exit:

*Put the 'ee_wavlm' folder in the 'transformers/models/' directory of your conda environment. There may be some things to add in the 'init' files to add pointers to these things, you will know if there are errors.
* Change the Speechbrain library file : huggingface_wav2vec.py that is present in speechbrain/lobes/models with the one present in this folder, it adds 

The directory from which you load 'wavlm_large' should be called 'eewavlm'.



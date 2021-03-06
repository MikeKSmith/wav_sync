# wav_sync
Using R to sync up wave files e.g. podcasts

## Getting audio into R:  
  - Seewave: https://cran.r-project.org/web/packages/seewave/vignettes/seewave_IO.pdf   
    * Read, write, play, create time series of WAV files, convert type (wav, flac, txt).  
  - tuneR: https://cran.r-project.org/web/packages/tuneR/tuneR.pdf  
    * `equalWave` function to compare wav files
    * `noSilence` to trim (near) silence from start and end of audio 
    * `periodogram` to calculate spectral densities of the time series in WAV
  - audio: https://cran.r-project.org/web/packages/audio/audio.pdf 
    * Playback and control of audio files
  - warbleR: https://cran.r-project.org/web/packages/warbleR/index.html
    * functions for comparing audio against a reference
    * `autodetec` finds start and end of signal in an audio file
    * `xcorr` estimates the similarity of two spectrograms by means of cross-correlation
    * Acoustic (dis)similarity: https://cran.r-project.org/web/packages/warbleR/vignettes/warbleR_workflow_phase3.html
  - dtw: https://cran.r-project.org/web/packages/dtw/index.html
    * Dynamic Time Warping: https://cran.r-project.org/web/packages/dtw/vignettes/dtw.pdf
    * Computes the optimal (least cumulative distance) alignment between points of two time series. 
  - monitoR: https://cran.r-project.org/web/packages/monitoR/index.html
    * compare audio against reference and extract matches
  - rav: https://docs.ropensci.org/av/
    * https://ropensci.org/technotes/2020/02/03/av-audio/
  - wavesurfer: https://github.com/Athospd/wavesurfer
    * Visualise and annotate wav files in R / Shiny. 

## Useful stuff:
  - Sound processing in R: http://samcarcagno.altervista.org/blog/basic-sound-processing-r/ 
  - Mathworks “synchronise” function for timeseries: https://uk.mathworks.com/help/matlab/ref/timeseries.synchronize.html?s_tid=gn_loc_drop 
  - Aligning two signals: https://stats.stackexchange.com/questions/31666/how-can-i-align-synchronize-two-signals 
  - Synchronizing two signals using FFT in R:
https://stats.stackexchange.com/questions/130843/how-to-synchronize-two-signals-using-fft-in-r 
  - Acoustic analsysis in R  https://rpubs.com/marcelo-araya-salas/108244

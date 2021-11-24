# DSP Shift Pitch
###### tags: `NCKU` `DSP` `python`


## Environment
* macOS
* python3 
* matlab

## Requirement
將原音檔提高六個半音及降低六個半音，並以spectrogram輸出圖片做比較。


## Overview

![](https://i.imgur.com/IZFIuJA.png)


![](https://i.imgur.com/1yXidJZ.png)
**Fig(1) spectrogram**


使用matlab內建函式 `shiftPitch` 以及 `spectrogram`。
Fig(1)由上到下分別為原始音檔、提高六度、降低六度之圖形。橫軸為time、縱軸為Frequency。可以觀察到他們間距的緊密度，越低緊密度越高，反之越鬆散。
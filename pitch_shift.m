%Q56091079_李昱玟_hw3

clc
clear all
close all

[y, fs] = audioread('singing16k16bit-clean.wav');   %讀檔

increase_semi = 6; %升高六個半音
decrease_semi = -6; %降低六個半音
increaseFile = shiftPitch(y, increase_semi);
audiowrite('increaseFile.wav', increaseFile, fs); %存檔

decreaseFile = shiftPitch(y, decrease_semi);
audiowrite('decreaseFile.wav', decreaseFile, fs);

subplot(3, 1, 1);
grid on;
spectrogram(y, 256, 250, 256, fs, 'yaxis') %將圖呈現出來(x軸：time ,y軸：frequency) 
                                           %(y, window, overlap, nfft, fs)
title('original')

subplot(3, 1, 2);
grid on;
spectrogram(increaseFile, 256, 250, 256, fs, 'yaxis');
title('increase six semitones');

subplot(3, 1, 3);
grid on;
spectrogram(decreaseFile, 256, 250, 256, fs, 'yaxis');
title('decrease six semitones');
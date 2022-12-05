clc;
clear all;
close all;

I = imread("pout.tif");

c = fft2(I);
d = fftshift(msk);
e = c.*d;
f = abs(ifft2(e));

subplot(2,2,1)
imshow(I)
title("Original Image")

subplot(2,2,2)
imshow(mat2gray(f));
title("Hp image o/p")

subplot(2,2,3)
imshow(mask);
title("Hpf mask")

subplot(2,2,4)
imshow(d);
title("mask after shift")
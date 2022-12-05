clc;
clear all;

I = imread('rice.png');
background = imopen(I,strel('disk',15));
Ip = imdivide(I,background);

figure()

subplot(2,2,1)
imshow(I)
title("Rice image")

subplot(2,2,2)
imshow(Ip)
title("Divided image")

subplot(2,2,3)
imshow(background)
title("Background image")
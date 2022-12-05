clc;
clear;
close all;

I = imread("parth.jpg");
%low pass filter
lp_filter = fspecial("Average",3);
I_Avg_filter = imfilter(I,lp_filter);

%high pass filter
hp_filter = [-1,-1,-1;-1,8,-1;-1,-1,-1];
I_Hp_filter = imfilter(I,hp_filter);

figure();

subplot(2,2,1)
imshow(I);
title("Original image")

subplot(2,2,2)
imshow(I_Avg_filter);
title("LPF filter image 1 PRK");

lp_filter1 = fspecial("Average",5);
I_Avg_filter1 = imfilter(I,lp_filter1);

subplot(2,2,3)
imshow(I_Avg_filter1)
title("LPF filter image 2 with average,5 PRK")

subplot(2,2,4)
imshow(I_Hp_filter);
title("HPF filter image 1 PRK");
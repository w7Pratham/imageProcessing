clc;
close all;

myPBS = imread('parth.jpg');
PBS = rgb2gray(myPBS);

%plot the histogram of i/p image
PBSh = imhist(PBS);

%equalize hist. image
PBSe = histeq(PBS);

%histogram eq. image
PBShe = imhist(PBSe);

subplot(2,2,1);
imshow(PBS);
title(" Original Image");

subplot(2,2,2);
bar(PBSh);
title(" Histogram of My Original Image");

subplot(2,2,3);
imshow(PBSe);
title("Eqlualized Image");

subplot(2,2,4);
bar(PBShe);
title("Histogram of Eqlualized Image");
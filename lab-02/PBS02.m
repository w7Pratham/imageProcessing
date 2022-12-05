clc;
close all;

PBS = imread('cameraman.tif');

%plot the histogram of i/p image
PBSh = imhist(PBS);

%equalize hist. image
PBSe = histeq(PBS);

%histogram eq. image
PBShe = imhist(PBSe);

figure();
subplot(2,2,1);
imshow(PBS);
title("cameraman Original Image");

subplot(2,2,2);
bar(PBSh);
title("Histogram of cameraman Original Image");

subplot(2,2,3);
imshow(PBSe);
title(" cameraman Equlized Image");

subplot(2,2,4);
bar(PBShe);
title("cameraman Histogram of Equlized Image");

figure()
myPBS = imread('parth.jpg');
imshow(myPBS);
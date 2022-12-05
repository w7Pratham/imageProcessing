clc;
close all;

x = imread('cameraman.tif');
y = imread('rice.png');
%defining that we want z as uint16 for storing addition of pixels greater
%than 255
z = imadd(x,y);

figure();
subplot(2,2,1);
imshow(x);
title("cammeraman image");

subplot(2,2,2);
imshow(y);
title("rice image");

subplot(2,2,3);
imshow(z);
title("Image Addition Result,PBS");

subplot(2,2,4);
imshow(z,[]);
title("Image Addition with [] Result,PBS");

%Image subtraction program

figure()
I = imread('rice.png');
background = imopen(I,strel('disk',15));
Ip = imsubtract(I,background);

subplot(2,2,1)
imshow(I,[])
title("rice image");

subplot(2,2,2)
imshow(Ip,[])
title("Subtraction result for rice");

subplot(2,2,3)
imshow(background)
title("This is background");



clc;
clear all;
close all;

PBS = imread("parth.jpg");
%I = rgb2gray(I);

%prewitt_x horizontal filter
prewitt_x = [-1,-1,-1;0,0,0;1,1,1];
prewitt_x_filter = imfilter(PBS,prewitt_x);

%prewitt_y vertical filter
prewitt_y = [-1,0,1;-1,0,1;-1,0,1];
prewitt_y_filter = imfilter(PBS,prewitt_y);

figure();

subplot(2,3,1)
imshow(PBS);
title("Original image")

subplot(2,3,2)
imshow(prewitt_x_filter);
title("prewitt x horizontal filter PRK image");

subplot(2,3,3)
imshow(prewitt_y_filter);
title("prewitt y vertical filter PRK image");

%Sobel filter

%Sobel_x horizontal filter
Sobel_x = [-1,-2,-1;0,0,0;1,2,1];
Sobel_x_filter = imfilter(PBS,Sobel_x);

%Sobel_y vertical filter
Sobel_y = [-1,0,1;-2,0,2;-1,0,1];
Sobel_y_filter = imfilter(PBS,Sobel_y);

%figure();

subplot(2,3,5)
imshow(Sobel_x_filter);
title("Sobel x vertical filter PRK image");

subplot(2,3,6)
imshow(Sobel_y_filter);
title("Sobel y horizontal filter PRK image");

%Laplacian Filter

Laplacian = [0,0,-1,0,0;0,-1,2,-1,0;-1,-2,16,-2,-1;0,-1,2,-1,0;0,0,-1,0,0];
Laplacian_filter = imfilter(PBS,Laplacian);

%figure();
 
subplot(2,3,4)
imshow(Laplacian_filter);
title("Laplacian filter vertical filter PRK image");

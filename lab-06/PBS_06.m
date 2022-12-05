clc;
clear all;
close all;

I = imread("cameraman.tif");
[m,n] = size(I);

mask = ones(m,n);
x= input("Enter cutoff freq= ");
for i = (m/2 - x) : (m/2  + x)
    for j = (n/2 - x) : (n/2 + x)
        mask(i,j) = 0;
    end
end

c = fft2(I);
d = fftshift(mask);
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
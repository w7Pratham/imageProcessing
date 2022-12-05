clc;
close all;

RGB = imread('parth.jpg');

%converting color image to gray
R = RGB(:,:,1);
G = RGB(:,:,2);
B = RGB(:,:,3);

[r,c,h] = size(RGB);

for n = 1:1:r
    for m = 1:1:c-1
        new(n,m) = R(n,m)/3+G(n,m)/3+B(n,m)/3;
    end
end

PBS = rgb2gray(RGB);

subplot(2,2,1);
imshow(RGB);
title("original image");

subplot(2,2,2);
imshow(new);
title("expected image");

subplot(2,2,3);
imshow(PBS);
title("gray image");

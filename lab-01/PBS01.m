clc;
close all;
PBS = imread('cameraman.tif');
myPBS = imread('parth.jpg');
figure();
imshow(PBS);
title('B&W image PRK');
figure();
imshow(myPBS);

%to find size in rows and columns
[r,c] = size(PBS);

disp('min from image');
PSmin = min(min(PBS));
disp(PSmin);

disp('max from image');
PSmax = max(max(PBS));
disp(PSmax);

disp('mean of image');
PSmean = mean(mean(PBS));
disp(PSmean);

PBS = double(PBS);%uint8 to double
disp('standard deviation of image');
PSstd = std(std(PBS));
disp(PSstd);

disp('variance of image');
PSvar = var(var(PBS));
disp(PSvar);
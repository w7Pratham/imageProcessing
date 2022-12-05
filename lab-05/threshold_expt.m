% Exp No. 7_2
% 2. MATLAB Program for GLOBAL Thresholding. 
clc ;
close all;
clear all;
PBS = imread('parth.jpg');
PBS = rgb2gray(PBS);
subplot(1,3,1),imshow(PBS); title('Original Image');

count =0;
T = mean2(PBS); % Threshold Value
done = false;
while ~done
count = count +1;
g = PBS > T; %Compaire each pixel value with threshold T
Tnext = 0.5*(mean(PBS(g)) +mean(PBS(~g))) % Update the Threshold value by calculating new mean value
done = abs(T -Tnext)<0.5
T = Tnext;
end

g = imbinarize(PBS, T/255);
subplot(1,3,2),imhist(g);
subplot(1,3,3),imshow(g); title('Thresholded Image PRK');
xlabel(['The Threshold Value is = ', num2str(T)]);

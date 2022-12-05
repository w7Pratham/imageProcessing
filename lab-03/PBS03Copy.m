clc;
close all;

I = uint16([255,0,10; 50,20,150]);
J = uint16([200,55,50;70,120,200]);

imadd(I,J)

%Image substraction program
imsubtract(I,J)

%for mulliplication defining square matrices
I = uint16([255,0;50,20]);
J = uint16([200,55;128,200]);

disp("multiplication of matrices I and J")
disp(immultiply(I,J))

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
title("Image Addition Result,PPH");

subplot(2,2,4);
imshow(z,[]);
title("Image Addition with [] Result,PPH");

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

%multiplication
I = imread('moon.tif');
I16 = uint16(I);
J = immultiply(I16,I16);
figure()
subplot(2,2,1)
imshow(I)
title("this is moon");

subplot(2,2,2)
imshow(I16)
title("This is I16");

subplot(2,2,3)
imshow(J)
title("This is multiplied moon");

%Divide

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

%for Complement
I = imread('prem.jpg');
out2Com = imcomplement(I);

figure()

subplot(1,2,1)
imshow(I)
title("Image");

subplot(1,2,2)
imshow(out2Com)
title("Complement");
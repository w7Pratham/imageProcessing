clc;
clear all;
close all;
I=imread('cameraman.tif');
[m,n]=size(I);
mask=ones(m,n);
x=input('enter the cutoff frequency');
for i=(m/2-x):(n/2+x)
    for j=(n/2-x):(n/2+x)
        mask(i,j)=0;
    end;
end;
c=fft2(I);
d=fftshift(mask);
e=c.*d;
f=abs(ifft2(e));
subplot(2,2,1)
imshow(I)
title('orignal image ')
subplot(2,2,2)
imshow(mat2gray(f));
title('high pass image output PRK');
subplot(2,2,3)
imshow(mask)
title('HPF mask')
subplot(2,2,4);
imshow(d)
title('mask after fft shift PRK');

%low pass
mask=zeros(m,n);
x=input('enter the cutoff frequency');
for i=(m/2-x):(n/2+x)
    for j=(n/2-x):(n/2+x)
        mask(i,j)=1;
    end;
end;
c=fft2(I);
d=fftshift(mask);
e=c.*d;
f=abs(ifft2(e));
figure();
subplot(2,2,1)
imshow(I)
title('orignal image')
subplot(2,2,2)
imshow(mat2gray(f));
title('low pass image output PRK');
subplot(2,2,3)
imshow(mask)
title('LPF mask PRK')
subplot(2,2,4);
imshow(d)
title('mask after fft shift PRK');
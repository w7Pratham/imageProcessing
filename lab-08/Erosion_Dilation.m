% Program for Erosion and Dilation

I=imread('circles.png');
SE1=strel('disk',6);
SE2=strel('line',8,20);
SE3=strel('diamond',5);
SE4=strel('square',9);
 
I1=imerode(I,SE1);
I2=imerode(I,SE2);
I3=imerode(I,SE3);
I4=imerode(I,SE4);
 
figure();
subplot(2,4,2),imshow(I),title('original image JR')
subplot(2,4,5),imshow(I1),title('Errosion with SE DISK')
subplot(2,4,6),imshow(I2),title('Errosion with SE LINE')
subplot(2,4,7),imshow(I3),title('Errosion with SE DIAMOND')
subplot(2,4,8),imshow(I4),title('Errosion with SE SQUARE')


%%Dilation of image
I1=imdilate(I,SE1);
I2=imdilate(I,SE2);
I3=imdilate(I,SE3);
I4=imdilate(I,SE4);
 
figure();
subplot(2,4,2),imshow(I),title('original image JR')
subplot(2,4,5),imshow(I1),title('Dilation with SE DISK')
subplot(2,4,6),imshow(I2),title('Dilation with SE LINE')
subplot(2,4,7),imshow(I3),title('Dilation with SE DIAMOND')
subplot(2,4,8),imshow(I4),title('Dilation with SE SQUARE')

figure

I1 = imopen(I,SE1);
I2 = imopen(I,SE2);
I3 = imopen(I,SE3);
I4 = imerode(I,SE4);

I5 = imclose(I,SE1);
I6 = imclose(I,SE2);
I7 = imclose(I,SE3);
I8 = imclose(I,SE4);

subplot(3,5,2)
imshow(I)
title("Original image JR")
subplot(3,5,6)
imshow(I1)
title("Open with SE DISK")
subplot(3,5,7)
imshow(I2)
title("Open with SE LINE")
subplot(3,5,8)
imshow(I3)
title("Open with SE DIAMOND")
subplot(3,5,9)
imshow(I4)
title("Open with SE SQUARE")

subplot(3,5,11)
imshow(I5)
title("Close with SE DISK")
subplot(3,5,12)
imshow(I6)
title("Close with SE LINE")
subplot(3,5,13)
imshow(I7)
title("Close with SE DIAMOND")
subplot(3,5,14)
imshow(I8)
title("Close with SE SQUARE")

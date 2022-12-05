%multiplication
I = imread('moon.tif');
I16 = uint16(I);
J = immultiply(I16,I16);

subplot(2,2,1)
imshow(I)
title("this is moon");

subplot(2,2,2)
imshow(I16)
title("This is I16");

subplot(2,2,3)
imshow(J)
title("This is Res");

%division
Rice = imread('rice.png');
background2 = imopen(Rice,strel('disk',15));
out1 = imdivide(Rice,background2);

figure()

subplot(2,2,1)
imshow(Rice)
title("Rice");

subplot(2,2,2)
imshow(background2)
title("Background");

subplot(2,2,3)
imshow(out1)
title("output of division");

%for Complement
I = imread('text.png');
out2Com = imcomplement(I);

figure()

subplot(1,2,1)
imshow(I)
title("Image");

subplot(1,2,2)
imshow(out2Com)
title("Complement");
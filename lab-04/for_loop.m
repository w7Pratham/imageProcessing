[r,c] = size(I);
for x=2:1:r-1
    for y=2:1:c-1
        fit = [I(x-1,y-1)*1/9,I(x-1,y)*1/9,I(x-1,y+1)*1/9;I(x,y-1)*1/9,I(x,y)*1/9,I(x,y+1)*1/9;I(x+1,y-1)*1/9,I(x+1,y)*1/9,I(x+1,y+1)*1/9];
    end
end
subplot(2,3,5)
imshow(fit);
title("Coded filter");

path='images\runge.jpg';

im=imread(path);

YCbCr=rgb2ycbcr(im);
imwrite(YCbCr(:,:,1),'images\nonnormalized_y.jpg');
imwrite(YCbCr(:,:,2),'images\nonnormalized_cb.jpg');
imwrite(YCbCr(:,:,3),'images\nonnormalized_cr.jpg');

[ I,H, W ]=convertImageIntoDoublePrecision(path);
[ R,G,B ] = getRGBVector(I);
[ I ] = normalizeImageIllumination( I,H,W,R,G,B);
I=uint8(I);

YCbCr=rgb2ycbcr(I);
imwrite(YCbCr(:,:,1),'images\normalized_y.jpg');
imwrite(YCbCr(:,:,2),'images\normalized_cb.jpg');
imwrite(YCbCr(:,:,3),'images\normalized_cr.jpg');

%function []=detect(img)

    img='images/img1.jpg';
    %cr max and min bound can change
    minBound_Cr=12;maxBound_Cr=29;
    
    [ I,H, W ]=convertImageIntoDoublePrecision( img );
    figure,imshow(img);


	[ S ] = selectSkinColor( I, mixBound_Cr, maxBound_Cr, H, W);
    figure,imshow(S);
    [ SN ] = reduceNoiseOfImage( S, H, W,8);
    figure,imshow(SN);
%end


%function []=detect_face(img)
    img ='./images/img3.jpg';
    img=imread(img);
    minBound_Cr=12;maxBound_Cr=29;maskSize=8;segmentSize=180;
    [grayImg,r,c]=checkAndConvertToGrayImage( img );
    [ I,H, W ]=convertImageIntoDoublePrecision( img );
    [ R,G,B ] = getRGBVector(I);
    [ grayImg ]=im2double(edge(grayImg,'roberts'));
    [ S,Cr ] = selectSkinColor( I, minBound_Cr, maxBound_Cr, H, W, grayImg);
    [ SN ] = reduceNoiseOfImage( S, H, W, maskSize);
    [ SN ]=separateIntoIndividualRegions(SN,segmentSize);
    figure,imshow(SN);
    
%end

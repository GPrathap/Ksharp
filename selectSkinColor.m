function [ S,Cr ] = selectSkinColor( C, minBound_Cr, maxBound_Cr, H, W,grayImg)
    YCbCr=rgb2ycbcr(C);
    Cr=YCbCr(:,:,3);
    S=zeros(H,W);
    [ Cr ]=imadd(Cr,grayImg);
    for i=1:H
        for j=1:W
            if (Cr(i,j)<maxBound_Cr &&  Cr(i,j)>minBound_Cr)
                S(i,j)=1;
        end
    end
end


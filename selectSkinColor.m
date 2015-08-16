function [ S ] = selectSkinColor( C, minBound_Cr, maxBound_Cr, H, W)
    YCbCr=rgb2ycbcr(C);
    Cr=YCbCr(:,:,3);
    Cb=YCbCr(:,:,2);
    S=zeros(H,W);
    
    for i=1:H
        for j=1:W
            if (Cr(i,j)<maxBound_Cr &&  Cr(i,j)>minBound_Cr)
                S(i,j)=1;
        end
    end
%     [SkinIndexRow,SkinIndexCol] =find(mixBound_Cr<Cr & Cr<maxBound_Cr);
%     for i=1:length(SkinIndexRow)
%         S(SkinIndexRow(i),SkinIndexCol(i))=1;
%     end

end


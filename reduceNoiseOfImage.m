function [ SN ] = reduceNoiseOfImage( S, H, W, k)
    SN=zeros(H,W);
    for i=1:H-k
        for j=1:W-k
            localSum=sum(sum(S(i:i+k-1, j:j+k-1)));
            SN(i:i+k, j:j+k)=(localSum>30);
        end
    end

end


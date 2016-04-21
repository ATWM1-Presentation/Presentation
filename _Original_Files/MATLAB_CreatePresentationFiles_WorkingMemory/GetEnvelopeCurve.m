function [ xyMatrix ] = GetEnvelopeCurve(iInnerRadius, iOuterRadius, imSize )

    % decrease from x=iInnerRadius and f(x)=1 to x'=iOuterRadius and f(x') = 0
    % and set f(x={0...iInnerRadius}) = 1

    xyMatrix = [];
    if mod(imSize,2) == 0
        disp('Error! imSize must be an odd number.');
        return;
    end
    
    iInc = 0.1;
    iEnd = ceil(1.5*imSize);
    
    iDeltaDecay = iOuterRadius-iInnerRadius;
    x = [0:iDeltaDecay];  
    
    yDataConstant = ones(1, iInnerRadius);    
    yDataDecay = 1/sqrt(iDeltaDecay) * sqrt(-(1.*x - iDeltaDecay));
    yDataZeros = zeros(1, (iEnd-iOuterRadius));    
    
    yData1Dim = [ yDataConstant yDataDecay yDataZeros ];

    xyMatrix = zeros(imSize);
    
    iRadius = floor(imSize/2);
    
    for x = -iRadius:iRadius
        
        for y = -iRadius:iRadius
        
            xyMatrix(x+iRadius+1,y+iRadius+1) = GetIntensity( sqrt(x^2 + y^2), yData1Dim );
            
        end
    end
    
    %xyMatrix = ones(imSize);
    
    mesh(xyMatrix);
    
end

function zValue = GetIntensity(dbRadius, oneDimDist)

    zValue = oneDimDist(round(dbRadius)+1);

end
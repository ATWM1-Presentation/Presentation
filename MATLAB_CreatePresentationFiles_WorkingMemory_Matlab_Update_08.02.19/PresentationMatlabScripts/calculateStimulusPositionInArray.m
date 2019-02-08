function stimulusCoordinateArray = calculateStimulusPositionInArray(circleParameters, nPositions, positionNo);

    %%% Study: ATWM1

    theta = pi/nPositions + ((positionNo - 1)*((2*pi)/nPositions));

    stimulusCoordinateArray.x = circleParameters.radius*cos(theta) + circleParameters.xCenter;
    stimulusCoordinateArray.y = circleParameters.radius*sin(theta) + circleParameters.yCenter;

end
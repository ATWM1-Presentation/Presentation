function stimulusSpecifications = getStimulusSpecifications(strCond)

    %%% (c) Robert Bittner
    %%% Study: ATWM1
    %%% This function contains the specifications of the stimuli.

    stimulusSpecifications.cueStimulus = 'cueing_circle_b';

    stimulusSpecifications.strCond = strCond;

    stimulusSpecifications.stimulusShape = {
        'bar'
        };

    stimulusSpecifications.angleArray = {
        '000'
        '023'
        '045'
        '068'
        '090'
        '113'
        '135'
        '158'
        };
    stimulusSpecifications.angleArray = sort(stimulusSpecifications.angleArray);

    stimulusSpecifications.stimulusColor = {
        'red' % non-salient targets
        'green' % salient-targets
        };

    %%% The file names of the blue and red stimuli are defined
    for a = 1:length(stimulusSpecifications.angleArray)
        for c = 1:length(stimulusSpecifications.stimulusColor)
            stimulusSpecifications.stimulusArray{c,a} = sprintf('%s_%s_%s', stimulusSpecifications.stimulusShape{1}, stimulusSpecifications.angleArray{a}, stimulusSpecifications.stimulusColor{c});
        end
    end

    stimulusSpecifications.blank = 'blank'; 

    stimulusSpecifications.fixationCross = 'fixation_cross';

end
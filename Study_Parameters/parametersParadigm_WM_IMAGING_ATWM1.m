function parametersParadigm_WM_IMAGING = parametersParadigm_WM_IMAGING_ATWM1()
%%% These are global parameters used for both the MEG and fMRI version of
%%% the paradigm

parametersParadigm_WM_IMAGING.strPermutation    = 'P';

%%% conditions = { 'Salient_Cued', 'Nonsalient_Cued', 'Salient_Uncued', 'Nonsalient_Uncued' };
parametersParadigm_WM_IMAGING.avPermutations    = {
                                                    [ 1 2 3 4 ] % P1
                                                    [ 1 4 3 2 ] % P2
                                                    [ 4 3 2 1 ] % P3
                                                    [ 3 2 1 4 ] % P4
                                                    [ 2 3 4 1 ] % P5
                                                    [ 4 1 2 3 ] % P6
                                                    [ 4 2 1 3 ] % P7
                                                    [ 3 1 2 4 ] % P8
                                                    };
                                                
parametersParadigm_WM_IMAGING.nrOfPermutations = numel(parametersParadigm_WM_IMAGING.avPermutations);

for cp = 1:parametersParadigm_WM_IMAGING.nrOfPermutations
    parametersParadigm_WM_IMAGING.aStrPermutation{cp} = sprintf('%s%i', parametersParadigm_WM_IMAGING.strPermutation, cp);
end

parametersParadigm_WM_IMAGING.aStrResponseButtonConfiguration   = {
                                                                    'LR'
                                                                    'RL'
                                                                    };
parametersParadigm_WM_IMAGING.nrOfResponseButtonConfigurations = numel(parametersParadigm_WM_IMAGING.aStrResponseButtonConfiguration);



for crbc = 1:parametersParadigm_WM_IMAGING.nrOfResponseButtonConfigurations
    for cp = 1:parametersParadigm_WM_IMAGING.nrOfPermutations
        parametersParadigm_WM_IMAGING.aStrParadigmConfig{crbc, cp} = sprintf('%s_%s', parametersParadigm_WM_IMAGING.aStrPermutation{cp}, parametersParadigm_WM_IMAGING.aStrResponseButtonConfiguration{crbc});
    end
end

parametersParadigm_WM_IMAGING.nParadigmConfigs = numel(parametersParadigm_WM_IMAGING.aStrParadigmConfig);


end


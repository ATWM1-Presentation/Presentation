function parametersStudy = parametersStudyATWM1()

parametersStudy.strPrincipalInvestigator            = 'Robert Bittner';

parametersStudy.strMEG                              = 'MEG';
parametersStudy.strMRI                              = 'MRI';
parametersStudy.strPsychophysics                    = 'PSY';
parametersStudy.strImaging                          = 'IMAGING';

parametersStudy.strWorkingMemoryTask                = 'WM';
parametersStudy.strLocalizer                        = 'LOC';
parametersStudy.strPrfMapping                       = 'PRFM';
parametersStudy.strEpi                              = 'EPI';
parametersStudy.strMethodEpiDistortionCorrection    = 'COPE';
parametersStudy.strMethodCoregistration             = 'COREG';

parametersStudy.strFullWorkingMemoryTask            = 'Working_Memory_Task';
parametersStudy.strFullLocalizerTask                = 'Localizer_Task';
parametersStudy.strFullAnatomicalLocalizer          = 'Anatomical_Localizer';


parametersStudy.aStrExpDevice                       = {
                                                        parametersStudy.strMEG
                                                        parametersStudy.strMRI
                                                        };

parametersStudy.aStrParadigm                        =  {
                                                        parametersStudy.strWorkingMemoryTask 
                                                        parametersStudy.strLocalizer 
                                                        };
                                                    
parametersStudy.strWorkingMemoryCapacity            = 'WM_CAP';

parametersStudy.strExperiment                       = 'EXP';
parametersStudy.strCondition                        = 'cond';
parametersStudy.strRun                              = 'run';
parametersStudy.strSession                          = 'session';

parametersStudy.defaultGroupName                 = 'controls';

end





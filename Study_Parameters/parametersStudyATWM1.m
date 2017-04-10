function parametersStudy = parametersStudyATWM1()

parametersStudy.strPrincipalInvestigator            = 'Robert Bittner';

parametersStudy.strMEG                              = 'MEG';
parametersStudy.strMRI                              = 'MRI';
parametersStudy.strPsychophysics                    = 'PSY';
parametersStudy.strImaging                          = 'IMAGING';

parametersStudy.strWorkingMemoryTask                = 'WM';
parametersStudy.strLocalizer                        = 'LOC';
parametersStudy.strPrfMapping                       = 'PRFM';       %Not included in the current study
parametersStudy.strEpi                              = 'EPI';
parametersStudy.strMethodEpiDistortionCorrection    = 'COPE';
parametersStudy.strMethodCoregistration             = 'COREG';

parametersStudy.strMegCoregistration                = strcat(parametersStudy.strMEG, '_', parametersStudy.strMethodCoregistration);


parametersStudy.strFullWorkingMemoryTask            = 'Working_Memory';
parametersStudy.strFullLocalizerTask                = 'Localizer';
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

parametersStudy.defaultGroupName                    = 'controls';

parametersStudy.strParadigm                         = 'PARADIGM';
parametersStudy.strSubjectId                        = 'SUBJECT-ID';
parametersStudy.strPath                             = 'PATH';

end





function parametersStudy = parametersStudyATWM1()

parametersStudy.strPrincipalInvestigator            = 'Robert Bittner';

parametersStudy.strMEG                              = 'MEG';
parametersStudy.strMRI                              = 'MRI';
parametersStudy.strPsychophysics                    = 'PSY';
parametersStudy.strImaging                          = 'IMAGING';

parametersStudy.strWorkingMemoryTask                = 'WM';
parametersStudy.strLocalizer                        = 'LOC';
parametersStudy.strPrfMapping                       = 'PRFM';
parametersStudy.strMethodEpiDistortionCorrection    = 'COPE';
parametersStudy.strMethodCoregistration             = 'COREG';

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


end





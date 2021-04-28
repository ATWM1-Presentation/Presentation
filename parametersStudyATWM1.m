function parametersStudy = parametersStudyATWM1()

global iStudy

parametersStudy.strPrincipalInvestigator            = 'Robert Bittner';

parametersStudy.strMEG                              = 'MEG';
parametersStudy.strMRI                              = 'MRI';
parametersStudy.strPsychophysics                    = 'PSY';
parametersStudy.strImaging                          = 'IMAGING';

parametersStudy.strWorkingMemoryTask                = 'WM';
parametersStudy.strLocalizerTask                    = 'LOC';
parametersStudy.strPrfMapping                       = 'PRFM';       %Not included in the current study
parametersStudy.strEpi                              = 'EPI';
parametersStudy.strMethodEpiDistortionCorrection    = 'COPE';
parametersStudy.strMethodCoregistration             = 'COREG';

parametersStudy.strMegCoregistration                = strcat(parametersStudy.strMEG, '_', parametersStudy.strMethodCoregistration);


parametersStudy.strLogfiles                         = 'LOGFILES';
parametersStudy.strAnalysis                         = 'ANALYSIS';

parametersStudy.strFullWorkingMemoryTask            = 'Working_Memory';
parametersStudy.strFullLocalizerTask                = 'Localizer';
parametersStudy.strFullAnatomicalLocalizer          = 'Anatomical_Localizer';


parametersStudy.aStrExpDevice                       = {
                                                        parametersStudy.strMEG
                                                        parametersStudy.strMRI
                                                        };

parametersStudy.aStrParadigm                        =  {
                                                        parametersStudy.strWorkingMemoryTask 
                                                        parametersStudy.strLocalizerTask 
                                                        };

parametersStudy.aStrParadigmFull                    =  {
                                                        parametersStudy.strFullWorkingMemoryTask 
                                                        parametersStudy.strFullLocalizerTask 
                                                        };
parametersStudy.nrOfParadigms                       = numel(parametersStudy.aStrParadigm);
                                                    
parametersStudy.strWorkingMemoryCapacity            = 'WM_CAP';

parametersStudy.strExperiment                       = 'EXP';
parametersStudy.strCondition                        = 'cond';
parametersStudy.strRun                              = 'run';
parametersStudy.strSession                          = 'session';
parametersStudy.strInstruction                      = 'Instruction';

parametersStudy.defaultGroupName                    = 'controls';

parametersStudy.strParadigm                         = 'PARADIGM';
parametersStudy.strSubjectId                        = 'SUBJECT-ID';
parametersStudy.strPath                             = 'PATH';

parametersStudy.strCowansK                          = 'CowansK';
parametersStudy.strPashlersK                        = 'PashlersK';


%%% Define sub-study
parametersStudy.strBehavioralStudy                  = sprintf('%s_%s', iStudy, parametersStudy.strPsychophysics);
parametersStudy.strImagingStudy                     = sprintf('%s_%s', iStudy, parametersStudy.strImaging);
parametersStudy.aStrStudies                         = {
                                                        parametersStudy.strBehavioralStudy
                                                        parametersStudy.strImagingStudy
                                                        };
%{                                                    
test1 = parametersStudy.aStrStudies
test2 = parametersStudy.strBehavioralStudy
test3 = find(ismember(parametersStudy.aStrStudies, parametersStudy.strBehavioralStudy))


test1 = parametersStudy.aStrStudies
test2 = parametersStudy.strImaging
test3 = find(ismember(parametersStudy.aStrStudies, parametersStudy.strImaging))
                                                    
parametersStudy.indBehavioralStudy                  = find(ismember(parametersStudy.aStrStudies, parametersStudy.strBehavioralStudy))     % Cannot use contains to ensure compatibility with beoserv 
parametersStudy.indImagingStudy                     = find(ismember(parametersStudy.aStrStudies, parametersStudy.strImaging))             % Cannot use contains to ensure compatibility with beoserv
parametersStudy.indDefaultStudy                     = parametersStudy.indImagingStudy;
parametersStudy.strCurrentStudy                     = parametersStudy.aStrStudies{parametersStudy.indDefaultStudy};
                                                        %}
parametersStudy.strCurrentStudy                     = parametersStudy.strImaging;

parametersStudy.bAnalysisForSubProject              = false;

parametersStudy.strSubProjectWorkingMemoryParadigm  = sprintf('%s_%s_%s', iStudy, parametersStudy.strMRI, parametersStudy.strWorkingMemoryTask);
parametersStudy.strSubProjectLocalizerParadigm      = sprintf('%s_%s_%s', iStudy, parametersStudy.strMRI, parametersStudy.strLocalizerTask);
parametersStudy.strSubProjectWorkingMemorySchi      = sprintf('%s_%s_%s_CONT_vs_SCHI', iStudy, parametersStudy.strMRI, parametersStudy.strWorkingMemoryTask);   % MRI_WM_CONT_vs_SCHI
parametersStudy.strSubProjectLocalizerSchi          = sprintf('%s_%s_%s_CONT_vs_SCHI', iStudy, parametersStudy.strMRI, parametersStudy.strLocalizerTask);       % MRI_LOC_CONT_vs_SCHI

parametersStudy.aStrSubProjects                     = {
                                                        parametersStudy.strSubProjectWorkingMemoryParadigm
                                                        parametersStudy.strSubProjectLocalizerParadigm
                                                        parametersStudy.strSubProjectWorkingMemorySchi
                                                        parametersStudy.strSubProjectLocalizerSchi
                                                        };
parametersStudy.indDefaultSubProject                = 1;
parametersStudy.strSubProject                       = parametersStudy.aStrSubProjects{parametersStudy.indDefaultSubProject};


end





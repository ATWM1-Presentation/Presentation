function parametersDialog = parametersDialogATWM1()

parametersDialog.textElements.strFirstName               = 'First name';
parametersDialog.textElements.strFamilyName              = 'Family name';
parametersDialog.textElements.strDateOfBirth             = 'Date of birth';
parametersDialog.textElements.strGroup                   = 'Group';
parametersDialog.textElements.strDateOfStudyEnrollment   = 'Enrollment date';

parametersDialog.textElements.strStudy                   = 'Study';
parametersDialog.textElements.strStudyCode               = 'Study Code';
parametersDialog.textElements.strColorCode               = 'Color Code';
parametersDialog.textElements.strPrincipalInvestigator   = 'Principal Investigator';
parametersDialog.textElements.strSubjectInformation      = 'Subject Information';
parametersDialog.textElements.strSubjectNumber           = 'Subject Number';

parametersDialog.textElements.strOriginalSubjectCode    = 'Original Subject Code';
parametersDialog.textElements.strRepeatSubjectCode      = 'Repeat Subject Code';


parametersDialog.textElements.strSubjectID               = 'Subject ID';
parametersDialog.textElements.strConditionPermutation    = 'Condition permutation';
parametersDialog.textElements.strResponseKeyConfig       = 'Response key configuration';

%%% Strings used for dialogs
parametersDialog.strEmpty                   = '          ';
parametersDialog.strEmptyDouble             = [parametersDialog.strEmpty, parametersDialog.strEmpty];
parametersDialog.strFirstName               = sprintf('%s:                 ', parametersDialog.textElements.strFirstName);
parametersDialog.strFamilyName              = sprintf('%s:                ', parametersDialog.textElements.strFamilyName);
parametersDialog.strDateOfBirth             = sprintf('%s:              ', parametersDialog.textElements.strDateOfBirth);
parametersDialog.strGroup                   = sprintf('%s:                      ', parametersDialog.textElements.strGroup);
parametersDialog.strDateOfStudyEnrollment   = sprintf('%s:            ', parametersDialog.textElements.strDateOfStudyEnrollment);
parametersDialog.strSubjectID               = sprintf('%s:                 ', parametersDialog.textElements.strSubjectID);
parametersDialog.strConditionPermutation    = sprintf('%s:      ', parametersDialog.textElements.strConditionPermutation);
parametersDialog.strResponseKeyConfig       = sprintf('%s: ', parametersDialog.textElements.strResponseKeyConfig);

parametersDialog.strOriginalSubjectCode     = sprintf('%s: ', parametersDialog.textElements.strOriginalSubjectCode);
parametersDialog.strRepeatSubjectCode       = sprintf('%s:  ', parametersDialog.textElements.strRepeatSubjectCode);


end
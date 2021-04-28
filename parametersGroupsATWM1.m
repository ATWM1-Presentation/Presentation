function parametersGroups = parametersGroupsATWM1()

parametersGroups.strGroup                           = 'Group';
parametersGroups.strGroups                          = 'Groups';

parametersGroups.strShortControls                   = 'CONT';

parametersGroups.strShortSchizophrenia              = 'SCHI';
parametersGroups.strShortBipolar                    = 'BIPO';
parametersGroups.strShortAdhd                       = 'ADHD';

parametersGroups.strShortRelativesSchizophrenia     = 'RELS';


parametersGroups.strShortAll                        = 'ALL';



parametersGroups.strControls                        = 'Controls';

parametersGroups.strSchizophrenia                   = 'Schizophrenia';
parametersGroups.strBipolar                         = 'Bipolar Disorder';
parametersGroups.strAdhd                            = 'Attention Deficit Hyperactivity Disorder';

parametersGroups.strRelativesSchizophrenia          = 'Relatives - Schizophrenia';


parametersGroups.strAllSubjects                     = 'All subjects';


parametersGroups.strColorControls                   = 'White';
parametersGroups.strColorSchizophrenia              = 'Red';
parametersGroups.strColorBipolar                    = 'Green';
parametersGroups.strColorAdhd                       = 'Blue';
parametersGroups.strColorRelativesSchizophrenia     = 'Black';


parametersGroups.aStrShortGroups = {
    parametersGroups.strShortControls
    parametersGroups.strShortSchizophrenia             
    parametersGroups.strShortBipolar
    parametersGroups.strShortAdhd
    parametersGroups.strShortRelativesSchizophrenia
    };


parametersGroups.aStrLongGroups = {
    parametersGroups.strControls
    parametersGroups.strSchizophrenia             
    parametersGroups.strBipolar
    parametersGroups.strAdhd
    parametersGroups.strRelativesSchizophrenia
    };

parametersGroups.aStrColorGroups = {
    parametersGroups.strColorControls
    parametersGroups.strColorSchizophrenia
    parametersGroups.strColorBipolar
    parametersGroups.strColorAdhd
    parametersGroups.strColorRelativesSchizophrenia
    };


parametersGroups.nGroups = numel(parametersGroups.aStrLongGroups);

end
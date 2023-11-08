sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'parameters/test/integration/FirstJourney',
		'parameters/test/integration/pages/ValidatinExecParamValuesList',
		'parameters/test/integration/pages/ValidatinExecParamValuesObjectPage'
    ],
    function(JourneyRunner, opaJourney, ValidatinExecParamValuesList, ValidatinExecParamValuesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('parameters') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheValidatinExecParamValuesList: ValidatinExecParamValuesList,
					onTheValidatinExecParamValuesObjectPage: ValidatinExecParamValuesObjectPage
                }
            },
            opaJourney.run
        );
    }
);
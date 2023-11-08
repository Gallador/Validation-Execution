sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'validation/test/integration/FirstJourney',
		'validation/test/integration/pages/ValidationExecutionList',
		'validation/test/integration/pages/ValidationExecutionObjectPage'
    ],
    function(JourneyRunner, opaJourney, ValidationExecutionList, ValidationExecutionObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('validation') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheValidationExecutionList: ValidationExecutionList,
					onTheValidationExecutionObjectPage: ValidationExecutionObjectPage
                }
            },
            opaJourney.run
        );
    }
);
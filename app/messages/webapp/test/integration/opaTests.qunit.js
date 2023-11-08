sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'messages/test/integration/FirstJourney',
		'messages/test/integration/pages/ValidationExecMessagesList',
		'messages/test/integration/pages/ValidationExecMessagesObjectPage'
    ],
    function(JourneyRunner, opaJourney, ValidationExecMessagesList, ValidationExecMessagesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('messages') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheValidationExecMessagesList: ValidationExecMessagesList,
					onTheValidationExecMessagesObjectPage: ValidationExecMessagesObjectPage
                }
            },
            opaJourney.run
        );
    }
);
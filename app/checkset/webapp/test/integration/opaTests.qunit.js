sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'checkset/test/integration/FirstJourney',
		'checkset/test/integration/pages/CheckSetList',
		'checkset/test/integration/pages/CheckSetObjectPage'
    ],
    function(JourneyRunner, opaJourney, CheckSetList, CheckSetObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('checkset') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCheckSetList: CheckSetList,
					onTheCheckSetObjectPage: CheckSetObjectPage
                }
            },
            opaJourney.run
        );
    }
);
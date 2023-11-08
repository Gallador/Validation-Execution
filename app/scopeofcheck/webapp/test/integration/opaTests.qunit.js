sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'scopeofcheck/test/integration/FirstJourney',
		'scopeofcheck/test/integration/pages/ScopeOfCheckList',
		'scopeofcheck/test/integration/pages/ScopeOfCheckObjectPage'
    ],
    function(JourneyRunner, opaJourney, ScopeOfCheckList, ScopeOfCheckObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('scopeofcheck') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheScopeOfCheckList: ScopeOfCheckList,
					onTheScopeOfCheckObjectPage: ScopeOfCheckObjectPage
                }
            },
            opaJourney.run
        );
    }
);
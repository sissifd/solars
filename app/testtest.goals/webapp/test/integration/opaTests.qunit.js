sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'testtest/goals/test/integration/FirstJourney',
		'testtest/goals/test/integration/pages/GoalsList',
		'testtest/goals/test/integration/pages/GoalsObjectPage'
    ],
    function(JourneyRunner, opaJourney, GoalsList, GoalsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('testtest/goals') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGoalsList: GoalsList,
					onTheGoalsObjectPage: GoalsObjectPage
                }
            },
            opaJourney.run
        );
    }
);
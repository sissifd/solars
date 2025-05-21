sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'testtest.goals',
            componentId: 'GoalsObjectPage',
            contextPath: '/Goals'
        },
        CustomPageDefinitions
    );
});
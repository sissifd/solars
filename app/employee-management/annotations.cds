using testtestSrv as service from '../../srv/service';
using from '../annotations';

annotate service.Employees with @(
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'name',
            Target : '@UI.DataPoint#name',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.DataPoint#surname',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.DataPoint#entryDate',
        },
    ],
    UI.FieldGroup #Name : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.DataPoint #name : {
        $Type : 'UI.DataPointType',
        Value : name,
        Title : 'Name',
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Main',
            Label : 'General Information',
            Target : '@UI.FieldGroup#Main',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Goals',
            ID : 'Goals',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Employee Goals',
                    ID : 'EmployeeGoals',
                    Target : 'goals/@UI.LineItem#EmployeeGoals',
                },
            ],
        },
    ],
);

annotate service.Goals with @(
    UI.LineItem #EmployeeGoals : [
        {
            $Type : 'UI.DataField',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Value : startDate,
        },
        {
            $Type : 'UI.DataField',
            Value : endDate,
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#goalAchievement',
            ![@UI.Importance] : #High,
        },
    ],
    UI.DataPoint #goalAchievement : {
        Value : goalAchievement,
        Visualization : #Progress,
        TargetValue : 100,
    },
);

annotate service.Employees with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Employees',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
            ],
            Label : 'Name',
        },
        Common.ValueListWithFixedValues : true
)};


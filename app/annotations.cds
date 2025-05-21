using { testtestSrv } from '../srv/service.cds';

annotate testtestSrv.Employees with @UI.HeaderInfo: { TypeName: 'Employee', TypeNamePlural: 'Employees', Title: { Value: name } };
annotate testtestSrv.Employees with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate testtestSrv.Employees with @UI.Identification: [{ Value: name }];
annotate testtestSrv.Employees with @UI.DataPoint #surname: {
  Value: surname,
  Title: 'Surname',
};
annotate testtestSrv.Employees with @UI.DataPoint #email: {
  Value: email,
  Title: 'Email',
};
annotate testtestSrv.Employees with @UI.DataPoint #entryDate: {
  Value: entryDate,
  Title: 'Entry Date',
};
annotate testtestSrv.Employees with {
  name @title: 'Name';
  surname @title: 'Surname';
  email @title: 'Email';
  entryDate @title: 'Entry Date';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate testtestSrv.Employees with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: name },
 { $Type: 'UI.DataField', Value: surname },
 { $Type: 'UI.DataField', Value: email },
 { $Type: 'UI.DataField', Value: entryDate }
];

annotate testtestSrv.Employees with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: name },
 { $Type: 'UI.DataField', Value: surname },
 { $Type: 'UI.DataField', Value: email },
 { $Type: 'UI.DataField', Value: entryDate },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy }
  ]
};

annotate testtestSrv.Employees with {
  goals @Common.Label: 'Goals';
  reviews @Common.Label: 'Reviews'
};

annotate testtestSrv.Employees with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#surname' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#email' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#entryDate' }
];

annotate testtestSrv.Employees with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate testtestSrv.Employees with @UI.SelectionFields: [
  name
];

annotate testtestSrv.Goals with @UI.HeaderInfo: { TypeName: 'Goal', TypeNamePlural: 'Goals' };
annotate testtestSrv.Goals with {
  employee @Common.ValueList: {
    CollectionPath: 'Employees',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: employee_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'surname'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'email'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'entryDate'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate testtestSrv.Goals with {
  description @title: 'Description';
  startDate @title: 'Start Date';
  endDate @title: 'End Date';
  status @title: 'Status';
  goalAchievement @title: 'Goal Achievement';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate testtestSrv.Goals with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: startDate },
 { $Type: 'UI.DataField', Value: endDate },
 { $Type: 'UI.DataField', Value: status },
 { $Type: 'UI.DataField', Value: goalAchievement },
    { $Type: 'UI.DataField', Label: 'Employee', Value: employee_ID }
];

annotate testtestSrv.Goals with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: startDate },
 { $Type: 'UI.DataField', Value: endDate },
 { $Type: 'UI.DataField', Value: status },
 { $Type: 'UI.DataField', Value: goalAchievement },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy },
    { $Type: 'UI.DataField', Label: 'Employee', Value: employee_ID }
  ]
};

annotate testtestSrv.Goals with {
  employee @Common.Text: { $value: employee.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate testtestSrv.Goals with {
  employee @Common.Label: 'Employee'
};

annotate testtestSrv.Goals with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate testtestSrv.Goals with @UI.SelectionFields: [
  employee_ID
];

annotate testtestSrv.Reviews with @UI.HeaderInfo: { TypeName: 'Review', TypeNamePlural: 'Reviews' };
annotate testtestSrv.Reviews with {
  employee @Common.ValueList: {
    CollectionPath: 'Employees',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: employee_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'surname'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'email'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'entryDate'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate testtestSrv.Reviews with {
  date @title: 'Date';
  comment @title: 'Comment';
  wholeScore @title: 'Whole Score';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate testtestSrv.Reviews with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: date },
 { $Type: 'UI.DataField', Value: comment },
 { $Type: 'UI.DataField', Value: wholeScore },
    { $Type: 'UI.DataField', Label: 'Employee', Value: employee_ID }
];

annotate testtestSrv.Reviews with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: date },
 { $Type: 'UI.DataField', Value: comment },
 { $Type: 'UI.DataField', Value: wholeScore },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy },
    { $Type: 'UI.DataField', Label: 'Employee', Value: employee_ID }
  ]
};

annotate testtestSrv.Reviews with {
  employee @Common.Text: { $value: employee.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate testtestSrv.Reviews with {
  employee @Common.Label: 'Employee'
};

annotate testtestSrv.Reviews with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate testtestSrv.Reviews with @UI.SelectionFields: [
  employee_ID
];


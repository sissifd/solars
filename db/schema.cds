namespace testtest;
using { cuid, managed } from '@sap/cds/common';

@assert.unique: { name: [name] }
entity Employees : cuid, managed {
  name: String(100) @mandatory;
  surname: String(100);
  email: String(100);
  entryDate: Date;
  goals: Association to many Goals on goals.employee = $self;
  reviews: Association to many Reviews on reviews.employee = $self;
}

entity Goals : cuid, managed {
  description: String(500);
  startDate: Date;
  endDate: Date;
  status: String(20);
  goalAchievement: Integer;
  employee: Association to Employees;
}

entity Reviews : cuid, managed {
  date: Date;
  comment: String(500);
  wholeScore: Integer;
  employee: Association to Employees;
}


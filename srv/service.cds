using { testtest as my } from '../db/schema.cds';

@path: '/service/testtest'
@requires: 'authenticated-user'
service testtestSrv {
  @odata.draft.enabled
  entity Employees as projection on my.Employees;
  @odata.draft.enabled
  entity Goals as projection on my.Goals;
  @odata.draft.enabled
  entity Reviews as projection on my.Reviews;

  action question(question: String) returns String;
}
namespace my.validation;

using
{
    managed
}
from '@sap/cds/common';

entity ValidationExecution {
  key ExecutionGUID : UUID;
  SystemID  : Integer;
  Mandt : Integer;
  Status : String enum {
        Done = 'Done';
        InProgress = 'In Progress';
        Planned = 'Planned (Job not started)';
  };
  ExecutionStart : DateTime;
  ExecutionStop : DateTime;
  ExecutedBy : String;
  toCheckSet : Composition of many CheckSet on toCheckSet.toValidationExecution = $self;
}

entity CheckSet {
  key CheckSetGUID : UUID;
  CheckSetID : Integer;
  CheckSetName : String;
  CheckSetDescription : String;
  toValidationExecution : Association to one ValidationExecution;
  toScopeOfCheck : Composition of many ScopeOfCheck on toScopeOfCheck.toCheckSet = $self;
}

entity ScopeOfCheck {
  key ScopeOfCheckGUID : UUID;
  ScopeOfCheckID : Integer;
  ErrorNumber : Integer;
  MessageNumber : Integer;
  toCheckSet : Association to CheckSet;
  toValidationExecParamValues : Composition of many ValidationExecParamValues on toValidationExecParamValues.toScopeOfCheck = $self;
  toValidationExecMessages : Composition of many ValidationExecMessages on toValidationExecMessages.toScopeOfCheck = $self;
}

entity ValidationExecParamValues {
  key ValidationExecParamGUID : UUID;
  ParametrID : Integer;
  Parametr : String;
  ParametrType : String enum {
      Param;
      SO;
  };
  Sign  : String;
  Option  : String;
  Low 	: String;
  High  : String;
  toScopeOfCheck : Association to one ScopeOfCheck;
}

entity ValidationExecMessages {
  key ValidationExecMessagesGUID : UUID;
  MessageID : Integer;
  MessageTest : String;
  toScopeOfCheck : Association to one ScopeOfCheck;
}
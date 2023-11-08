using my.validation as validation from '../db/schema';

service ValidationService {
    entity ValidationExecution as projection on validation.ValidationExecution;
    entity CheckSet as projection on validation.CheckSet;
    entity ScopeOfCheck as projection on validation.ScopeOfCheck;
    entity ValidatinExecParamValues as projection on validation.ValidationExecParamValues;
    entity ValidationExecMessages as projection on validation.ValidationExecMessages;
}
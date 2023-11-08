using ValidationService as service from '../../srv/service';

annotate service.ValidatinExecParamValues with @(
    UI: {
        Identification  : [ {Value: ValidationExecParamGUID} ],
        LineItem  : [ 
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ValidationExecParamGUID}',
                Value : ValidationExecParamGUID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ParametrID}',
                Value : ParametrID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Parametr}',
                Value : Parametr,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>ParametrType}',
                Value : ParametrType,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Sign}',
                Value : Sign,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Option}',
                Value : Option,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Low}',
                Value : Low,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>High}',
                Value : High,
                ![@UI.Importance] : #High
            },
        ],
        FieldGroup #GeneratedGroup1 : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Label :'{i18n>ValidationExecParamGUID}',
                Value : ValidationExecParamGUID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>ParametrID}',
                Value : ParametrID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>Parametr}',
                Value : Parametr,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>ParametrType}',
                Value : ParametrType,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>Sign}',
                Value : Sign,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>Option}',
                Value : Option,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>Low}',
                Value : Low,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>High}',
                Value : High,
                ![@UI.Importance] : #High
            }
            ],
        },
        
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>ValidationExecParam}',
            TypeNamePlural : '{i18n>ValidationExecParamList}',
            Title : {Value: ValidationExecParamGUID},
            Description : {Value: ParametrID}
        },
        Facets  : [
            {
                $Type  : 'UI.CollectionFacet',
                ID     : 'ValidationExecParamDetails',
                Label  : '{i18n>ValidationExecParamDetails}',
                Facets : [{
                    $Type  : 'UI.ReferenceFacet',
                    Label  : '{i18n>ValidationExecParamDetails}',
                    Target : '@UI.FieldGroup#GeneratedGroup1'
                }]
            }
        ]
    }
);
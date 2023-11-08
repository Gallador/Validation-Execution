using ValidationService as service from '../../srv/service';

annotate service.ScopeOfCheck with @(Capabilities: {
    Deletable : true,
    Insertable: true
});

annotate service.ScopeOfCheck with @(
    UI : { 
        Identification  : [{Value: ScopeOfCheckGUID}],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ScopeOfCheckID,
                Label :'{i18n>ScopeOfCheckID}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : ErrorNumber,
                Label :'{i18n>ErrorNumber}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : MessageNumber,
                Label :'{i18n>MessageNumber}',
                ![@UI.Importance] : #High
            }
        ],
        FieldGroup #GeneratedGroup1 : {
            $Type : 'UI.FieldGroupType',
            Data : [
            {
                $Type : 'UI.DataField',
                Label :'{i18n>ScopeOfCheckID}',
                Value : ScopeOfCheckID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>ErrorNumber}',
                Value : ErrorNumber,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>MessageNumber}',
                Value : MessageNumber,
                ![@UI.Importance] : #High
            }
            ],
        },
        
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>ScopeOfCheck}',
            TypeNamePlural : '{i18n>ScopeOfCheckList}',
            Title : {Value: ScopeOfCheckGUID},
            Description : {Value: ScopeOfCheckID}
        },
        Facets  : [
            {
                $Type  : 'UI.CollectionFacet',
                ID     : 'ScopeOfCheckDetails',
                Label  : '{i18n>ScopeOfCheckDetails}',
                Facets : [{
                    $Type  : 'UI.ReferenceFacet',
                    Label  : '{i18n>ScopeOfCheckDetails}',
                    Target : '@UI.FieldGroup#GeneratedGroup1'
                }]
            },
            {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Validation Parameters',
            Target : 'toValidationExecParamValues/@UI.LineItem'
            },
            {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Validation Messages',
            Target : 'toValidationExecMessages/@UI.LineItem'
            }
        ]
    }
);
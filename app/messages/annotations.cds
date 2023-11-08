using ValidationService as service from '../../srv/service';

annotate service.ValidationExecMessages with @(
    UI : { 
        Identification  : [{Value: ValidationExecMessagesGUID}],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ValidationExecMessagesGUID,
                Label :'{i18n>ValidationExecMessagesGUID}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : MessageID,
                Label :'{i18n>MessageID}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : MessageTest,
                Label :'{i18n>MessageTest}',
                ![@UI.Importance] : #High
            }
        ],
        FieldGroup #GeneratedGroup1 : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Label :'{i18n>ValidationExecMessagesGUID}',
                Value : ValidationExecMessagesGUID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>MessageID}',
                Value : MessageID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>MessageTest}',
                Value : MessageTest,
                ![@UI.Importance] : #High
            }
            ],
        },
        
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>ValidationExecMessages}',
            TypeNamePlural : '{i18n>ValidationExecMessagesList}',
            Title : {Value: ValidationExecMessagesGUID},
            Description : {Value: MessageID}
        },
        Facets  : [
            {
                $Type  : 'UI.CollectionFacet',
                ID     : 'ValidationExecMessagesDetails',
                Label  : '{i18n>ScopeOfCheckSetDetails}',
                Facets : [{
                    $Type  : 'UI.ReferenceFacet',
                    Label  : '{i18n>ValidationExecMessagesDetails}',
                    Target : '@UI.FieldGroup#GeneratedGroup1'
                }]
            }
        ]
    }
);
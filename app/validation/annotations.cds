using ValidationService as service from '../../srv/service';

annotate service.ValidationExecution with @odata.draft.enabled;

annotate service.ValidationExecution with @(Capabilities: {
    Deletable : true,
    Insertable: true
});

annotate service.ValidationExecution with @(
    UI : { 
        Identification  : [{Value: ExecutionGUID}],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : ExecutionGUID,
                Label :'{i18n>ValidationExecutionGUID}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : SystemID,
                Label :'{i18n>SystemID}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : Mandt,
                Label :'{i18n>Mandt}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : toCheckSet.CheckSetID,
                Label :'{i18n>CheckSetID}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : toCheckSet.CheckSetDescription,
                Label :'{i18n>CheckSetDescription}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : Status,
                Label :'{i18n>Status}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : ExecutionStart,
                Label :'{i18n>ExecutionStart}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : ExecutionStop,
                Label :'{i18n>ExecutionStop}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : ExecutedBy,
                Label :'{i18n>ExecutedBy}',
                ![@UI.Importance] : #High
            },
        ],
        FieldGroup #GeneratedGroup1 : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Label :'{i18n>ValidationExecutionGUID}',
                Value : ExecutionGUID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>SystemID}',
                Value : SystemID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>Mandt}',
                Value : Mandt,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>CheckSetID}',
                Value : toCheckSet.CheckSetID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>CheckSetDescription}',
                Value : toCheckSet.CheckSetDescription,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>Status}',
                Value : Status,
                ![@UI.Importance] : #High
            }
            ],
        },
        FieldGroup #GeneratedGroup2 : {
            $Type : 'UI.FieldGroupType',
            Data : [
            {
                $Type : 'UI.DataField',
                Label :'{i18n>ExecutionStart}',
                Value : ExecutionStart,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>ExecutionStop}',
                Value : ExecutionStop,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>ExecutedBy}',
                Value : ExecutedBy,
                ![@UI.Importance] : #High
            }
            ]
        },
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>Validation}',
            TypeNamePlural : '{i18n>ValidationExecutionList}',
            Title : {Value: ExecutionGUID},
            Description : {Value: toCheckSet.CheckSetDescription}
        },
        Facets  : [
            {
                $Type  : 'UI.CollectionFacet',
                ID     : 'ValidationDetails',
                Label  : '{i18n>ValidationDetails}',
                Facets : [{
                    $Type  : 'UI.ReferenceFacet',
                    Label  : '{i18n>ValidationDetails}',
                    Target : '@UI.FieldGroup#GeneratedGroup1'
                }]
            },
            {
                $Type  : 'UI.CollectionFacet',
                ID     : 'Admininfo',
                Label  : '{i18n>AdminInfo}',
                Facets : [{
                    $Type  : 'UI.ReferenceFacet',
                    Label  : '{i18n>Admininfo}',
                    Target : '@UI.FieldGroup#GeneratedGroup2'
                }]
            },
            {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Check Set List',
            Target : 'toCheckSet/@UI.LineItem' 
            },
        ]
    }
);
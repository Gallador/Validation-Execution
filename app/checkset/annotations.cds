using ValidationService as service from '../../srv/service';

annotate service.CheckSet with @(Capabilities: {
    Deletable : true,
    Insertable: true
});

annotate service.CheckSet with @(
    UI : { 
        Identification  : [{Value: CheckSetGUID}],
        LineItem  : [
            {
                $Type : 'UI.DataField',
                Value : CheckSetGUID,
                Label :'{i18n>CheckSetGUID}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : CheckSetID,
                Label :'{i18n>CheckSetID}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : CheckSetName,
                Label :'{i18n>CheckSetName}',
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Value : CheckSetDescription,
                Label :'{i18n>CheckSetDescription}',
                ![@UI.Importance] : #High
            }
        ],
        FieldGroup #GeneratedGroup1 : {
            $Type : 'UI.FieldGroupType',
            Data : [
                {
                $Type : 'UI.DataField',
                Label :'{i18n>CheckSetGUID}',
                Value : CheckSetGUID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>CheckSetID}',
                Value : CheckSetID,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>CheckSetName}',
                Value : CheckSetName,
                ![@UI.Importance] : #High
            },
            {
                $Type : 'UI.DataField',
                Label :'{i18n>CheckSetDescription}',
                Value : CheckSetDescription,
                ![@UI.Importance] : #High
            }
            ],
        },
        
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : '{i18n>CheckSet}',
            TypeNamePlural : '{i18n>CheckSetList}',
            Title : {Value: CheckSetGUID},
            Description : {Value: CheckSetName}
        },
        Facets  : [
            {
                $Type  : 'UI.CollectionFacet',
                ID     : 'CheckSetDetails',
                Label  : '{i18n>CheckSetDetails}',
                Facets : [{
                    $Type  : 'UI.ReferenceFacet',
                    Label  : '{i18n>CheckSetDetails}',
                    Target : '@UI.FieldGroup#GeneratedGroup1'
                }]
            },
            {
            $Type  : 'UI.ReferenceFacet',
            Label  : 'Scope of Check',
            Target : 'toScopeOfCheck/@UI.LineItem'
            }
        ]
    }
);
using productShope as service from '../../srv/product.service';
annotate service.Product with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'brand',
                Value : brand,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'category',
                Value : category,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Supplier info',
            ID : 'Supplierinfo',
            Target : '@UI.FieldGroup#Supplierinfo',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Name}',
            Value : name,
            @UI.Importance : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : brand,
            Label : '{i18n>Brand}',
        },
        {
            $Type : 'UI.DataField',
            Value : category,
            Label : '{i18n>Category}',
        },
        {
            $Type : 'UI.DataField',
            Value : supplier.name,
            Label : '{i18n>Name}',
        },
        {
            $Type : 'UI.DataField',
            Value : supplier.phone,
            Label : '{i18n>Phone}',
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
            Criticality : price,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productShope.orderPO',
            Label : 'Order Product',
            Inline : true,
            Criticality : #Positive,
            @UI.Importance : #High,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productShope.fingerprint',
            Label : 'fingerprint',
            Inline : true,
            IconUrl: 'sap-icon://biometric-thumb',
        },
    ],
    UI.SelectionFields : [
        name,
        category,
    ],
    UI.HeaderInfo : {
        TypeName : 'Product Detail',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : supplier.name,
        },
        TypeImageUrl : 'sap-icon://car-rental',
    },
    UI.FieldGroup #Supplierinfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : supplier.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.name,
                Label : 'name',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.phone,
                Label : 'phone',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.city,
                Label : 'city',
            },
        ],
    },
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'productShope.fingerprint',
            Label : 'fingerprint',
            Determining : true,
        },
    ],
    );

annotate service.Product with {
    name @Common.Label : 'name'
};

annotate service.Product with {
    category @Common.Label : 'category'
};


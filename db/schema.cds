namespace sap.cap.productShop;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity products : cuid, managed {
    name     : String;
    brand    : String;
    price    : Integer;
    category : String;
    stock    : Integer;
    supplier : Association to one Supplier;
}

entity Supplier : cuid {
    name     : String;
    city     : String;
    phone    : String;
    products : Association to many products
                   on products.supplier = $self;
}

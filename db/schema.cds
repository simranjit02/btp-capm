namespace sap.cap.productShop;

using
{
    cuid,
    managed,
    temporal
}
from '@sap/cds/common';

entity products : cuid, managed
{
    key name : String;
    brand : String;
    price : Integer;
    category : String;
    supplier : Association to one Supplier;
}

entity Supplier
{
    key ID : Integer;
    name : String;
    city : String;
    phone : String;
    products : Association to many products on products.supplier = $self;
}

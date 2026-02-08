namespace sap.cap.productShop;
entity products {
    key ID       : Integer;
        name     : String;
        brand    : String;
        price    : Integer;
        category : String;
}

entity Supplier {
    key ID    : Integer;
        name  : String;
        city  : String;
        phone : String
}

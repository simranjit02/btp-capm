using {sap.cap.productShop as my} from '../db/schema';

service productShope {
    @odata.draft.enabled
    entity Product  as projection on my.products
        actions {
            action orderPO(
                           @title: 'Stock'
                           stock: Integer);
            action orderProduct(
                                @title: 'Name'
                                name: String,
                                @title: 'Stock'
                                stock: Integer);

            action fingerprint();
        };

    entity Supplier as projection on my.Supplier;

    function myFunc(name: String)   returns String;

    action   myAction(name: String) returns String;
}
// annotate productShope with @(requires: 'productManager')

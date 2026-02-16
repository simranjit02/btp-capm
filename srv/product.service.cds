using { sap.cap.productShop as my } from '../db/schema';
// @protocol: 'rest'
service productShope
{
    entity Product as projection on my.products actions{
        action orderPO (name: String @title:'Name' , stock: Integer @title:'Stock');
        action fingerprint ()
    };
    entity Supplier as projection on my.Supplier;
    function myFunc(name:String) returns String;
    action myAction(name:String) returns String;

}

using { sap.cap.productShop as my } from '../db/schema';
// @protocol: 'rest'
service productShope
{
    entity Product as
        projection on my.products;
    entity Supplier as
        projection on my.Supplier;
    function myFunc(name:String) returns String;
    Action myAction(name:String) returns String;

}

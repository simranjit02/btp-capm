using { sap.cap.productShop as my } from '../db/schema';

service productShope
{
    entity Product as
        projection on my.products;
    entity Supplier as
        projection on my.Supplier;
}

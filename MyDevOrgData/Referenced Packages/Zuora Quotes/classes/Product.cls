/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class Product {
    global List<zqu.ChildProduct> childrenProducts {
        get;
    }
    global String description {
        get;
    }
    global String name {
        get;
    }
    global List<zqu__ZFeature__c> productFeatures {
        get;
    }
    global Id productId {
        get;
    }
    global List<zqu.ProductOptionGroup> productOptionGroups {
        get;
    }
    global List<zqu.ProductRatePlan> productRatePlans {
        get;
    }
    global zqu.Product.ProductType productType {
        get;
    }
    global Id rootProductId {
        get;
        set;
    }
    global Product2 sfdcProduct {
        get;
    }
    global Product() {

    }
    global List<zqu.ChildProduct> loadAllChildrenProducts() {
        return null;
    }
    global static List<zqu.Product> loadAllProducts() {
        return null;
    }
    global List<zqu.ChildProduct> loadChildrenProducts() {
        return null;
    }
    global static zqu.Product loadProduct(Id productId) {
        return null;
    }
    global static List<zqu.Product> loadProductsWithChildren(List<Id> productIds) {
        return null;
    }
    global static List<zqu.Product> loadProducts(List<Id> productIds) {
        return null;
    }
}

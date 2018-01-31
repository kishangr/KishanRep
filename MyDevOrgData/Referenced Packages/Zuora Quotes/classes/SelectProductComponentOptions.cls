/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SelectProductComponentOptions {
    global String addBundleProductsUrl {
        get;
        set;
    }
    global Map<String,String> addProductsPageParams {
        get;
        set;
    }
    global Map<String,String> cancelPageParams {
        get;
        set;
    }
    global String cancelUrl {
        get;
        set;
    }
    global zqu.SelectProductComponentOptions.IFilterPlugin filterPlugin {
        get;
        set;
    }
    global String mode {
        get;
        set;
    }
    global static String MODE_DETAIL;
    global static String MODE_EDIT;
    global static String MODE_INLINE_EDIT;
    global String opportunityId {
        get;
        set;
    }
    global Map<String,String> previousPageParams {
        get;
        set;
    }
    global String previousUrl {
        get;
        set;
    }
    global String productFilterSoqlFragment {
        get;
        set;
    }
    global String productSoqlFragment {
        get;
        set;
    }
    global String quoteId {
        get;
        set;
    }
    global String quoteType {
        get;
        set;
    }
    global String ratePlanFilterSoqlFragment {
        get;
        set;
    }
    global String rateplanSoqlFragment {
        get;
        set;
    }
    global Map<String,String> savePageParams {
        get;
        set;
    }
    global String saveUrl {
        get;
        set;
    }
    global String sfdcAccountId {
        get;
        set;
    }
    global String subTitle {
        get;
        set;
    }
    global String title {
        get;
        set;
    }
    global SelectProductComponentOptions() {

    }
global interface IAddRemoveRatePlanPlugin {
}
global interface IFilterPlugin {
    String getProductSoqlFragment();
    String getRateplanSoqlFragment();
}
global interface IGuidedSellingFlowPlugin {
}
global interface IRatePlanCustomizationPlugin {
}
global interface ISaveRatePlanPlugin {
}
}

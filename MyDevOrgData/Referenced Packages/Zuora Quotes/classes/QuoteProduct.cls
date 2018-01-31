/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class QuoteProduct {
    global zqu.zChargeGroup chargeGroup {
        get;
        set;
    }
    global List<zqu.ChildQuoteProduct> childProducts {
        get;
    }
    global String Id {
        get;
    }
    global List<zqu.QuoteProductGroup> productGroups {
        get;
    }
    global String productName {
        get;
        set;
    }
    global List<zqu.zChargeGroup> ratePlanActions {
        get;
    }
    global List<zqu.zChargeGroup> ratePlanActionsToBeAdded {
        get;
    }
    global List<zqu.zChargeGroup> ratePlanActionsToBeDeleted {
        get;
    }
    global List<zqu.zChargeGroup> ratePlanActionsToBeUpdated {
        get;
    }
    global zqu.QuoteProduct.ProductType type {
        get;
    }
    global virtual List<zqu.zChargeGroup> addRatePlanActions(List<zqu.zChargeGroup> actionsToAdd) {
        return null;
    }
    global virtual List<zqu.zChargeGroup> deleteRatePlanActions(List<zqu.zChargeGroup> actionsToDelete) {
        return null;
    }
    global virtual List<zqu.zChargeGroup> updateRatePlanActions(List<zqu.zChargeGroup> actionsToUpdate) {
        return null;
    }
}

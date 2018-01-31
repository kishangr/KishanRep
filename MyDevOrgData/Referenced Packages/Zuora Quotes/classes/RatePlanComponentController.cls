/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class RatePlanComponentController extends zqu.ListComponentController.ParentController {
    global zqu.zChargeGroup chargeGroup {
        get;
        set;
    }
    global Map<Id,SObject> chargeRecords {
        get;
        set;
    }
    global Boolean resetOptions {
        get;
        set;
    }
global virtual class ParentController {
    global ParentController() {

    }
    global virtual void registerController(zqu.RatePlanComponentController rpcc, String groupID) {

    }
}
global class RatePlanComponentException extends Exception {
}
}

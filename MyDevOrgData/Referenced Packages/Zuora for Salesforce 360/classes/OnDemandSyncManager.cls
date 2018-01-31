/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class OnDemandSyncManager {
    global Boolean emailNotificationEnabled {
        get;
        set;
    }
    global Set<Id> syncObjectIdSet {
        get;
        set;
    }
    global Zuora.OnDemandSyncManager.ObjectType syncObjectType {
        get;
        set;
    }
    global Map<String,String> syncZuoraObjectIdByEntity {
        get;
        set;
    }
    global Set<String> syncZuoraObjectIdSet {
        get;
        set;
    }
    global OnDemandSyncManager() {

    }
    global List<Zuora.SyncResult> sendRequest() {
        return null;
    }
global enum ObjectType {BILLING_ACCOUNT, ZPRODUCT}
global class OnDemandSyncException extends Exception {
}
}

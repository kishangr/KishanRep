/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class AbstractListFilterController {
    global AbstractListFilterController() {

    }
    global abstract Map<String,zqu.ContextObject> getContextObjects();
    global abstract String getLeftObjectName();
    global abstract String getListName();
    global abstract List<zqu.AbstractListFilterController.ListFilterItem> getProtectedFilters();
    global abstract Set<String> getRestrictedFields();
    global virtual String getSoqlFragment(Map<String,String> contextIds) {
        return null;
    }
global class ListFilterItem {
    global String displayedLeftValue {
        get;
        set;
    }
    global Boolean hasError {
        get;
        set;
    }
    global Boolean isProtected {
        get;
        set;
    }
    global String leftFieldSelected {
        get;
        set;
    }
    global String leftFieldValue {
        get;
        set;
    }
    global String leftObjectValue {
        get;
        set;
    }
    global String operatorValue {
        get;
        set;
    }
    global Integer position {
        get;
        set;
    }
    global zqu__List_Filter_Item__c record {
        get;
        set;
    }
    global String rightContextKey {
        get;
        set;
    }
    global String rightFieldSelected {
        get;
        set;
    }
    global String rightFieldValue {
        get;
        set;
    }
    global String rightObjectValue {
        get;
        set;
    }
    global String rightType {
        get;
        set;
    }
    global String segmentId {
        get;
        set;
    }
    global String staticValue {
        get;
        set;
    }
    global ListFilterItem() {

    }
}
}

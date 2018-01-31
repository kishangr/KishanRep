/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class QuickListController {
    global static zqu.JsRemoteController.ListData getAllRecords(String listName, Map<Object,Object> contextIds, String relationshipFieldName, Map<String,List<String>> soqlFragments) {
        return null;
    }
    global static zqu.JsRemoteController.ColumnRefsData getQuickListColumnRefs(String listName) {
        return null;
    }
    global static zqu.JsRemoteController.ObjectListData getQuickListObjects(String listName, Map<Object,Object> contextIds, String relationshipFieldName, List<Map<String,Object>> request, Map<String,List<String>> soqlFragments) {
        return null;
    }
global interface IAllowedRecordPlugin {
}
global interface IFilterPlugin {
}
global interface IHierarchyAllowedRecordPlugin {
}
global interface IPopulatePlugin {
}
global interface IQueryPlugin {
}
global interface ISearchPlugin {
}
global class ListOptionsNotFoundException extends Exception {
}
global class PluginNotFoundException extends Exception {
}
global class PluginRecord {
    global Id recordId;
    global Map<String,List<Id>> relatedObjectIds;
    global PluginRecord() {

    }
}
global class PluginResult {
    global List<zqu.QuickListController.PluginRecord> records;
    global PluginResult() {

    }
}
}

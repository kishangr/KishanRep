/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class RuleRemoteController {
    @RemoteAction
    global static zqu.RuleRemoteController.CalcValDetail getCalcValDetail(Id calcValId) {
        return null;
    }
    @RemoteAction
    global static Map<String,List<Map<String,String>>> getCalculatedValueCache() {
        return null;
    }
    @RemoteAction
    global static Map<String,List<Map<String,String>>> getFilterCache() {
        return null;
    }
    @RemoteAction
    global static zqu.RuleRemoteController.FilterDetail getFilterDetail(Id filterId) {
        return null;
    }
    @RemoteAction
    global static zqu.RuleRemoteController.FieldDescriptions getSchemaFields(String objectName, String dataType) {
        return null;
    }
    @RemoteAction
    global static zqu.RuleRemoteController.RecordSaveResult saveCalcVal(Id calcValId, String calcValName, String objectType, String jsonValue) {
        return null;
    }
    @RemoteAction
    global static zqu.RuleRemoteController.RecordSaveResult saveFilter(Id filterId, String filterName, String objectType, String jsonCondition) {
        return null;
    }
    global static String truncateNameIfEndsWithID(String name) {
        return null;
    }
global class CalcValDetail {
}
global class FieldDescription implements System.Comparable {
    global Integer compareTo(Object compareTo) {
        return null;
    }
}
global class FieldDescriptions {
}
global class FilterDetail {
}
global class RecordSaveResult {
}
}

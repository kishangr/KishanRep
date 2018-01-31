/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CpqSelectProductController {
    @RemoteAction
    global static zqu.CpqSelectProductController.RatePlanChargeReturnObject applyRules(zqu.CpqSelectProductController.ApplyRulesRequestInput requestInput) {
        return null;
    }
    global static zqu.CpqSelectProductController.RatePlanChargeReturnObject applyRules(String quoteId, String existingZChargeGroupJSONString, Boolean includeProductRules, Boolean includePricingRules) {
        return null;
    }
    @RemoteAction
    global static String cloneProducts(zqu.CpqSelectProductController.CloneProductRequest cloneRequest) {
        return null;
    }
    @RemoteAction
    global static String formatDatetime(String datetimeString) {
        return null;
    }
    @RemoteAction
    global static List<String> getAddedFeatureListResult(String selectedIds) {
        return null;
    }
    @RemoteAction
    global static List<String> getProductFeatureListResult(String productId) {
        return null;
    }
    @RemoteAction
    global static List<String> getRatePlanChargeListResult(String quoteId, String quoteType, String ratePlanId) {
        return null;
    }
    @RemoteAction
    global static List<List<String>> getRatePlanChargeListResults(String quoteId, String quoteType, List<String> ratePlanIds) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> getRecordNameById(String objectType, String recordId) {
        return null;
    }
    @RemoteAction
    global static String recalculateRatePlanChargeList(String quoteId, String quoteType, String ratePlanId, String changedField, String valueBeforeUpdate, String zChargeJSONString) {
        return null;
    }
    @RemoteAction
    global static zqu.CpqSelectProductController.SaveJSONResult saveChanges(String quoteId, String quoteType, String updatedDataJSONString, List<String> removedZChargeGroupIds, Map<String,String> undoChargeGroupMap) {
        return null;
    }
    @RemoteAction
    global static Map<String,String> saveCurrentChanges(String quoteId, String quoteType, String updatedDataJSONString, List<String> serializedRemoveProductRequests, Map<String,String> undoChargeGroupMap) {
        return null;
    }
global class ApplyRulesRequestInput {
    global ApplyRulesRequestInput() {

    }
}
global class CloneProductRequest {
    global CloneProductRequest() {

    }
}
global class CloneProductResponse {
    global CloneProductResponse() {

    }
}
global class RatePlanChargeReturnObject {
}
global class SaveJSONResult extends zqu.JsRemoteController.JsRemoteResponse {
    global Map<String,String> saveResult {
        get;
        set;
    }
    global SaveJSONResult() {

    }
}
}

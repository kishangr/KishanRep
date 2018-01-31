/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ProductListViewSyncController {
    @RemoteAction
    global static Boolean checkCPQPermission() {
        return null;
    }
    @RemoteAction
    global static Map<String,Boolean> checkPermissions() {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> createSyncRequest(zqu.ProductListViewSyncController.CreateSyncRequestInput input) {
        return null;
    }
    @RemoteAction
    global static Map<String,zqu.ProductListViewSyncController.JobProgress> getJobProgress(List<String> jobIds) {
        return null;
    }
    @RemoteAction
    global static String getSyncWrappersJSON(List<String> sfdcIds, String sType) {
        return null;
    }
    @RemoteAction
    global static String getSyncWrappers(List<String> sfdcIds, String sType) {
        return null;
    }
    @RemoteAction
    global static String queryZuora(String sType, List<String> zuoraIds, List<String> columns, List<String> sfdcIds) {
        return null;
    }
    @RemoteAction
    global static List<String> remoteSync(List<String> sfdcStringIds, String sType) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> retrieveCatalogSyncHistories(String type, List<String> fields, Map<String,Object> criteria) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> retrieveCharges(String type, List<String> fields, Map<String,Object> criteria) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> retrieveFeatures(String type, List<String> fields, Map<String,Object> criteria) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> retrieveObject(String type, List<String> fields, Map<String,Object> criteria) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> retrieveProductFeatures(String type, List<String> fields, Map<String,Object> criteria) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> retrieveProducts(String type, List<String> fields, Map<String,Object> criteria) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> retrieveRatePlans(String type, List<String> fields, Map<String,Object> criteria) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> retrieveTiers(String type, List<String> fields, Map<String,Object> criteria) {
        return null;
    }
    webService static List<String> singleObjectSync(Id syncObjectId, String sType) {
        return null;
    }
global class CreateSyncRequestInput {
    global List<String> recordIds;
    global String sType;
    global CreateSyncRequestInput() {

    }
}
global class JobProgress {
    global JobProgress() {

    }
}
}

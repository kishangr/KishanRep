/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class RatePlanComponentRemoter {
    @RemoteAction
    global static SObject getChargeRecord(Id chargeId) {
        return null;
    }
    @RemoteAction
    global static zqu.FieldGroup getFieldGroup(Id quoteID, Map<String,String> customFieldLabels) {
        return null;
    }
    @RemoteAction
    global static Map<String,String> onFieldChange(Map<String,String> latestValues, Id quoteId, Id chargeRecordId, String chargeGroupId, String changingField) {
        return null;
    }
    global static zqu.RatePlanComponentRemoter.UpdateResult updateCpqDiscountCharge(Id chargeId, Decimal effectivePrice, Integer upToPeriods, String level, String model) {
        return null;
    }
    global static zqu.RatePlanComponentRemoter.UpdateResult updateDiscountCharge(Id chargeId, Decimal effectivePrice, Integer upToPeriods, String level) {
        return null;
    }
global class UpdateResult {
    global String errorMsg;
    global Boolean success;
    global UpdateResult() {

    }
}
}

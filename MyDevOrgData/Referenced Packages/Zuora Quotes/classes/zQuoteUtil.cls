/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class zQuoteUtil {
    global static zqu.zQuoteUtil.Logger currentLogger;
    global static Boolean isCustomizedTiers {
        get;
        set;
    }
    global static Boolean isFeatureEnabled {
        get;
    }
    global static Boolean jsonDebugMode {
        get;
        set;
    }
    global static List<zqu.zQuoteUtil.Logger> loggers {
        get;
        set;
    }
    global zQuoteUtil() {

    }
    global static zqu.zChargeGroup addChargeGroup(zqu.zChargeGroup chargeGroup) {
        return null;
    }
    global static List<zqu.zChargeGroup> addChargeGroups(List<zqu.zChargeGroup> chargeGroups) {
        return null;
    }
    global static List<zqu.zCharge> calculateChargesOnDiscountChange(List<zqu.zCharge> charges) {
        return null;
    }
    global static List<zqu.zCharge> calculateChargesOnEffectivePriceChange(List<zqu.zCharge> charges) {
        return null;
    }
    global static List<zqu.zCharge> calculateChargesOnQuantityChange(List<zqu.zCharge> charges) {
        return null;
    }
    global static List<zqu.zCharge> calculateChargesOnTotalChange(List<zqu.zCharge> charges) {
        return null;
    }
    global static zqu__Quote__c createCancellationAmendment(Id quoteId) {
        return null;
    }
    global static zqu.zChargeGroup deleteChargeGroup(zqu.zChargeGroup deleteChargeGroup) {
        return null;
    }
    global static List<zqu.zChargeGroup> deleteChargeGroups(List<zqu.zChargeGroup> deleteChargeGroups) {
        return null;
    }
    global static zqu.zChargeGroup getChargeGroup(Id quoteID, Id ratePlanID) {
        return null;
    }
    global static zqu.zChargeGroup getChargeGroup(Id quoteID, Id ratePlanID, Boolean withExpired) {
        return null;
    }
    global static List<zqu.zChargeGroup> getChargeGroups(String quoteID) {
        return null;
    }
    global static List<zqu.zChargeGroup> getChargeGroups(String quoteId, List<Id> ratePlanIdList) {
        return null;
    }
    global static Map<zqu.ZuoraEntityConfiguration,Object> getEntityConfigInformation(String entityId) {
        return null;
    }
    global static ApexPages.StandardSetController getProductSetController(List<Id> productIDs, List<String> fieldNames, Integer pageSize) {
        return null;
    }
    global static List<Id> getRatePlanIds(String productId, String zCurrency, Date zQuoteStartDate) {
        return null;
    }
    global static ApexPages.StandardSetController getRatePlanSetController(List<Id> ratePlanIDs, List<String> fieldNames, Integer pageSize) {
        return null;
    }
    global static List<Id> getZProductIds(String zCurrency, Date zQuoteStartDate) {
        return null;
    }
    global static Map<String,Object> getZuoraConfigInformation() {
        return null;
    }
    global static List<zqu.zQuoteUtil.ZBillingResult> previewQuotes(List<String> quoteIds) {
        return null;
    }
    global static List<zqu.zQuoteUtil.ZBillingResult> previewQuotes(List<String> quoteIds, Integer numOfPeriods) {
        return null;
    }
    global static void recalculatePriceFields(zqu.zCharge zc, SObject sobj, String fieldName, String namespace) {

    }
    global static zqu__Quote__c renewQuote(zqu__Quote__c quote) {
        return null;
    }
    global static List<zqu.zQuoteUtil.ZBillingResult> sendToZBilling(List<zqu.zQuoteUtil.ZBillingQuoteCollection> zBillingQuoteCollections) {
        return null;
    }
    global static Map<String,String> sendToZBilling(String quoteID, String selectedZBillingAccountID, Boolean overrideZContacts, Map<String,String> quoteFields, Map<String,Map<String,String>> chargeFields) {
        return null;
    }
    global static void setSubscriptionTermChanges(Map<String,Map<String,Object>> subscriptionTermChanges) {

    }
    global static zqu.zChargeGroup updateChargeGroup(zqu.zChargeGroup updateChargeGroup) {
        return null;
    }
    global static List<zqu.zChargeGroup> updateChargeGroups(List<zqu.zChargeGroup> updateChargeGroups) {
        return null;
    }
    global static void updateZChargeGroupFromSObject(zqu.zChargeGroup zcg, List<SObject> sobjects, Map<String,List<String>> changedFields, String namespace) {

    }
global class ChargeMetrics {
    global String chargeNumber {
        get;
        set;
    }
    global Decimal deltaMrr {
        get;
        set;
    }
    global Decimal deltaTcv {
        get;
        set;
    }
    global Decimal discount {
        get;
        set;
    }
    global Decimal mrr {
        get;
        set;
    }
    global String originalId {
        get;
        set;
    }
    global String originalRatePlanId {
        get;
        set;
    }
    global String productRatePlanChargeId {
        get;
        set;
    }
    global String productRatePlanId {
        get;
        set;
    }
    global Id sfdcQuoteRatePlanChargeId {
        get;
        set;
    }
    global Decimal subtotal {
        get;
        set;
    }
    global Decimal tax {
        get;
        set;
    }
    global Decimal tcv {
        get;
        set;
    }
    global Decimal total {
        get;
        set;
    }
}
global class Logger {
    global String apiType;
    global String request;
    global String requestTime;
    global String response;
    global String responseTime;
    global override String toString() {
        return null;
    }
}
global class TotalInfo {
    global Decimal discount {
        get;
        set;
    }
    global Decimal subTotal {
        get;
        set;
    }
    global Decimal tax {
        get;
        set;
    }
    global Decimal total {
        get;
        set;
    }
    global Decimal totalWithoutTax {
        get;
        set;
    }
    global TotalInfo() {

    }
}
global class ZBillingQuoteCollection {
    global String entityId {
        get;
        set;
    }
    global List<zqu.zQuoteUtil.ZBillingQuoteRequest> quoteRequests {
        get;
        set;
    }
    global Id sfdcAccountId {
        get;
        set;
    }
    global String zAccountId {
        get;
        set;
    }
    global ZBillingQuoteCollection() {

    }
}
global class ZBillingQuoteRequest {
    global Boolean applyCreditBalance {
        get;
        set;
    }
    global Date effectiveDate {
        get;
        set;
    }
    global Boolean enableAccountAutoPay {
        get;
        set;
    }
    global Boolean generateInvoice {
        get;
        set;
    }
    global String invoiceProcessingOption {
        get;
        set;
    }
    global Decimal paymentAmount {
        get;
        set;
    }
    global String paymentMethodId {
        get;
        set;
    }
    global Boolean processPayment {
        get;
        set;
    }
    global Boolean setNewPaymentAsDefault {
        get;
        set;
    }
    global Id sfdcQuoteId {
        get;
        set;
    }
    global ZBillingQuoteRequest() {

    }
}
global class ZBillingResult {
    global List<zqu.zQuoteUtil.ChargeMetrics> chargeMetrics {
        get;
        set;
    }
    global String message {
        get;
        set;
    }
    global Id sfdcQuoteId {
        get;
        set;
    }
    global Boolean success {
        get;
        set;
    }
    global zqu.zQuoteUtil.TotalInfo totalInfo {
        get;
        set;
    }
    global Decimal totalMrr {
        get;
        set;
    }
    global Decimal totalTcv {
        get;
        set;
    }
    global String zAccountId {
        get;
        set;
    }
    global String zSubscriptionId {
        get;
        set;
    }
    global ZBillingResult() {

    }
}
}

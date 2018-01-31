/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class zApi {
    global static Zuora.zApi.Logger currentLogger;
    global static List<Zuora.zApi.Logger> loggers;
    global zApi() {

    }
    global static Integer getTimeout(String type) {
        return null;
    }
    global static void reloadTimeoutParameters() {

    }
    global virtual System.HttpResponse sendRequest(System.HttpRequest req) {
        return null;
    }
    global void setEndpoint(String endpoint) {

    }
    global virtual Zuora.zApi.AmendResult zamend(List<Zuora.zApi.AmendRequest> amendRequest) {
        return null;
    }
    global List<Zuora.zApi.SaveResult> zcreate(List<Zuora.zObject> zobjects) {
        return null;
    }
    global List<Zuora.zApi.SaveResult> zcreate(List<Zuora.zObject> zobjects, Boolean isCallOptions) {
        return null;
    }
    global List<Zuora.zApi.DeleteResult> zdelete(String ztype, List<String> ids) {
        return null;
    }
    global virtual List<Zuora.zApi.SaveResult> zgenerate(List<Zuora.zObject> zobjects) {
        return null;
    }
    global Zuora.zApi.LoginResult zlogin() {
        return null;
    }
    global virtual Zuora.zApi.LoginResult zlogin(String entityId) {
        return null;
    }
    global Zuora.zApi.LoginResult zlogin(String username, String password) {
        return null;
    }
    global virtual Zuora.zApi.LoginResult zlogin(String username, String password, String entityId) {
        return null;
    }
    global virtual Zuora.zApi.QueryResult zquery(Zuora.zApi.QueryRequest queryRequest) {
        return null;
    }
    global virtual Zuora.zApi.QueryResult zqueryMore(Zuora.zApi.QueryMoreRequest queryMoreRequest) {
        return null;
    }
    global List<Zuora.zObject> zquery(String zoql) {
        return null;
    }
    global List<Zuora.zApi.SubscribeResult> zsubscribe(List<Zuora.zApi.SubscribeRequest> sub_reqs) {
        return null;
    }
    global List<Zuora.zApi.SaveResult> zupdate(List<Zuora.zObject> zobjects) {
        return null;
    }
global class AmendOptions {
    global Boolean generateInvoice;
    global Zuora.zApi.InvoiceProcessingOptions invoiceProcessingOptions;
    global Boolean processPayments;
    global AmendOptions() {

    }
}
global class AmendRequest {
    global List<Zuora.zObject> amendments;
    global Zuora.zApi.AmendOptions amendOptions;
    global Zuora.zApi.PreviewOptions previewOptions;
    global AmendRequest() {

    }
}
global class AmendResult {
    global List<String> amendmentIds;
    global List<Zuora.zObject> ChargeMetricsData;
    global List<Zuora.zObject> errors;
    global List<Zuora.zObject> invoiceDatas;
    global String invoiceId;
    global String paymentTransactionNumber;
    global String SubscriptionId;
    global Boolean success;
    global Decimal totalDeltaMrr;
    global Decimal totalDeltaTcv;
    global AmendResult() {

    }
}
global class DeleteResult {
    global List<Zuora.zObject> errors;
    global String id;
    global Boolean success;
    global DeleteResult() {

    }
}
global class HttpCalloutMockImplementation implements System.HttpCalloutMock {
    global HttpCalloutMockImplementation() {

    }
    global System.HttpResponse respond(System.HttpRequest request) {
        return null;
    }
    global void setMockRestResponseBody(String mockRestResponseBody) {

    }
    global void setMockSoapResponseBody(String mockSoapResponseBody) {

    }
}
global class InvoiceProcessingOptions {
    global String InvoiceDate;
    global String invoiceTargetDate;
    global InvoiceProcessingOptions() {

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
global class LoginResult {
    global String ServerUrl;
    global String Session;
    global LoginResult() {

    }
}
global class PreviewOptions {
    global Boolean EnablePreviewMode;
    global Integer NumberOfPeriods;
    global String PreviewType;
    global PreviewOptions() {

    }
}
global class QueryMoreRequest {
    global String queryLocator;
    global Zuora.zApi.QueryOptions queryOptions;
    global QueryMoreRequest() {

    }
}
global class QueryOptions {
    global Integer batchSize;
    global Boolean caseSensitive;
    global QueryOptions() {

    }
}
global class QueryRequest {
    global Zuora.zApi.QueryOptions queryOptions;
    global String zoql;
    global QueryRequest() {

    }
}
global class QueryResult {
    global Boolean done;
    global String queryLocator;
    global List<Zuora.zObject> records;
    global Integer size;
    global QueryResult() {

    }
}
global class SaveResult {
    global List<Zuora.zObject> Errors;
    global String Id;
    global Boolean Success;
    global SaveResult() {

    }
}
global class SubscribeInvoiceProcessingOptions {
    global String InvoiceDate;
    global String InvoiceProcessingScope;
    global String InvoiceTargetDate;
    global SubscribeInvoiceProcessingOptions() {

    }
}
global class SubscribeOptions {
    global Boolean GenerateInvoice;
    global Boolean ProcessPayments;
    global Zuora.zApi.SubscribeInvoiceProcessingOptions SubscribeInvoiceProcessingOptions;
    global SubscribeOptions() {

    }
}
global class SubscribeRequest {
    global Zuora.zObject BillToContact;
    global Zuora.zObject PaymentMethod;
    global Zuora.zApi.PreviewOptions PreviewOptions;
    global Zuora.zObject SoldToContact;
    global Zuora.zApi.SubscribeOptions SubscribeOptions;
    global Zuora.zApi.SubscriptionData SubscriptionData;
    global Zuora.zObject zAccount;
    global SubscribeRequest() {

    }
}
global class SubscribeResult {
    global String AccountId;
    global String AccountNumber;
    global List<Zuora.zObject> ChargeMetricsData;
    global List<Zuora.zObject> Errors;
    global List<Zuora.zObject> InvoiceDatas;
    global String InvoiceId;
    global String InvoiceNumber;
    global String PaymentTransactionNumber;
    global String SubscriptionId;
    global String SubscriptionNumber;
    global Boolean Success;
    global Decimal totalMrr;
    global Decimal totalTcv;
    global SubscribeResult() {

    }
}
global class SubscriptionData {
    global List<Zuora.zObject> RatePlanData;
    global Zuora.zObject Subscription;
    global SubscriptionData() {

    }
}
}

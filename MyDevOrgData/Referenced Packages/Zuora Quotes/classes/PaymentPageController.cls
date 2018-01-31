/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class PaymentPageController {
    global static String PAYMENT_METHOD_TYPE_ACH;
    global static String PAYMENT_METHOD_TYPE_BACK_TRANSFER;
    global static String PAYMENT_METHOD_TYPE_BANK_TRANSFER;
    global static String PAYMENT_METHOD_TYPE_CREDIT_CARD;
global virtual class DefaultHostedPageLiteDoCancelPlugin implements zqu.PaymentPageController.IHostedPageLiteDoCancelPlugin {
    global DefaultHostedPageLiteDoCancelPlugin() {

    }
    global virtual System.PageReference doCancel(String paymentMethodType) {
        return null;
    }
}
global virtual class DefaultHostedPageLiteGoBackPlugin implements zqu.PaymentPageController.IHostedPageLiteGoBackPlugin {
    global DefaultHostedPageLiteGoBackPlugin() {

    }
    global virtual System.PageReference navigateBack(String paymentMethodType) {
        return null;
    }
}
global virtual class DefaultHostedPageLiteGoNextPlugin implements zqu.PaymentPageController.IHostedPageLiteGoNextPlugin {
    global DefaultHostedPageLiteGoNextPlugin() {

    }
    global virtual System.PageReference navigateNext(String paymentMethodType, Map<String,String> callbackParameters) {
        return null;
    }
}
global virtual class DefaultHostedPageLitePlugin implements zqu.PaymentPageController.IHostedPageLitePlugin {
    global DefaultHostedPageLitePlugin() {

    }
    global virtual Map<String,String> getAdditionalParameters(String paymentMethodType) {
        return null;
    }
}
global interface IHostedPageLiteDoCancelPlugin {
}
global interface IHostedPageLiteGoBackPlugin {
}
global interface IHostedPageLiteGoNextPlugin {
}
global interface IHostedPageLitePlugin {
}
}

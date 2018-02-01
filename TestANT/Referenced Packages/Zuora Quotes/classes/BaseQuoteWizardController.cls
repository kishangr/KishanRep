/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class BaseQuoteWizardController {
    global Id quoteId {
        get;
        set;
    }
    global zqu__Quote__c thisQuote {
        get;
        set;
    }
    global BaseQuoteWizardController(ApexPages.StandardController StandardController) {

    }
    global System.PageReference cancel() {
        return null;
    }
    global System.PageReference navigateBack() {
        return null;
    }
    global System.PageReference navigateNext() {
        return null;
    }
    global virtual Map<String,String> processBackAction() {
        return null;
    }
    global virtual String processCancelAction() {
        return null;
    }
    global virtual Map<String,String> processNextAction() {
        return null;
    }
}

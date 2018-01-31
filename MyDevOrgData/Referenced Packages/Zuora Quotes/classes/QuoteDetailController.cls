/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class QuoteDetailController extends zqu.PropertyComponentController.ParentController {
global virtual class CancelRecordPlugin implements zqu.PropertyComponentController.ICancelPlugin {
    global CancelRecordPlugin() {

    }
    global virtual System.PageReference doCancel(SObject record, zqu.PropertyComponentController.ParentController pcc) {
        return null;
    }
}
global virtual class PopulateValuePlugin implements zqu.PropertyComponentController.IPopulateValuePlugin {
    global PopulateValuePlugin() {

    }
    global virtual void populateDefaultFieldValue(SObject record, zqu.PropertyComponentController.ParentController parentController) {

    }
}
global virtual class UpdateRecordPlugin implements zqu.PropertyComponentController.IUpdatePlugin {
    global UpdateRecordPlugin() {

    }
    global virtual System.PageReference doUpdate(SObject record, zqu.PropertyComponentController.ParentController pcc) {
        return null;
    }
}
}

/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CancellationPropertyController extends zqu.PropertyComponentController.ParentController {
global virtual class CancelRecordPlugin implements zqu.PropertyComponentController.ICancelPlugin {
    global CancelRecordPlugin() {

    }
    global virtual System.PageReference doCancel(SObject Record, zqu.PropertyComponentController.ParentController pcc) {
        return null;
    }
}
global virtual class GoBackPlugin implements zqu.PropertyComponentController.IGoBackPlugin {
    global GoBackPlugin() {

    }
    global virtual System.PageReference goBack(SObject Record, zqu.PropertyComponentController.ParentController pcc) {
        return null;
    }
}
global virtual class PopulateDefaultFieldValuePlugin implements zqu.PropertyComponentController.IPopulateValuePlugin {
    global PopulateDefaultFieldValuePlugin() {

    }
    global virtual void populateDefaultFieldValue(SObject Record, zqu.PropertyComponentController.ParentController pcc) {

    }
}
global virtual class PopulateRelatedObjectFieldPlugin implements zqu.PropertyComponentController.IRelatedObjectPlugin {
    global PopulateRelatedObjectFieldPlugin() {

    }
    global virtual Map<String,SObject> getRelatedObject(zqu.PropertyComponentController.ParentController pcc) {
        return null;
    }
}
global virtual class UpdateRecordPlugin implements zqu.PropertyComponentController.IUpdatePlugin {
    global UpdateRecordPlugin() {

    }
    global virtual System.PageReference doUpdate(SObject Record, zqu.PropertyComponentController.ParentController pcc) {
        return null;
    }
}
}

/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class PropertyComponentController {
global interface ICancelPlugin {
}
global interface IGoBackPlugin {
}
global interface IPopulateValueAndLookupPlugin extends zqu.PropertyComponentController.IPopulateValuePlugin {
}
global interface IPopulateValuePlugin {
}
global interface IRelatedObjectPlugin {
}
global interface IUpdatePlugin {
}
global virtual class ParentController {
    global ParentController() {

    }
    global virtual void registerController(zqu.PropertyComponentController pcc, String instanceName) {

    }
}
global class PropertyComponentPluginException extends Exception {
}
}

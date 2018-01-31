/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ViewConfigurationManager {
    global static String VIEW_CONFIGURATION_VIEW_TYPE_COMPARE;
    global static String VIEW_CONFIGURATION_VIEW_TYPE_CREATE;
    global static String VIEW_CONFIGURATION_VIEW_TYPE_DETAIL;
    global static String VIEW_CONFIGURATION_VIEW_TYPE_EDIT;
    global static String VIEW_CONFIGURATION_VIEW_TYPE_LOOKUP;
    global static String VIEW_CONFIGURATION_VIEW_TYPE_PREVIEW;
    global ViewConfigurationManager() {

    }
global interface IViewPlugin {
    Schema.SObjectType getSObjectType();
    Map<String,String> getViewTypes();
}
}

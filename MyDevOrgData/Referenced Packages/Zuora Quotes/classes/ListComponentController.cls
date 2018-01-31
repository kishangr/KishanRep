/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ListComponentController {
    global Integer currPage {
        get;
    }
    global Integer goToPage {
        get;
        set;
    }
    global Boolean hasChanges {
        get;
        set;
    }
    global Boolean hasNext {
        get;
    }
    global Boolean hasPages {
        get;
    }
    global Boolean hasPreBuiltData {
        get;
    }
    global Boolean hasPrevious {
        get;
    }
    global Boolean isNewData {
        get;
    }
    global Integer numPages {
        get;
    }
    global Integer numRecords {
        get;
    }
    global Boolean resetOptions {
        get;
        set;
    }
    global String searchStr {
        get;
        set;
    }
    global System.PageReference clearResults() {
        return null;
    }
    global System.PageReference first() {
        return null;
    }
    global System.PageReference jumpToPage() {
        return null;
    }
    global System.PageReference last() {
        return null;
    }
    global System.PageReference next() {
        return null;
    }
    global System.PageReference previous() {
        return null;
    }
    global System.PageReference processSearch() {
        return null;
    }
    global System.PageReference processSelection() {
        return null;
    }
    global System.PageReference processUpdate() {
        return null;
    }
global interface IExceptionPlugin {
}
global interface IPostUpdatePlugin {
}
global interface IQueryPlugin {
}
global interface ISelectionPlugin {
}
global interface IUpdatePlugin {
}
global class ListComponentException extends Exception {
}
global class ListComponentPluginException extends Exception {
}
global virtual class ParentController {
    global ParentController() {

    }
    global virtual void registerController(zqu.ListComponentController lcc, String instanceName) {

    }
}
}

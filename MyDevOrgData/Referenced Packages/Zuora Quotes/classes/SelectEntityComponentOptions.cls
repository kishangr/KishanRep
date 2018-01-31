/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SelectEntityComponentOptions {
    global String crmAccountId {
        get;
        set;
    }
    global Id defaultEntityId {
        get;
        set;
    }
    global List<String> displayFields {
        get;
        set;
    }
    global List<Id> entityOptions {
        get;
        set;
    }
    global String oppId {
        get;
        set;
    }
    global Boolean submitOnlyOption {
        get;
        set;
    }
    global String subtitle {
        get;
        set;
    }
    global String title {
        get;
        set;
    }
    global SelectEntityComponentOptions(String accId, String oppId) {

    }
global interface ISelectEntityPlugin {
}
global class SelectEntityPluginResponse {
    global Boolean autoSubmit;
    global Id selectedId;
    global SelectEntityPluginResponse() {

    }
}
}

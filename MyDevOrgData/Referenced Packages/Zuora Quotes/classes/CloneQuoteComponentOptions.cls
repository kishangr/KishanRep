/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CloneQuoteComponentOptions {
    global String nextPageUrl {
        get;
        set;
    }
    global String originalQuoteId {
        get;
        set;
    }
    global Boolean shouldCloneProducts {
        get;
        set;
    }
    global Boolean shouldMaintainQuote {
        get;
        set;
    }
    global CloneQuoteComponentOptions() {

    }
global class CloneQuotePlugin implements zqu.CloneQuoteComponentOptions.ICloneQuotePlugin {
    global CloneQuotePlugin() {

    }
    global void populateCloneQuoteConfiguration(zqu.CloneQuoteComponentOptions options) {

    }
}
global interface ICloneQuotePlugin {
}
}

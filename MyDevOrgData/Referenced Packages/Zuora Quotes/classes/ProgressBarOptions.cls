/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ProgressBarOptions {
    global List<zqu.ProgressBarOptions.ProgressBarItem> barItems {
        get;
        set;
    }
    global static Integer NUMBER_IMG_PIXEL_HEIGHT;
    global static Integer NUMBER_IMG_PIXEL_WIDTH;
    global ProgressBarOptions() {

    }
global class ProgressBarItem implements System.Comparable {
    global String id {
        get;
    }
    global Integer index {
        get;
        set;
    }
    global Boolean isCurrentStep {
        get;
        set;
    }
    global String label {
        get;
    }
    global String textStyleClass {
        get;
        set;
    }
    global Integer x {
        get;
    }
    global Integer y {
        get;
    }
    global ProgressBarItem(String id, String label) {

    }
    global Integer compareTo(Object compareTo) {
        return null;
    }
}
}

/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ButtonBarOptions {
    global String barStyleClass {
        get;
        set;
    }
    global List<zqu.ButtonBarOptions.ButtonBarItem> buttonItems {
        get;
        set;
    }
    global ButtonBarOptions() {

    }
global class ButtonBarItem extends zqu.Item {
    global zqu.MenuButtonOptions menuButtonOptions {
        get;
    }
    global zqu.MuttonOptions muttonOptions {
        get;
    }
    global String onclickAction {
        get;
        set;
    }
    global String styleClass {
        get;
        set;
    }
    global ButtonBarItem(String id, String label) {

    }
    global ButtonBarItem(String id, zqu.MenuButtonOptions menuButtonOptions) {

    }
    global ButtonBarItem(String id, zqu.MuttonOptions muttonOptions) {

    }
}
}

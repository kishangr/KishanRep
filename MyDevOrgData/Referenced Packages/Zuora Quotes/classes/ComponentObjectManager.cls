/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ComponentObjectManager {
    global ComponentObjectManager() {

    }
global interface IComponentRegistration {
    String getComponentName();
    String getComponentType();
    String getDescription();
    List<zqu.ComponentObjectManager.IPluginRegistration> getPlugins();
    Boolean isProtected();
}
global interface IPluginRegistration {
    Boolean canBeExtended();
    String getClassName();
    String getDescription();
    String getInterfaceName();
    String getPluginType();
    Boolean hasDefaultValue();
}
}

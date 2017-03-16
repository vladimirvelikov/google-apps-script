package google.apps.script;

@:require(google_apps_script)
@:native("Permission")
extern class Permission {
    static var VIEW:Permission;
    static var EDIT:Permission;
    static var COMMENT:Permission;
    static var OWNER:Permission;
    static var NONE:Permission;
}
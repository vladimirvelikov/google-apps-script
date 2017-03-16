package google.apps.script;


@:require(google_apps_script)
@:native("Access")
extern class Access {
    static var ANYONE:Access;
    static var ANYONE_WITH_LINK:Access;
    static var DOMAIN:Access;
    static var DOMAIN_WITH_LINK:Access;
    static var PRIVATE:Access;
}

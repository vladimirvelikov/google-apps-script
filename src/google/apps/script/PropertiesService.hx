package google.apps.script;

@:require(google_apps_script)
@:native("PropertiesService")
extern class PropertiesService {
	static function getDocumentProperties():Properties;
	static function getScriptProperties():Properties;
	static function getUserProperties():Properties;
	
}

@:require(google_apps_script)
@:native("Properties")
extern class Properties {
	function deleteAllProperties():Properties;
	function deleteProperty(key:String):Properties;
	function getKeys():Array<String>;
	function getProperties():Dynamic;
	function getProperty(key:String):String;
	@:overload(function(properties:Dynamic, deleteAllOthers:Bool):Properties{})
	function setProperties(properties:Dynamic):Properties;
	
	function setProperty(key:String, value:String):Properties;
}
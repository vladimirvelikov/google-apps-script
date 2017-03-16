package google.apps.script;
import google.apps.script.DocumentApp.Document;
import google.apps.script.Forms.Form;
import google.apps.script.Script.SpreadsheetTriggerBuilder;


@:require(google_apps_script)
@:native("TriggerBuilder")
extern class TriggerBuilder {
	@:overload(function(document:Document):DocumentTriggerBuilder{});
	function forDocument(key:String):DocumentTriggerBuilder;
	
	@:overload(function(form:Form):FormTriggerBuilder{});
	function forForm(key:String):FormTriggerBuilder;	
	
	@:overload function forSpreadsheet(sheet:Spreadsheet):SpreadsheetTriggerBuilder{});
	function forSpreadsheet(key:String):SpreadsheetTriggerBuilder;
	
	function timeBased():ClockTriggerBuilder
}

@:require(google_apps_script)
@:native("ClockTriggerBuilder")
extern class ClockTriggerBuilder extends TriggerBuilder{
	function after(durationMilliseconds:Int):ClockTriggerBuilder;
	function at(date:Date):ClockTriggerBuilder;
	function atDate(year:Int, month:Int, day:Int):ClockTriggerBuilder;
	function atHour(hour:Int):ClockTriggerBuilder;
	function create():Trigger;
	function everyDays(n:Int):ClockTriggerBuilder;
	function everyHours(n:Int):ClockTriggerBuilder;
	function everyMinutes(n:Int):ClockTriggerBuilder;
	function everyWeeks(n:Int):ClockTriggerBuilder;
	function inTimezone(timezone:String):ClockTriggerBuilder;
	function nearMinute(minute:Int):ClockTriggerBuilder;
	function onMonthDay(day:Int):ClockTriggerBuilder
	function onWeekDay(day:Int):ClockTriggerBuilder;
}

@:require(google_apps_script)
@:native("DocumentTriggerBuilder")
extern class DocumentTriggerBuilder extends TriggerBuilder{
	function create():Trigger;
	function onOpen():DocumentTriggerBuilder;
}

@:require(google_apps_script)
@:native("FomrTriggerBuilder")
extern class FormTriggerBuilder extends TriggerBuilder{
	function create():Trigger;
	function onFormSubmit():FormTriggerBuilder;
	function onOpen():FormTriggerBuilder;
}


@:require(google_apps_script)
@:native("Trigger")
extern class Trigger {
	function getEventType():EventType;
	function getHandlerFunction():String;
	function getTriggerSource():TriggerSource;
	function getTriggerSourceId():String;
	function getUniqueId():String;
}

@:require(google_apps_script)
@:native("TriggerSource")
@:enum abstract TriggerSource(String) from String to String {
	var SPREADSHEETS = "SPREADSHEETS";
	var CLOCK = "CLOCK";
	var FORMS = "FORMS";
	var DOCUMENTS = "DOCUMENTS";
}

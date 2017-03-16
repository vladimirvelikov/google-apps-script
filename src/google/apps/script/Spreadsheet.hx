package google.apps.script;

import google.apps.script.Charts;
import google.apps.script.Forms;
import google.apps.script.Spreadsheet.Range;
import google.apps.script.SpreadsheetApp.BorderStyle;
import google.apps.script.SpreadsheetApp.DataValidation;


@:require(google_apps_script)
@:native("Range")
extern class Range {
	function activate():Range;
	function breakApart():Range;
	function canEdit():Bool;
	@:overload(function(options:Dynamic):Range{})
	function clear():Range;
	function clearContent():Range;
	function clearDataValidations():Range;
	function clearFormat():Range;
	function clearNote():Range;
	@:overload(function(sheet:Int, column:Int, columnEnd:Int, row:Int, rowEnd:Int):Void{})
	function copyFormatToRange(gridId:Int, column:Int, columnEnd:Int, row:Int, rowEnd:Int):Void;
	@:overload(function(destination:Range, options:Dynamic):Void{})
	function copyTo(destination:Range):Void;
	@:overload(function(sheet:Sheet, column:Int, columnEnd:Int, row:Int, rowEnd:Int):Void{})
	function copyValuesToRange(gridId:Int, column:Int, columnEnd:Int, row:Int, rowEnd:Int):Void;
	function getA1Notation():String;
	function getBackground():String;
	function getBackgrounds():Array<Array<String>>;
	function getCell(row:Int, column:Int):Range;
	function getColumn():Int;
	function getDataSourceUrl():String;
	@:overload(function(firstRowIsHeader:Bool):DataTable{})
	function getDataTable():DataTable;
	function getDataValidation():DataValidation;
	function getDataValidations():Array<Array<DataValidation>>;
	function getDisplayValue():String;
	function getDisplayValues():Array<Array<String>>;
	function getFontColor():String;
	function getFontColors():Array<Array<String>>;
	function getFontFamilies():Array<Array<String>>;
	function getFontFamily():String;
	function getFontLine():String;
	function getFontLines():Array<Array<String>>;
	function getFontSize():Int;
	function getFontSizes():Array<Array<Int>>;
	function getFontStyle():String;
	function getFontStyles():Array<Array<String>>;
	function getFontWeight():String;
	function getFontWeights():Array<Array<String>>;
	function getFormula():String;
	function getFormulaR1C1():String;
	function getFormulas():Array<Array<String>>;
	function getFormulasR1C1():Array<Array<String>>;
	function getGridId():Int;
	function getHeight():Int;
	function getHorizontalAlignment():String;
	function getHorizontalAlignments():Array<Array<String>>;
	function getLastColumn():Int;
	function getLastRow():Int;
	function getMergedRanges():Array<Range>;
	function getNote():String;
	function getNotes():Array<Array<String>>;
	function getNumColumns():Int;
	function getNumRows():Int;
	function getNumberFormat():String;
	function getNumberFormats():Array<Array<String>>;
	function getRow():Int;
	function getRowIndex():Int;
	function getSheet():Sheet;
	function getValue():Dynamic;
	function getValues():Array<Array<Dynamic>>;
	function getVerticalAlignment():String;
	function getVerticalAlignments():Array<Array<String>>;
	function getWidth():Int;
	function getWrap():Bool;
	function getWraps():Array<Array<Bool>>;
	function isBlank():Bool;
	function isEndColumnBounded():Bool;
	function isEndRowBounded():Bool;
	function isPartOfMerge():Bool;
	function isStartColumnBounded():Bool;
	function isStartRowBounded():Bool;
	function merge():Range;
	function mergeAcross():Range;
	function mergeVertically():Range;
	function moveTo(target:Range):Void;
	@:overload(function(rowOffset:Int, columnOffset:Int, numRows:Int):Range { } )
	@:overload(function(rowOffset:Int, columnOffset:Int, numRows:Int, numColumns:Int):Range{})
	function offset(rowOffset:Int, columnOffset:Int):Range;
	function protect():Protection;
	function setBackground(color:String):Range;
	function setBackgroundRGB(red:Int, green:Int, blue:Int):Range;
	function setBackgrounds(color:Array<Array<String>>):Range;
	@:overload(function(top:Bool, left:Bool, bottom:Bool, right:Bool, vertical:Bool, horizontal:Bool, color:String, style:BorderStyle):Range { } )
	function setBorder(top:Bool, left:Bool, bottom:Bool, right:Bool, vertical:Bool, horizontal:Bool):Range;
	function setDataValidation(rule:DataValidation):Range;
	function setDataValidations(rules:Array<Array<DataValidation>>):Range;
	function setFontColor(color:String):Range;
	function setFontColors(colors:Array<Array<String>>):Range;
	function setFontFamilies(fontFamilies:Array<Array<String>>):Range;
	function setFontFamily(fontFamily:String):Range;
	function setFontLine(fontLine:String):Range;
	function setFontLines(fontLines:Array<Array<String>>):Range;
	function setFontSize(size:Int):Range;
	function setFontSizes(sizes:Array<Array<Int>>):Range;
	function setFontStyle(fontStyle:String):Range;
	function setFontStyles(fontStyles:Array<Array<String>>):Range;
	function setFontWeight(fontWeight:String):Range;
	function setFontWeights(fontWeights:Array<Array<String>>):Range;
	function setFormula(formula:String):Range;
	function setFormulaR1C1(formula:String):Range;
	function setFormulas(formulas:Array<Array<String>>):Range;
	function setFormulasR1C1(formulas:Array<Array<String>>):Range;
	function setHorizontalAlignment(alignment:String):Range;
	function setHorizontalAlignments(alignments:Array<Array<String>>):Range;
	function setNote(note:String):Range;
	function setNotes(notes:Array<Array<String>>):Range;
	function setNumberFormat(numberFormat:String):Range;
	function setNumberFormats(numberFormats:Array<Array<String>>):Range;
	function setValue(value:Dynamic):Range;
	function setValues(values:Array<Array<Dynamic>>):Range;
	function setVerticalAlignment(alignment:String):Range;
	function setVerticalAlignments(alignments:Array<Array<String>>):Range;
	function setWrap(isWrapEnabled:Bool):Range;
	function setWraps(isWrapEnabled:Array<Array<Bool>>):Range;
	function sort(sortSpecObj:Dynamic):Range;
}

@:require(google_apps_script)
typedef PageProtection = Dynamic;

@:require(google_apps_script)
typedef DataTable = Dynamic;


@:require(google_apps_script)
typedef NamedRange = Dynamic;


@:require(google_apps_script)
@:native("Protection")
extern class Protection {
	@:overload(function(user:User):Protection{})
	function addEditor(emailAddress:String):Protection;
	function addEditors(emailAddresses:Array<String>):Protection;
	function canDomainEdit():Bool;
	function canEdit():Bool;
	function getDescription():String;
	function getEditors():Array<User>;
	function getProtectionType():SpreadsheetApp.ProtectionType;
	function getRange():Range;
	function getRangeName():String;
	function getUnprotectedRanges():Array<Range>;
	function isWarningOnly():Bool;
	function remove():Void;
	@:overload(function(user:User):Protection{})
	function removeEditor(emailAddress:String):Protection;
	function removeEditors(emailAddresses:Array<String>):Protection;
	function setDescription(description:String):Protection;
	function setDomainEdit(editable:Bool):Protection;
	function setNamedRange(namedRange:NamedRange):Protection;
	function setRange(range:Range):Protection;
	function setRangeName(rangeName:String):Protection;
	function setUnprotectedRanges(ranges:Array<Range>):Protection;
	function setWarningOnly(warningOnly:Bool):Protection;
}


@:require(google_apps_script)
@:native("Sheet")
extern class Sheet {
	function activate() : Sheet;
	function appendRow( rowContents : Array<Dynamic> ) : Sheet;
	function autoResizeColumn( columnPosition : Int ) : Sheet;
	function clear() : Sheet;
	function clearContents() : Sheet;
	function clearFormats() : Sheet;
	function clearNotes() : Sheet;
	function copyTo( spreadsheet : Spreadsheet ) : Sheet;
	function deleteColumn( columnPosition : Int ) : Sheet;
	function deleteColumns( columnPosition : Int, howMany : Int  ) : Sheet;
	function deleteRow( rowPosition : Int ) : Sheet;
	function deleteRows( rowPosition : Int, howMany : Int  ) : Sheet;
	function getActiveCell() : Range;
	function getActiveRange() : Range;
	function getCharts() : Array<EmbeddedChart>;
	function getColumnWidth( columnPosition : Int ) : Int;
	function getDataRange() : Range;
	function getFrozenColumns() : Int;
	function getFrozenRows() : Int;
	function getIndex() : Int;
	function getLastColumn() : Int;
	function getLastRow() : Int;
	function getMaxColumns() : Int;
	function getMaxRows() : Int;
	function getName() : String;
	function getParent() : Spreadsheet;
	@:overload(function(a1Notation:String):Range{})
	function getRange( row : Int, column : Int, ?numRows : Int, ?numColumns : Int ) : Range;
	function getRowHeight( rowPosition : Int ) : Int;
	function getSheetId() : Int;
	function getSheetName() : String;
	function getSheetProtection() : PageProtection;
	function getSheetValues( startRow : Int, startColumn : Int, numRows : Int, numColumns : Int ) : Array<Array<Dynamic>>;
	function hideColumn( column : Range ) : Void;
	function hideColumns( columnIndex : Int, ?numColumns : Int ) : Void;
	function hideRow( row : Range ) : Void;
	function hideRows( rowIndex : Int, ?numRows : Int ) : Void;
	function hideSheet( rowIndex : Int, ?numRows : Int ) : Sheet;
	function insertChart( chart : EmbeddedChart ) : Void;
	function insertColumnAfter( afterPosition : Int ) : Sheet;
	function insertColumns( columnIndex : Int ) : Sheet;
	function insertColumnBefore( beforePosition : Int ) : Sheet;
	function insertColumnsAfter( afterPosition : Int, howMany : Int ) : Sheet;
	function insertColumnsBefore( beforePosition : Int, howMany : Int ) : Sheet;
	@:overload(function(url:String,column:Int,row:Int,offsetX:Int,offsetY:Int):Sheet{})
	function insertImage( url : String, column : Int, row : Int ) : Sheet;
	function insertRowBefore( beforePosition : Int ) : Sheet;
	function insertRows( rowIndex : Int, ?numRows : Int ) : Sheet;
	function insertRowsAfter( afterPosition : Int, howMany : Int ) : Sheet;
	function insertRowsBefore( beforePosition : Int, howMany : Int ) : Sheet;
	function isSheetHidden() : Bool;
	function newChart() : EmbeddedChartBuilder;
	function removeChart( chart : EmbeddedChart ) : EmbeddedChartBuilder;
	function setActiveRange( range : Range ) : Range;
	@:overload(function(a1Notation:String):Range{})
	function setActiveSelection( range : Range ) : Range;
	function setColumnWidth( columnPosition : Int, width : Int ) : Sheet;
	function setFrozenRows( rows : Int ) : Sheet;
	function setName( name : String ) : Sheet;
	function setColumnHeight( rowPosition : Int, height : Int ) : Sheet;
	function setSheetProtection( permissions : PageProtection ) : Sheet;
	function showColumns( columnIndex : Int, numColumns : Int ) : Sheet;
	function showRows( rowIndex : Int,?numRows : Int ) : Sheet;
	function showSheet() : Sheet;
	function sort( columnPosition : Int, ?ascending : Bool ) : Sheet;
	function unhideColumn( column : Range ) : Sheet;
	function unhideRow( row : Range ) : Sheet;
	function updateChart( chart : EmbeddedChart ) : Sheet;
}

@:require(google_apps_script)
@:native("EmbeddedChart")
extern class EmbeddedChart {
	function getAs( contentType : String ) : Blob;
	function getBlob() : Blob;
	function getContainerInfo() : ContainerInfo;
	function getId() : String;
	function getOptions() : ChartOptions;
	function getRanges() : Array<Range>;
	function getType() : String;
	function modify() : EmbeddedChartBuilder;
	function setId( id : String ) : Chart;
}

@:require(google_apps_script)
@:native("EmbeddedChartBuilder")
extern class EmbeddedChartBuilder {
	function addRange( range : Range ) : EmbeddedChartBuilder;
	function asAreaChart() : EmbeddedAreaChartBuilder;
	function asBarChart() : EmbeddedBarChartBuilder;
	function asColumnChart() : EmbeddedColumnChartBuilder;
	function asLineChart() : EmbeddedLineChartBuilder;
	function asPieChart() : EmbeddedPieChartBuilder;
	function asScatterChart() : EmbeddedScatterChartBuilder;
	function asTableChart() : EmbeddedTableChartBuilder;
	function build() : EmbeddedChart;
	function getChartType() : ChartType;
	function getContainer() : ContainerInfo;
	function getRanges() : Array<Range>;
	function removeRange( range : Range ) : EmbeddedChartBuilder;
	function setChartType( type : ChartType ) : EmbeddedChartBuilder;
	function setOption( option : String, value : Dynamic ) : EmbeddedChartBuilder;
	function setPosition( anchorRowPos : Int, anchorColPos : Int, offsetX : Int, offsetY : Int ) : EmbeddedChartBuilder;
}

@:require(google_apps_script)
@:native("EmbeddedAreaChartBuilder")
extern class EmbeddedAreaChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedAreaChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedAreaChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedAreaChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedAreaChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedAreaChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedAreaChartBuilder;
	function setStacked() : EmbeddedAreaChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedAreaChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedAreaChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedAreaChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedAreaChartBuilder;
	function useLogScale() : EmbeddedAreaChartBuilder;
}

@:require(google_apps_script)
@:native("EmbeddedBarChartBuilder")
extern class EmbeddedBarChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedBarChartBuilder;
	function reverseDirection() : EmbeddedBarChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedBarChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedBarChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedBarChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedBarChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedBarChartBuilder;
	function setStacked() : EmbeddedBarChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedBarChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedBarChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedBarChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedBarChartBuilder;
	function useLogScale() : EmbeddedBarChartBuilder;
}

@:require(google_apps_script)
@:native("EmbeddedColumnChartBuilder")
extern class EmbeddedColumnChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedColumnChartBuilder;
	function reverseDirection() : EmbeddedColumnChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedColumnChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedColumnChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedColumnChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedColumnChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedColumnChartBuilder;
	function setStacked() : EmbeddedColumnChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedColumnChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedColumnChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedColumnChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedColumnChartBuilder;
	function useLogScale() : EmbeddedColumnChartBuilder;
}

@:require(google_apps_script)
@:native("EmbeddedLineChartBuilder")
extern class EmbeddedLineChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedLineChartBuilder;
	function reverseDirection() : EmbeddedLineChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedLineChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedLineChartBuilder;
	function setCurveStyle( curveStyle : CurveStyle ) : EmbeddedLineChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedLineChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedLineChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedLineChartBuilder;
	function setStacked() : EmbeddedLineChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedLineChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedLineChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedLineChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedLineChartBuilder;
	function useLogScale() : EmbeddedLineChartBuilder;
}

@:require(google_apps_script)
@:native("EmbeddedPieChartBuilder")
extern class EmbeddedPieChartBuilder extends EmbeddedChartBuilder {
	function reverseCategories() : EmbeddedPieChartBuilder;
	function set3D() : EmbeddedPieChartBuilder;
	function setBackgroundColor( cssValue : String ) : EmbeddedPieChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedPieChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedPieChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedPieChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedPieChartBuilder;
}

@:require(google_apps_script)
@:native("EmbeddedScatterChartBuilder")
extern class EmbeddedScatterChartBuilder extends EmbeddedChartBuilder {
	function setBackgroundColor( cssValue : String ) : EmbeddedScatterChartBuilder;
	function setColors( cssValues : Array<String> ) : EmbeddedScatterChartBuilder;
	function setLegendPosition( position : Position ) : EmbeddedScatterChartBuilder;
	function setLegendTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setPointStyle( style : PointStyle ) : EmbeddedScatterChartBuilder;
	function setRange( start : Float, end : Float ) : EmbeddedScatterChartBuilder;
	function setStacked() : EmbeddedScatterChartBuilder;
	function setTitle( chartTitle : String ) : EmbeddedScatterChartBuilder;
	function setTitleTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setXAxisTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setXAxisTitle( title : String ) : EmbeddedScatterChartBuilder;
	function setXAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setYAxisTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function setYAxisTitle( title : String ) : EmbeddedScatterChartBuilder;
	function setYAxisTitleTextStyle( textStyle : TextStyle ) : EmbeddedScatterChartBuilder;
	function useLogScale() : EmbeddedScatterChartBuilder;

}

@:require(google_apps_script)
@:native("EmbeddedTableChartBuilder")
extern class EmbeddedTableChartBuilder extends EmbeddedChartBuilder {
	@:overload(function(pageSize:Int,?startPage:Int):EmbeddedTableChartBuilder{})
	function enablePaging( enablePaging : Bool ) : EmbeddedTableChartBuilder;
	function enableRtlTable( rtlEnabled : Bool ) : EmbeddedTableChartBuilder;
	function enableSorting( enableSorting : Bool ) : EmbeddedTableChartBuilder;
	function setFirstRowNumber( number : Int ) : EmbeddedTableChartBuilder;
	function setInitialSortingAscending( column : Int ) : EmbeddedTableChartBuilder;
	function setInitialSortingDescending( column : Int ) : EmbeddedTableChartBuilder;
	function showRowNumberColumn( showRowNumber : Bool ) : EmbeddedTableChartBuilder;
	function useAlternatingRowStyle( alternate : Bool ) : EmbeddedTableChartBuilder;
}

@:require(google_apps_script)
@:native("ContainerInfo")
extern class ContainerInfo {
	function getAnchorColumn() : Int;
	function getAnchorRow() : Int;
	function getOffsetX() : Int;
	function getOffsetY() : Int;
}

@:require(google_apps_script)
@:native("Spreadsheet")
extern class Spreadsheet {
	@:overload(function(user:User):Sheet{})
	function addEditor( emailAddress : String ) : Sheet;
	function addEditors( emailAddresses : Array<String> ) : Sheet;
	function addMenu( name : String, subMenus : Array<Dynamic> ) : Sheet;
	@:overload(function(user:User):Sheet{})
	function addViewer( emailAddress : String ) : Sheet;
	function addViewers( emailAddresses : Array<String> ) : Sheet;
	function appendRow( rowContents : Array<Dynamic> ) : Sheet;
	function autoResizeColumn( columnPosition : Int ) : Sheet;
	function copy( name : String ) : Spreadsheet;
	function deleteActiveSheet() : Sheet;
	function deleteColumn( columnPosition : Int ) : Sheet;
	function deleteColumns( columnPosition : Int, howMany : Int ) : Sheet;
	function deleteRow( rowPosition : Int ) : Sheet;
	function deleteRows( rowPosition : Int, howMany : Int ) : Sheet;
	function deleteSheet( sheet : Sheet ) : Sheet;
	function duplicateActiveSheet() : Sheet;
	function getActiveCell() : Range;
	function getActiveRange() : Range;
	static function getActiveSheet() : Sheet;
	function getColumnWidth( columnPosition : Int ) : Int;
	function getDataRange() : Range;
	function getEditors() : Array<User>;
	function getFormUrl() : String;
	function getFrozenColumns() : Int;
	function getFrozenRows() : Int;
	function getId() : String;
	function getLastColumn() : Int;
	function getLastRow() : Int;
	function getName() : String;
	function getNumSheets() : Int;
	function getOwner() : User;
	function getRange( a1Notation : String ) : Range;
	function getRangeByName( name : String ) : Range;
	function getRowHeight( rowPosition : Int ) : Int;
	function getSheetByName( name : String ) : Sheet;
	function getSheetId() : Int;
	function getSheetName() : String;
	function getSheetProtection() : PageProtection;
	function getSheetValues( startRow : Int, startColumn : Int, numRows : Int, numColumns : Int ) : Array<Array<Dynamic>>;
	function getSheets() : Array<Sheet>;
	function getSpreadsheetLocale() : String;
	function getSpreadsheetTimeZone() : String;
	function getUrl() : String;
	function getViewers() : Array<User>;
	function hideColumn( column : Range ) : Sheet;
	function hideRow( row : Range ) : Sheet;
	function insertColumnAfter( afterPosition : Int ) : Sheet;
	function insertColumnBefore( beforePosition : Int ) : Sheet;
	function insertColumnsAfter( afterPosition : Int, howMany : Int ) : Sheet;
	function insertColumnsBefore( beforePosition : Int, howMany : Int ) : Sheet;
	@:overload(function(url:String,column:Int,row:Int,offsetX:Int,offsetY:Int):Sheet{})
	function insertImage( url : String, column : Int, row : Int ) : Sheet;
	function insertRowAfter( afterPosition : Int ) : Sheet;
	function insertRowBefore( beforePosition : Int ) : Sheet;
	function insertRowsAfter( afterPosition : Int, howMany : Int ) : Sheet;
	function insertRowsBefore( beforePosition : Int, howMany : Int ) : Sheet;
	@:overload(function(sheetName:String,?sheetIndex:Int,?sheetOptions:Dynamic):Sheet{})
	@:overload(function(sheetName:String,?sheetIndex:Int):Sheet{})
	@:overload(function(options:Dynamic):Sheet{})
	@:overload(function(sheetIndex:Int):Sheet{})
	function insertSheet( sheetIndex : Int, ?options : Dynamic ) : Sheet;
	function isAnonymousView() : Bool;
	function isAnonymousWrite() : Bool;
	function isReadable() : Bool;
	function isWritable() : Bool;
	function moveActiveSheet( pos : Int ) : Sheet;
	@:overload(function(user:User):Sheet{})
	function removeEditor( emailAddress : String ) : Sheet;
	function removeMenu( name : String ) : Sheet;
	function removeNamedRange( name : String ) : Sheet;
	@:overload(function(user:User):Sheet{})
	function removeViewer( emailAddress : String ) : Sheet;
	function rename( newName : String ) : Sheet;
	function renameActiveSheet( newName : String ) : Sheet;
	function setActiveRange( range : Range ) : Range;
	@:overload(function(a1Notation:String):Range{})
	function setActiveSelection( range : Range ) : Range;
	function setActiveSheet( sheet : Sheet ) : Sheet;
	function setAnonymousAccess( anonymousReadAllowed : Bool, anonymousWriteAllowed : Bool ) : Sheet;
	function setColumnWidth( columnPosition : Int, width : Int ) : Sheet;
	function setFrozenColumns( columns : Int ) : Sheet;
	function setFrozenRows( rows : Int ) : Sheet;
	function setNamedRange( name : String, range : Range ) : Sheet;
	function setRowHeight( rowPosition : Int, height : Int ) : Sheet;
	function setSheetProtection( permissions : PageProtection ) : Sheet;
	function setSpreadsheetLocale( locale : String ) : Sheet;
	function setSpreadsheetTimeZone( timezone : String ) : Sheet;
	function show( userInterface : Dynamic ) : Sheet;
	function sort( columnPosition : Int, ?ascending : Bool ) : Sheet;
	function toast( msg : String, ?title : String, ?timeoutSeconds : Float ) : Sheet;
	function unhideColumn( column : Range ) : Sheet;
	function unhideRow( row : Range ) : Sheet;
	function updateMenu( name : String, subMenus : Array<Dynamic> ) : Sheet;
}

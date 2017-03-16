package google.apps.script;

@:native("FileIterator")
extern class FileIterator {
    function getContinuationToken() : String;
    function hasNext() : Bool;
    function next() : File;
}

@:native("FolderIterator")
extern class FolderIterator {
    function getContinuationToken() : String;
    function hasNext() : Bool;
    function next() : Folder;
}

@:native("DriveApp.Access")
extern class Access{
    public var ANYONE:Access;
    public var ANYONE_WITH_LINK:Access;
    public var DOMAIN:Access;
    public var DOMAIN_WITH_LINK:Access;
    public var PRIVATE:Access;
}

@:native("DriveApp.Permission")
extern class Permission{
    public var VIEW:Permission;
    public var EDIT:Permission;
    public var COMMENT:Permission;
    public var OWNER:Permission;
    public var NONE:Permission;
}

@:require(google_apps_script)
@:native("Folder")
extern class Folder {
	function addFile( child : File ) : Folder;
    function addFolder( child : Folder ) : Folder;
    @:overload(function(user:User):Folder{})
    function addEditor( emailAddress : String ) : Folder;
    function addEditors( emailAddresses: Array<String> ) : Folder;
    @:overload(function(user:User):Folder{})
    function addViewer( emailAddress : String ) : Folder;
    function addViewers( emailAddresses : Array<String> ) : Folder;
    @:overload(function(name:String,content:String,?mimeType:String):Folder{})
    function createFile( blob : Blob ) : File;
    function createFolder( name : String ) : Folder;
    @:overload(function(user:User):Permission{})
    function getAccess( email : String ) : Permission;
    function getDateCreated() : Date;
    function getDescription() : String;
    function getEditors() : Array<User>;
    function getFiles() : FileIterator;
    function getFilesByName( name : String ) : FileIterator;
    function getFilesByType( mimeType : MimeType ) : FileIterator;
    function getFolders() : FolderIterator;
    function getFoldersByName( name : String ) : FolderIterator;
    function getId() : String;
    function getLastUpdated() : Date;
    function getName() : String;
    function getParents() : FolderIterator;
    function getSharingAccess() : Access;
    function getSharingPermission() : Permission;
    function getSize() : Int;
    function getUrl() : String;
    function getViewers() : Array<User>;
    function isShareableByEditors() : Bool;
    function isStarred() : Bool;
    function isTrashed() : Bool;
    @:overload(function(user:User):Folder{})
    function removeEditor( emailAddress : String ) : Folder;
    function removeFile( file : File ) : Folder;
    function removeFolder( folder : Folder ) : Folder;
    @:overload(function(user:User):Folder{})
    function removeViewer( emailAddress : String ) : Folder;
    @:overload(function(user:User):Folder{})
    function revokePermissions( emailAddress : String ) : Folder;
    function searchFiles( params : String ) : FileIterator;
    function setDescription( description : String ) : Folder;
    function setName( name : String ) : Folder;
    @:overload(function(user:User):Folder{})
    function setOwner( emailAddress : String ) : Folder;
    function setShareableByEditors( shareable : Bool ) : Folder;
    function setSharing( accessType : Access, permissionType : Permission ) : Folder;
    function setStarred( starred : Bool ) : Folder;
    function setTrashed( setTrashed : Bool ) : Folder;
}

@:require(google_apps_script)
@:native("File")
extern class File {
    @:overload(function(user:User):File{})
    function addCommenter( emailAddress : String ) : File;
    function addCommenters( emailAddresses : Array<String> ) : File;
    @:overload(function(user:User):File{})
    function addEditor( emailAddress : String ) : File;
    function addEditors( emailAddresses : Array<String> ) : File;
    @:overload(function(user:User):File{})
    function addViewer( emailAddress : String ) : File;
    function addViewers( emailAddresses : Array<String> ) : File;
    @:overload(function(user:User):File{})
    function getAccess( email : String ) : Permission;
    function getAs( contentType : String ) : Blob;
    function getBlob() : Blob;
    function getDateCreated() : Date;
    function getDescription() : String;
    function getDownloadUrl() : String;
    function getId() : String;
    function getLastUpdated() : Date;
    function getMimeType() : String;
    function getName() : String;
    function getParents() : FolderIterator;
    function getSharingAccess() : Access;
    function getSharingPermission() : Permission;
    function getSize() : Int;
    function getThumbnail() : Blob;
    function getUrl() : String;
    function isShareableByEditors() : Bool;
    function isStarred() : Bool;
    function isTrashed() : Bool;
    @:overload(function(destination:Folder):File{})
    @:overload(function(name:String,?destination:Folder):File{})
    function makeCopy() : File;
    @:overload(function(user:User):File{})
    function removeCommenter( emailAddress : String ) : File;
    @:overload(function(user:User):File{})
    function removeEditor( emailAddress : String ) : File;
    @:overload(function(user:User):File{})
    function removeViewer( emailAddress : String ) : File;
    @:overload(function(user:User):File{})
    function revokePermissions( emailAddress : String ) : File;
    function setContent( content : String ) : File;
    function setDescription( description : String ) : File;
    function setName( name : String ) : File;
    @:overload(function(user:User):File{})
    function setOwner( emailAddress : String ) : File;
    function setShareableByEditors( shareable : Bool ) : File;
    function setSharing( accessType : Access, permissionType : Permission ) : Folder;
    function setStarred( starred : Bool ) : Folder;
    function setTrashed( setTrashed : Bool ) : Folder;
}

@:require(google_apps_script)
@:native("DriveApp")
extern class DriveApp {
    static var Access : Access;
    static var Permission : Permission;
    static function addFile( child : File ) : Folder;
    static function addFolder( child : Folder ) : Folder;
    @:overload(function(name:String,content:Blob,?mimeType:String):File{})
    static function createFile( blob : Blob ) : File;
    static function createFolder( name : String ) : Folder;
    static function getFileById(id : String ) : File;
    static function getFiles() : FileIterator;
    static function getFilesByName( name : String ) : FileIterator;
    static function getFilesByType( mimeType : String ) : FileIterator;
    static function getFolderById( id : String ) : Folder;
    static function getFolders() : FolderIterator;
    static function getFoldersByName( name : String ) : FolderIterator;
    static function getRootFolder() : Folder;
    static function getStorageLimit() : Int;
    static function getStorageUsed() : Int;
    static function getTrashedFiles() : FileIterator;
    static function getTrashedFolders() : FolderIterator;
    static function removeFile( child : File ) : Folder;
    static function removeFolder( child : File ) : Folder;
    static function searchFiles( params : String ) : FileIterator;
    static function searchFolders( params : String ) : FolderIterator;
}

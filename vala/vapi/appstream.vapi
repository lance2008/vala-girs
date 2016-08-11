/* appstream.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "As", gir_namespace = "AppStream", gir_version = "1.0", lower_case_cprefix = "as_")]
namespace AppStream {
	[CCode (cheader_filename = "appstream.h", type_id = "as_category_get_type ()")]
	public class Category : GLib.Object {
		[CCode (has_construct_function = false)]
		public Category ();
		public void add_subcategory (AppStream.Category subcat);
		public void complete ();
		public unowned string get_directory ();
		public unowned GLib.List<string> get_excluded ();
		public unowned string get_icon ();
		public unowned GLib.List<string> get_included ();
		public int get_level ();
		public unowned string get_name ();
		public unowned GLib.List<AppStream.Category> get_subcategories ();
		public unowned string get_summary ();
		public bool has_subcategory ();
		public void remove_subcategory (AppStream.Category subcat);
		public void set_directory (string value);
		public void set_icon (string value);
		public void set_level (int value);
		public void set_name (string value);
		public void set_summary (string value);
		public string directory { get; set; }
		public void* excluded { get; }
		public string icon { get; set; }
		public void* included { get; }
		public int level { get; set; }
		public string name { get; set; }
		public void* subcategories { get; }
		public string summary { get; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_component_get_type ()")]
	public class Component : GLib.Object {
		[CCode (has_construct_function = false)]
		public Component ();
		[Version (since = "0.8.0")]
		public void add_bundle_id (AppStream.BundleKind bundle_kind, string id);
		[Version (since = "0.7.0")]
		public void add_extends (string cpt_id);
		[Version (since = "0.9.2")]
		public void add_extension (string cpt_id);
		public void add_icon (AppStream.Icon icon);
		[Version (since = "0.7.0")]
		public void add_language (string? locale, int percentage);
		[Version (since = "0.6.2")]
		public void add_provided (AppStream.Provided prov);
		public void add_release (AppStream.Release release);
		public void add_screenshot (AppStream.Screenshot sshot);
		[Version (since = "0.9.2")]
		public void add_translation (AppStream.Translation tr);
		[Version (since = "0.6.2")]
		public void add_url (AppStream.UrlKind url_kind, string url);
		public string get_active_locale ();
		[Version (since = "0.8.0")]
		public unowned string? get_bundle_id (AppStream.BundleKind bundle_kind);
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_categories ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_compulsory_for_desktops ();
		public unowned string get_description ();
		public unowned string get_developer_name ();
		[Version (since = "0.7.0")]
		public unowned GLib.GenericArray<string> get_extends ();
		[Version (since = "0.9.2")]
		public unowned GLib.GenericArray<string> get_extensions ();
		public unowned AppStream.Icon get_icon_by_size (uint width, uint height);
		public unowned GLib.GenericArray<AppStream.Icon> get_icons ();
		public unowned string get_id ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_keywords ();
		public AppStream.ComponentKind get_kind ();
		[Version (since = "0.7.0")]
		public int get_language (string? locale);
		[Version (since = "0.7.0")]
		public GLib.List<weak string> get_languages ();
		public unowned string get_name ();
		public unowned string get_origin ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_pkgnames ();
		public unowned string get_project_group ();
		public unowned string get_project_license ();
		public GLib.List<weak AppStream.Provided> get_provided ();
		public unowned AppStream.Provided get_provided_for_kind (AppStream.ProvidedKind kind);
		public unowned GLib.GenericArray<AppStream.Release> get_releases ();
		public unowned GLib.GenericArray<AppStream.Screenshot> get_screenshots ();
		[Version (since = "0.9.7")]
		public GLib.GenericArray<string> get_search_tokens ();
		public unowned string get_source_pkgname ();
		public unowned string get_summary ();
		[Version (since = "0.9.2")]
		public unowned GLib.GenericArray<AppStream.Translation> get_translations ();
		[Version (since = "0.6.2")]
		public unowned string? get_url (AppStream.UrlKind url_kind);
		public bool has_bundle ();
		public bool has_category (string category);
		public bool is_compulsory_for_desktop (string desktop);
		public bool is_valid ();
		[Version (since = "0.9.7")]
		public uint search_matches (string search_term);
		public void set_active_locale (string? locale);
		public void set_categories ([CCode (array_length = false, array_null_terminated = true)] string[] value);
		public void set_compulsory_for_desktops ([CCode (array_length = false, array_null_terminated = true)] string[] value);
		public void set_description (string value, string? locale);
		public void set_developer_name (string value, string? locale);
		public void set_id (string value);
		public void set_keywords ([CCode (array_length = false, array_null_terminated = true)] string[] value, string? locale);
		public void set_kind (AppStream.ComponentKind value);
		public void set_name (string value, string? locale);
		public void set_origin (string origin);
		public void set_pkgnames ([CCode (array_length = false, array_null_terminated = true)] string[] value);
		public void set_project_group (string value);
		public void set_project_license (string value);
		public void set_source_pkgname (string spkgname);
		public void set_summary (string value, string? locale);
		public string to_string ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] categories { get; set; }
		[NoAccessorMethod]
		public string description { owned get; set; }
		[NoAccessorMethod]
		public string developer_name { owned get; set; }
		public GLib.List<weak AppStream.Icon> icons { get; }
		public string id { get; set; }
		[CCode (array_length = false, array_null_terminated = true)]
		[NoAccessorMethod]
		public string[] keywords { owned get; set; }
		public AppStream.ComponentKind kind { get; set; }
		[NoAccessorMethod]
		public string name { owned get; set; }
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] pkgnames { get; set; }
		public string project_group { get; set; }
		public string project_license { get; set; }
		public GLib.GenericArray<weak AppStream.Screenshot> screenshots { get; }
		[NoAccessorMethod]
		public string summary { owned get; set; }
		[NoAccessorMethod]
		public GLib.HashTable<weak AppStream.UrlKind,weak string> urls { owned get; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_data_pool_get_type ()")]
	public class DataPool : GLib.Object {
		[CCode (has_construct_function = false)]
		public DataPool ();
		public bool add_component (AppStream.Component cpt) throws GLib.Error;
		public void clear ();
		public static GLib.Quark error_quark ();
		public long get_cache_age ();
		public AppStream.CacheFlags get_cache_flags ();
		public AppStream.Component get_component_by_id (string id);
		public GLib.GenericArray<AppStream.Component> get_components ();
		public GLib.GenericArray<AppStream.Component> get_components_by_categories (string categories);
		public GLib.GenericArray<AppStream.Component> get_components_by_kind (AppStream.ComponentKind kind) throws GLib.Error;
		public GLib.GenericArray<AppStream.Component> get_components_by_provided_item (AppStream.ProvidedKind kind, string item) throws GLib.Error;
		public unowned string get_locale ();
		public unowned GLib.GenericArray<string> get_metadata_locations ();
		public bool load (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool load_cache_file (string fname) throws GLib.Error;
		public bool load_metadata ();
		public bool refresh_cache (bool force) throws GLib.Error;
		public bool save_cache_file (string fname) throws GLib.Error;
		[Version (since = "0.9.7")]
		public GLib.GenericArray<AppStream.Component> search (string term);
		public void set_cache_flags (AppStream.CacheFlags flags);
		public void set_locale (string locale);
		public void set_metadata_locations ([CCode (array_length = false, array_null_terminated = true)] string[] dirs);
		public bool update () throws GLib.Error;
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_database_get_type ()")]
	public class Database : GLib.Object {
		[CCode (has_construct_function = false)]
		public Database ();
		public static GLib.Quark error_quark ();
		public GLib.GenericArray<AppStream.Component> find_components (string? term, string? cats_str) throws GLib.Error;
		public GLib.GenericArray<AppStream.Component> get_all_components () throws GLib.Error;
		public AppStream.Component get_component_by_id (string cid) throws GLib.Error;
		public GLib.GenericArray<AppStream.Component> get_components_by_kind (AppStream.ComponentKind kind) throws GLib.Error;
		public GLib.GenericArray<AppStream.Component> get_components_by_provided_item (AppStream.ProvidedKind kind, string item) throws GLib.Error;
		public unowned string get_location ();
		public bool open () throws GLib.Error;
		public void set_location (string dir);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_distro_details_get_type ()")]
	public class DistroDetails : GLib.Object {
		[CCode (has_construct_function = false)]
		public DistroDetails ();
		public bool get_bool (string key);
		public unowned string get_id ();
		public unowned string get_name ();
		public string get_str (string key);
		public unowned string get_version ();
		public string id { get; }
		public string name { get; }
		public string version { get; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_icon_get_type ()")]
	public class Icon : GLib.Object {
		[CCode (has_construct_function = false)]
		public Icon ();
		public unowned string get_filename ();
		public uint get_height ();
		public AppStream.IconKind get_kind ();
		public unowned string get_name ();
		public unowned string get_url ();
		public uint get_width ();
		public static AppStream.IconKind kind_from_string (string kind_str);
		public static unowned string kind_to_string (AppStream.IconKind kind);
		public void set_filename (string filename);
		public void set_height (uint height);
		public void set_kind (AppStream.IconKind kind);
		public void set_name (string name);
		public void set_url (string url);
		public void set_width (uint width);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_image_get_type ()")]
	public class Image : GLib.Object {
		[CCode (has_construct_function = false)]
		public Image ();
		public uint get_height ();
		public AppStream.ImageKind get_kind ();
		[Version (since = "0.9.5")]
		public unowned string get_locale ();
		public unowned string get_url ();
		public uint get_width ();
		public static AppStream.ImageKind kind_from_string (string kind);
		public static unowned string kind_to_string (AppStream.ImageKind kind);
		public void set_height (uint height);
		public void set_kind (AppStream.ImageKind kind);
		[Version (since = "0.9.5")]
		public void set_locale (string locale);
		public void set_url (string url);
		public void set_width (uint width);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_menu_parser_get_type ()")]
	public class MenuParser : GLib.Object {
		[CCode (has_construct_function = false)]
		public MenuParser ();
		[CCode (has_construct_function = false)]
		public MenuParser.from_file (string menu_file);
		public bool get_update_category_data ();
		public GLib.List<AppStream.Category> parse ();
		public void set_update_category_data (bool value);
		public bool update_category_data { get; set; }
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_metadata_get_type ()")]
	public class Metadata : GLib.Object {
		[CCode (has_construct_function = false)]
		public Metadata ();
		public void add_component (AppStream.Component cpt);
		public void clear_components ();
		public string component_to_upstream_xml ();
		public string components_to_distro_xml ();
		public string components_to_distro_yaml ();
		public static GLib.Quark error_quark ();
		public unowned string get_architecture ();
		public unowned AppStream.Component get_component ();
		public unowned GLib.GenericArray<AppStream.Component> get_components ();
		public unowned string get_locale ();
		public unowned string get_origin ();
		public AppStream.ParserMode get_parser_mode ();
		public bool get_update_existing ();
		public bool get_write_header ();
		public void parse_file (GLib.File file) throws GLib.Error;
		public void parse_xml (string data) throws GLib.Error;
		public void parse_yaml (string data) throws GLib.Error;
		public void save_distro_xml (string fname) throws GLib.Error;
		public void save_distro_yaml (string fname) throws GLib.Error;
		public void save_upstream_xml (string fname) throws GLib.Error;
		public void set_architecture (string arch);
		public void set_locale (string locale);
		public void set_origin (string origin);
		public void set_parser_mode (AppStream.ParserMode mode);
		public void set_update_existing (bool update);
		public void set_write_header (bool wheader);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_provided_get_type ()")]
	public class Provided : GLib.Object {
		[CCode (has_construct_function = false)]
		public Provided ();
		public void add_item (string item);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_items ();
		public AppStream.ProvidedKind get_kind ();
		public bool has_item (string item);
		public static AppStream.ProvidedKind kind_from_string (string kind_str);
		public static unowned string kind_to_l10n_string (AppStream.ProvidedKind kind);
		public static unowned string kind_to_string (AppStream.ProvidedKind kind);
		public void set_kind (AppStream.ProvidedKind kind);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_release_get_type ()")]
	public class Release : GLib.Object {
		[CCode (has_construct_function = false)]
		public Release ();
		[Version (since = "0.8.1")]
		public void add_location (string location);
		public string get_active_locale ();
		[Version (since = "0.8.2")]
		public unowned string get_checksum (AppStream.ChecksumKind kind);
		public unowned string get_description ();
		[Version (since = "0.8.1")]
		public unowned GLib.GenericArray<string> get_locations ();
		[Version (since = "0.8.6")]
		public uint64 get_size (AppStream.SizeKind kind);
		public uint64 get_timestamp ();
		[Version (since = "0.6.5")]
		public AppStream.UrgencyKind get_urgency ();
		public unowned string get_version ();
		public void set_active_locale (string locale);
		[Version (since = "0.8.2")]
		public void set_checksum (string checksum, AppStream.ChecksumKind kind);
		public void set_description (string description, string locale);
		[Version (since = "0.8.6")]
		public void set_size (uint64 size, AppStream.SizeKind kind);
		public void set_timestamp (uint64 timestamp);
		[Version (since = "0.6.5")]
		public void set_urgency (AppStream.UrgencyKind urgency);
		public void set_version (string version);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_screenshot_get_type ()")]
	public class Screenshot : GLib.Object {
		[CCode (has_construct_function = false)]
		public Screenshot ();
		public void add_image (AppStream.Image image);
		public string get_active_locale ();
		public unowned string get_caption ();
		public unowned GLib.GenericArray<AppStream.Image> get_images ();
		[Version (since = "0.9.5")]
		public GLib.GenericArray<weak AppStream.Image> get_images_localized ();
		public AppStream.ScreenshotKind get_kind ();
		public bool is_valid ();
		public static AppStream.ScreenshotKind kind_from_string (string kind);
		public static unowned string kind_to_string (AppStream.ScreenshotKind kind);
		public void set_active_locale (string locale);
		public void set_caption (string caption, string locale);
		public void set_kind (AppStream.ScreenshotKind kind);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_translation_get_type ()")]
	public class Translation : GLib.Object {
		[CCode (has_construct_function = false)]
		public Translation ();
		public unowned string get_id ();
		public AppStream.TranslationKind get_kind ();
		public static AppStream.TranslationKind kind_from_string (string kind_str);
		public static unowned string kind_to_string (AppStream.TranslationKind kind);
		public void set_id (string id);
		public void set_kind (AppStream.TranslationKind kind);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_validator_get_type ()")]
	public class Validator : GLib.Object {
		[CCode (has_construct_function = false)]
		public Validator ();
		public void clear_issues ();
		public GLib.List<weak AppStream.ValidatorIssue> get_issues ();
		public bool validate_data (string metadata);
		public bool validate_file (GLib.File metadata_file);
		public bool validate_tree (string root_dir);
	}
	[CCode (cheader_filename = "appstream.h", type_id = "as_validator_issue_get_type ()")]
	public class ValidatorIssue : GLib.Object {
		[CCode (has_construct_function = false)]
		public ValidatorIssue ();
		public AppStream.IssueImportance get_importance ();
		public AppStream.IssueKind get_kind ();
		public unowned string get_location ();
		public unowned string get_message ();
		public void set_importance (AppStream.IssueImportance importance);
		public void set_kind (AppStream.IssueKind kind);
		public void set_location (string location);
		public void set_message (string message);
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Category_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Component_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct DataPool_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Database_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct DistroDetails_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Icon_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Image_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct MenuParser_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Metadata_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Provided_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Release_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Screenshot_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Translation_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct ValidatorIssue_autoptr {
	}
	[CCode (cheader_filename = "appstream.h")]
	[SimpleType]
	public struct Validator_autoptr {
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_BUNDLE_KIND_", has_type_id = false)]
	public enum BundleKind {
		UNKNOWN,
		LIMBA,
		FLATPAK;
		public static AppStream.BundleKind from_string (string bundle_kind);
		[Version (since = "0.8.0")]
		public static unowned string to_string (AppStream.BundleKind bundle_kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_CACHE_FLAG_", has_type_id = false)]
	[Flags]
	public enum CacheFlags {
		NONE,
		USE_USER,
		USE_SYSTEM
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_CHECKSUM_KIND_", has_type_id = false)]
	public enum ChecksumKind {
		NONE,
		SHA1,
		SHA256;
		public static AppStream.ChecksumKind from_string (string kind_str);
		public static unowned string to_string (AppStream.ChecksumKind kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_COMPONENT_KIND_", type_id = "as_component_kind_get_type ()")]
	public enum ComponentKind {
		UNKNOWN,
		GENERIC,
		[CCode (cname = "AS_COMPONENT_KIND_DESKTOP_APP")]
		DESKTOP,
		FONT,
		CODEC,
		INPUTMETHOD,
		ADDON,
		FIRMWARE,
		LAST;
		public static AppStream.ComponentKind from_string (string kind_str);
		public static unowned string to_string (AppStream.ComponentKind kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_DATA_POOL_ERROR_", has_type_id = false)]
	public enum DataPoolError {
		FAILED,
		TARGET_NOT_WRITABLE,
		INCOMPLETE,
		COLLISION,
		TERM_INVALID
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_DATABASE_ERROR_", has_type_id = false)]
	public enum DatabaseError {
		FAILED,
		MISSING,
		CLOSED,
		TERM_INVALID
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_ICON_KIND_", has_type_id = false)]
	public enum IconKind {
		UNKNOWN,
		CACHED,
		STOCK,
		LOCAL,
		REMOTE
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_IMAGE_KIND_", has_type_id = false)]
	public enum ImageKind {
		UNKNOWN,
		SOURCE,
		THUMBNAIL
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_ISSUE_IMPORTANCE_", has_type_id = false)]
	public enum IssueImportance {
		UNKNOWN,
		ERROR,
		WARNING,
		INFO,
		PEDANTIC
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_ISSUE_KIND_", has_type_id = false)]
	public enum IssueKind {
		UNKNOWN,
		MARKUP_INVALID,
		LEGACY,
		TAG_DUPLICATED,
		TAG_MISSING,
		TAG_UNKNOWN,
		TAG_NOT_ALLOWED,
		PROPERTY_MISSING,
		PROPERTY_INVALID,
		VALUE_MISSING,
		VALUE_WRONG,
		VALUE_ISSUE,
		FILE_MISSING,
		WRONG_NAME,
		READ_ERROR
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_METADATA_ERROR_", has_type_id = false)]
	public enum MetadataError {
		FAILED,
		PARSE,
		UNEXPECTED_FORMAT_KIND,
		NO_COMPONENT
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_PARSER_MODE_", has_type_id = false)]
	public enum ParserMode {
		UPSTREAM,
		DISTRO
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_PROVIDED_KIND_", has_type_id = false)]
	public enum ProvidedKind {
		UNKNOWN,
		LIBRARY,
		BINARY,
		MIMETYPE,
		FONT,
		MODALIAS,
		PYTHON_2,
		PYTHON,
		DBUS_SYSTEM,
		DBUS_USER,
		FIRMWARE_RUNTIME,
		FIRMWARE_FLASHED
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_SCREENSHOT_KIND_", has_type_id = false)]
	public enum ScreenshotKind {
		UNKNOWN,
		DEFAULT,
		EXTRA
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_SIZE_KIND_", has_type_id = false)]
	[Version (since = "0.8.6")]
	public enum SizeKind {
		UNKNOWN,
		DOWNLOAD,
		INSTALLED;
		public static AppStream.SizeKind from_string (string size_kind);
		public static unowned string to_string (AppStream.SizeKind size_kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_TRANSLATION_KIND_", has_type_id = false)]
	public enum TranslationKind {
		UNKNOWN,
		GETTEXT,
		QT
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_URGENCY_KIND_", has_type_id = false)]
	public enum UrgencyKind {
		UNKNOWN,
		LOW,
		MEDIUM,
		HIGH,
		CRITICAL;
		[Version (since = "0.6.5")]
		public static AppStream.UrgencyKind from_string (string urgency_kind);
		[Version (since = "0.6.5")]
		public static unowned string to_string (AppStream.UrgencyKind urgency_kind);
	}
	[CCode (cheader_filename = "appstream.h", cprefix = "AS_URL_KIND_", has_type_id = false)]
	public enum UrlKind {
		UNKNOWN,
		HOMEPAGE,
		BUGTRACKER,
		FAQ,
		HELP,
		DONATION;
		public static AppStream.UrlKind from_string (string url_kind);
		public static unowned string to_string (AppStream.UrlKind url_kind);
	}
	[CCode (cheader_filename = "appstream.h")]
	public static string description_markup_convert_simple (string markup);
	[CCode (cheader_filename = "appstream.h")]
	public static string get_current_locale ();
	[CCode (array_length = false, array_null_terminated = true, cheader_filename = "appstream.h")]
	public static string[] get_icon_repository_paths ();
	[CCode (cheader_filename = "appstream.h")]
	public static GLib.List<AppStream.Category> get_system_categories ();
	[CCode (cheader_filename = "appstream.h")]
	public static GLib.DateTime iso8601_to_datetime (string iso_date);
	[CCode (cheader_filename = "appstream.h")]
	public static bool str_empty (string str);
	[CCode (cheader_filename = "appstream.h")]
	public static bool utils_is_category_name (string category_name);
	[CCode (cheader_filename = "appstream.h")]
	[Version (since = "0.9.5")]
	public static bool utils_locale_is_compatible (string locale1, string locale2);
}
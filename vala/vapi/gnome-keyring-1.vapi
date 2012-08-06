/* gnome-keyring-1.vapi generated by vapigen-0.18, do not modify. */

[CCode (cprefix = "GnomeKeyring", gir_namespace = "GnomeKeyring", gir_version = "1.0", lower_case_cprefix = "gnome_keyring_")]
namespace GnomeKeyring {
	[CCode (cheader_filename = "gnome-keyring.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_keyring_access_control_get_type ()")]
	[Compact]
	public class AccessControl {
		[CCode (has_construct_function = false)]
		public AccessControl (GnomeKeyring.ApplicationRef application, GnomeKeyring.AccessType types_allowed);
		public GnomeKeyring.AccessControl copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gnome-keyring.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_keyring_application_ref_get_type ()")]
	[Compact]
	public class ApplicationRef {
		[CCode (has_construct_function = false)]
		public ApplicationRef ();
		public GnomeKeyring.ApplicationRef copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gnome-keyring.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_keyring_attribute_get_type ()")]
	[Compact]
	public class Attribute {
		public weak string name;
		public GnomeKeyring.AttributeType type;
		[CCode (cname = "value.integer")]
		public uint32 value_integer;
		[CCode (cname = "value.string")]
		public weak string value_string;
		public unowned string get_string ();
		public uint32 get_uint32 ();
	}
	[CCode (cheader_filename = "gnome-keyring.h")]
	[Compact]
	public class AttributeList : GLib.Array<GnomeKeyring.Attribute> {
		[CCode (array_length_cname = "len", array_length_type = "guint")]
		public GnomeKeyring.Attribute[] data;
		public AttributeList ();
		public void append_string (string name, string value);
		public void append_uint32 (string name, uint32 value);
		public GnomeKeyring.AttributeList copy ();
	}
	[CCode (cheader_filename = "gnome-keyring.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_keyring_found_get_type ()")]
	[Compact]
	public class Found {
		public weak GnomeKeyring.AttributeList attributes;
		public uint item_id;
		public weak string keyring;
		public weak string secret;
		public GnomeKeyring.Found copy ();
		public void free ();
		public static void list_free (GLib.List<GnomeKeyring.Found> found_list);
	}
	[CCode (cheader_filename = "gnome-keyring.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_keyring_info_get_type ()")]
	[Compact]
	public class Info {
		public GnomeKeyring.Info copy ();
		public void free ();
		public time_t get_ctime ();
		public bool get_is_locked ();
		public bool get_lock_on_idle ();
		public uint32 get_lock_timeout ();
		public time_t get_mtime ();
		public void set_lock_on_idle (bool value);
		public void set_lock_timeout (uint32 value);
	}
	[CCode (cheader_filename = "gnome-keyring.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gnome_keyring_item_info_get_gtype ()")]
	[Compact]
	public class ItemInfo {
		[CCode (has_construct_function = false)]
		public ItemInfo ();
		public GnomeKeyring.ItemInfo copy ();
		public void free ();
		public time_t get_ctime ();
		public string get_display_name ();
		public time_t get_mtime ();
		public string get_secret ();
		public GnomeKeyring.ItemType get_type ();
		public void set_display_name (string value);
		public void set_secret (string value);
		public void set_type (GnomeKeyring.ItemType type);
	}
	[CCode (cheader_filename = "gnome-keyring.h", free_function = "gnome_keyring_network_password_free")]
	[Compact]
	public class NetworkPasswordData {
		public string authtype;
		public string domain;
		public uint32 item_id;
		public string keyring;
		public string object;
		public string password;
		public uint32 port;
		public string protocol;
		public string server;
		public string user;
	}
	[CCode (cheader_filename = "gnome-keyring.h")]
	[Compact]
	public class PasswordSchema {
		[CCode (array_length = false, array_null_terminated = true)]
		public weak GnomeKeyring.PasswordSchemaAttribute[] attributes;
		public GnomeKeyring.ItemType item_type;
	}
	[CCode (cheader_filename = "gnome-keyring.h", has_type_id = false)]
	public struct PasswordSchemaAttribute {
		public weak string name;
		public GnomeKeyring.AttributeType type;
	}
	[CCode (cheader_filename = "gnome-keyring.h", cprefix = "GNOME_KEYRING_ACCESS_")]
	public enum AccessRestriction {
		ASK,
		DENY,
		ALLOW
	}
	[CCode (cheader_filename = "gnome-keyring.h", cprefix = "GNOME_KEYRING_ACCESS_")]
	[Flags]
	public enum AccessType {
		READ,
		WRITE,
		REMOVE
	}
	[CCode (cheader_filename = "gnome-keyring.h", cprefix = "GNOME_KEYRING_ATTRIBUTE_TYPE_")]
	public enum AttributeType {
		STRING,
		UINT32
	}
	[CCode (cheader_filename = "gnome-keyring.h", cprefix = "GNOME_KEYRING_ITEM_INFO_")]
	[Flags]
	public enum ItemInfoFlags {
		BASICS,
		SECRET
	}
	[CCode (cheader_filename = "gnome-keyring.h", cprefix = "GNOME_KEYRING_ITEM_")]
	public enum ItemType {
		GENERIC_SECRET,
		NETWORK_PASSWORD,
		NOTE,
		CHAINED_KEYRING_PASSWORD,
		ENCRYPTION_KEY_PASSWORD,
		PK_STORAGE,
		LAST_TYPE
	}
	[CCode (cheader_filename = "gnome-keyring.h", cprefix = "GNOME_KEYRING_RESULT_")]
	public enum Result {
		OK,
		DENIED,
		NO_KEYRING_DAEMON,
		ALREADY_UNLOCKED,
		NO_SUCH_KEYRING,
		BAD_ARGUMENTS,
		IO_ERROR,
		CANCELLED,
		KEYRING_ALREADY_EXISTS,
		NO_MATCH;
		public static unowned string to_message (GnomeKeyring.Result res);
	}
	[CCode (cheader_filename = "gnome-keyring.h", instance_pos = 1.9)]
	public delegate void OperationDoneCallback (GnomeKeyring.Result result);
	[CCode (cheader_filename = "gnome-keyring.h", instance_pos = 2.9)]
	public delegate void OperationGetAttributesCallback (GnomeKeyring.Result result, GnomeKeyring.AttributeList attributes);
	[CCode (cheader_filename = "gnome-keyring.h", instance_pos = 2.9)]
	public delegate void OperationGetIntCallback (GnomeKeyring.Result result, uint32 val);
	[CCode (cheader_filename = "gnome-keyring.h", instance_pos = 2.9)]
	public delegate void OperationGetItemInfoCallback (GnomeKeyring.Result result, GnomeKeyring.ItemInfo info);
	[CCode (cheader_filename = "gnome-keyring.h", instance_pos = 2.9)]
	public delegate void OperationGetKeyringInfoCallback (GnomeKeyring.Result result, GnomeKeyring.Info info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public delegate void OperationGetListCallback<T> (GnomeKeyring.Result result, GLib.List<T> list);
	[CCode (cheader_filename = "gnome-keyring.h", instance_pos = 2.9)]
	public delegate void OperationGetStringCallback (GnomeKeyring.Result result, string? string);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.PasswordSchema NETWORK_PASSWORD;
	[CCode (cheader_filename = "gnome-keyring.h")]
	public const string DEFAULT;
	[CCode (cheader_filename = "gnome-keyring.h", cname = "GNOME_KEYRING_ITEM_APPLICATION_SECRET")]
	public const int ITEM_APPLICATION_SECRET;
	[CCode (cheader_filename = "gnome-keyring.h", cname = "GNOME_KEYRING_ITEM_INFO_ALL")]
	public const int ITEM_INFO_ALL;
	[CCode (cheader_filename = "gnome-keyring.h", cname = "GNOME_KEYRING_ITEM_TYPE_MASK")]
	public const int ITEM_TYPE_MASK;
	[CCode (cheader_filename = "gnome-keyring.h", cname = "GNOME_KEYRING_SESSION")]
	public const string SESSION;
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GLib.List<GnomeKeyring.AccessControl> acl_copy (GLib.List<GnomeKeyring.AccessControl> list);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void acl_free (GLib.List<GnomeKeyring.AccessControl> acl);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void cancel_request (void* request);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* change_password (string keyring, string? original, string? password, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result change_password_sync (string keyring, string? original, string? password);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* create (string keyring_name, string? password, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result create_sync (string keyring_name, string? password);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result daemon_prepare_environment_sync ();
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result daemon_set_display_sync (string display);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* @delete (string keyring, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* delete_password (GnomeKeyring.PasswordSchema schema, [CCode (delegate_target_pos = 2.33333, destroy_notify_pos = 2.66667)] owned GnomeKeyring.OperationDoneCallback callback, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result delete_password_sync (GnomeKeyring.PasswordSchema schema, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result delete_sync (string keyring);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* find_items (GnomeKeyring.ItemType type, GnomeKeyring.AttributeList attributes, owned GnomeKeyring.OperationGetListCallback<GnomeKeyring.Found> callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result find_items_sync (GnomeKeyring.ItemType type, GnomeKeyring.AttributeList attributes, out GLib.List<GnomeKeyring.Found> found);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* find_itemsv (GnomeKeyring.ItemType type, [CCode (delegate_target_pos = 2.33333, destroy_notify_pos = 2.66667)] owned GnomeKeyring.OperationGetListCallback<GnomeKeyring.Found> callback, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result find_itemsv_sync (GnomeKeyring.ItemType type, out GLib.List<GnomeKeyring.Found> found, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* find_network_password (string? user, string? domain, string? server, string? object, string? protocol, string? authtype, uint32 port, owned GnomeKeyring.OperationGetListCallback<GnomeKeyring.NetworkPasswordData> callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result find_network_password_sync (string? user, string? domain, string? server, string? object, string? protocol, string? authtype, uint32 port, out GLib.List<GnomeKeyring.NetworkPasswordData> results);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* find_password (GnomeKeyring.PasswordSchema schema, [CCode (delegate_target_pos = 2.33333, destroy_notify_pos = 2.66667)] owned GnomeKeyring.OperationGetStringCallback callback, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result find_password_sync (GnomeKeyring.PasswordSchema schema, out string password, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void free_password (string password);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* get_default_keyring (owned GnomeKeyring.OperationGetStringCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result get_default_keyring_sync (out string keyring);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* get_info (string? keyring, owned GnomeKeyring.OperationGetKeyringInfoCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result get_info_sync (string? keyring, out GnomeKeyring.Info info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static bool is_available ();
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.AccessType item_ac_get_access_type (GnomeKeyring.AccessControl ac);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static string item_ac_get_display_name (GnomeKeyring.AccessControl ac);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static string item_ac_get_path_name (GnomeKeyring.AccessControl ac);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void item_ac_set_access_type (GnomeKeyring.AccessControl ac, GnomeKeyring.AccessType value);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void item_ac_set_display_name (GnomeKeyring.AccessControl ac, string value);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void item_ac_set_path_name (GnomeKeyring.AccessControl ac, string value);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_create (string? keyring, GnomeKeyring.ItemType type, string display_name, GnomeKeyring.AttributeList attributes, string secret, bool update_if_exists, owned GnomeKeyring.OperationGetIntCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_create_sync (string? keyring, GnomeKeyring.ItemType type, string display_name, GnomeKeyring.AttributeList attributes, string secret, bool update_if_exists, out uint32 item_id);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_delete (string? keyring, uint32 id, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_delete_sync (string? keyring, uint32 id);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_get_acl (string? keyring, uint32 id, owned GnomeKeyring.OperationGetListCallback<GnomeKeyring.AccessControl> callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_get_acl_sync (string? keyring, uint32 id, out GLib.List<GnomeKeyring.AccessControl> acl);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_get_attributes (string? keyring, uint32 id, owned GnomeKeyring.OperationGetAttributesCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_get_attributes_sync (string? keyring, uint32 id, GnomeKeyring.AttributeList attributes);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_get_info (string? keyring, uint32 id, owned GnomeKeyring.OperationGetItemInfoCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_get_info_full (string? keyring, uint32 id, uint32 flags, owned GnomeKeyring.OperationGetItemInfoCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_get_info_full_sync (string? keyring, uint32 id, uint32 flags, out GnomeKeyring.ItemInfo info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_get_info_sync (string? keyring, uint32 id, out GnomeKeyring.ItemInfo info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_grant_access_rights (string? keyring, string display_name, string full_path, uint32 id, GnomeKeyring.AccessType rights, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_grant_access_rights_sync (string? keyring, string display_name, string full_path, uint32 id, GnomeKeyring.AccessType rights);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_set_acl (string? keyring, uint32 id, GLib.List<GnomeKeyring.AccessControl> acl, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_set_acl_sync (string? keyring, uint32 id, GLib.List<GnomeKeyring.AccessControl> acl);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_set_attributes (string? keyring, uint32 id, GnomeKeyring.AttributeList attributes, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_set_attributes_sync (string? keyring, uint32 id, GnomeKeyring.AttributeList attributes);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* item_set_info (string? keyring, uint32 id, GnomeKeyring.ItemInfo info, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result item_set_info_sync (string? keyring, uint32 id, GnomeKeyring.ItemInfo info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* list_item_ids (string? keyring, owned GnomeKeyring.OperationGetListCallback<uint> callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result list_item_ids_sync (string? keyring, out GLib.List<uint> ids);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* list_keyring_names (owned GnomeKeyring.OperationGetListCallback<string> callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result list_keyring_names_sync (out GLib.List<string> keyrings);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* @lock (string? keyring, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* lock_all (owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result lock_all_sync ();
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result lock_sync (string? keyring);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* memory_alloc (ulong sz);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void memory_free (void* p);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static bool memory_is_secure (void* p);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* memory_realloc (void* p, ulong sz);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static string memory_strdup (string str);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* memory_try_alloc (ulong sz);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* memory_try_realloc (void* p, ulong sz);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void network_password_free (GnomeKeyring.NetworkPasswordData? data);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void network_password_list_free (GLib.List<GnomeKeyring.NetworkPasswordData> list);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static unowned string result_to_message (GnomeKeyring.Result res);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result set_default_keyring_sync (string keyring);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* set_info (string? keyring, GnomeKeyring.Info info, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result set_info_sync (string? keyring, GnomeKeyring.Info info);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* set_network_password (string? keyring, string? user, string? domain, string? server, string? object, string? protocol, string? authtype, uint32 port, string password, owned GnomeKeyring.OperationGetIntCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result set_network_password_sync (string? keyring, string? user, string? domain, string? server, string? object, string? protocol, string? authtype, uint32 port, string password, out uint32 item_id);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* store_password (GnomeKeyring.PasswordSchema schema, string? keyring, string display_name, string password, [CCode (delegate_target_pos = 5.33333, destroy_notify_pos = 5.66667)] owned GnomeKeyring.OperationDoneCallback callback, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result store_password_sync (GnomeKeyring.PasswordSchema schema, string? keyring, string display_name, string password, ...);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void string_list_free (GLib.List<string> strings);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static void* unlock (string? keyring, string? password, owned GnomeKeyring.OperationDoneCallback callback);
	[CCode (cheader_filename = "gnome-keyring.h")]
	public static GnomeKeyring.Result unlock_sync (string? keyring, string? password);
}

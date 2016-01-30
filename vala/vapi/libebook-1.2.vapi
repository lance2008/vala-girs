/* libebook-1.2.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "E", gir_namespace = "EBook", gir_version = "1.2", lower_case_cprefix = "e_")]
namespace E {
	[CCode (cheader_filename = "libebook/libebook.h", type_id = "e_book_client_get_type ()")]
	[Version (since = "3.2")]
	public class BookClient : E.Client, GLib.AsyncInitable, GLib.Initable {
		[CCode (has_construct_function = false)]
		[Version (deprecated = true, deprecated_since = "3.8", since = "3.2")]
		public BookClient (E.Source source) throws GLib.Error;
		public async bool add_contact (E.Contact contact, GLib.Cancellable? cancellable, out string out_added_uid) throws GLib.Error;
		public bool add_contact_sync (E.Contact contact, out string out_added_uid, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.4")]
		public async bool add_contacts (GLib.SList<E.Contact> contacts, GLib.Cancellable? cancellable, out GLib.SList<string> out_added_uids) throws GLib.Error;
		[Version (since = "3.4")]
		public bool add_contacts_sync (GLib.SList<E.Contact> contacts, out GLib.SList<string> out_added_uids, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.8")]
		public static async E.BookClient connect (E.Source source, uint32 wait_for_connected_seconds, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "3.12")]
		public static async E.BookClient connect_direct (E.Source source, uint32 wait_for_connected_seconds, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "3.8")]
		public static E.BookClient connect_direct_sync (E.SourceRegistry registry, E.Source source, uint32 wait_for_connected_seconds, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.8")]
		public static E.BookClient connect_sync (E.Source source, uint32 wait_for_connected_seconds, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool get_contact (string uid, GLib.Cancellable? cancellable, out E.Contact out_contact) throws GLib.Error;
		public bool get_contact_sync (string uid, out E.Contact out_contact, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool get_contacts (string sexp, GLib.Cancellable? cancellable, out GLib.SList<E.Contact> out_contacts) throws GLib.Error;
		public bool get_contacts_sync (string sexp, out GLib.SList<E.Contact> out_contacts, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool get_contacts_uids (string sexp, GLib.Cancellable? cancellable, out GLib.SList<string> out_contact_uids) throws GLib.Error;
		public bool get_contacts_uids_sync (string sexp, out GLib.SList<string> out_contact_uids, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.12")]
		public async bool get_cursor (string sexp, E.ContactField sort_fields, E.BookCursorSortType sort_types, uint n_fields, GLib.Cancellable? cancellable, out E.BookClientCursor out_cursor) throws GLib.Error;
		[Version (since = "3.12")]
		public bool get_cursor_sync (string sexp, E.ContactField sort_fields, E.BookCursorSortType sort_types, uint n_fields, out E.BookClientCursor out_cursor, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.12")]
		public unowned string get_locale ();
		public static bool get_self (E.SourceRegistry registry, out E.Contact out_contact, out E.BookClient out_client) throws GLib.Error;
		public async bool get_view (string sexp, GLib.Cancellable? cancellable, out E.BookClientView out_view) throws GLib.Error;
		public bool get_view_sync (string sexp, out E.BookClientView out_view, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public static bool is_self (E.Contact contact);
		public async bool modify_contact (E.Contact contact, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool modify_contact_sync (E.Contact contact, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[Version (since = "3.4")]
		public async bool modify_contacts (GLib.SList<E.Contact> contacts, GLib.Cancellable? cancellable) throws GLib.Error;
		[Version (since = "3.4")]
		public bool modify_contacts_sync (GLib.SList<E.Contact> contacts, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool remove_contact (E.Contact contact, GLib.Cancellable? cancellable) throws GLib.Error;
		public async bool remove_contact_by_uid (string uid, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool remove_contact_by_uid_sync (string uid, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool remove_contact_sync (E.Contact contact, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool remove_contacts (GLib.SList<string> uids, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool remove_contacts_sync (GLib.SList<string> uids, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public bool set_self (E.Contact contact) throws GLib.Error;
		[Version (since = "3.12")]
		public string locale { get; }
	}
	[CCode (cheader_filename = "libebook/libebook.h", type_id = "e_book_client_cursor_get_type ()")]
	[Version (since = "3.12")]
	public class BookClientCursor : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected BookClientCursor ();
		[CCode (array_length = false, array_null_terminated = true)]
		public unowned string[] get_alphabet (out int n_labels, out int underflow, out int inflow, out int overflow);
		public int get_contact_alphabetic_index (E.Contact contact);
		public int get_position ();
		public int get_total ();
		public void* ref_client ();
		public async bool set_alphabetic_index (int index, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_alphabetic_index_sync (int index, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool set_sexp (string sexp, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_sexp_sync (string sexp, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async int step (E.BookCursorStepFlags flags, E.BookCursorOrigin origin, int count, GLib.Cancellable? cancellable, out GLib.SList<E.Contact> out_contacts) throws GLib.Error;
		public int step_sync (E.BookCursorStepFlags flags, E.BookCursorOrigin origin, int count, out GLib.SList<E.Contact> out_contacts, GLib.Cancellable? cancellable = null) throws GLib.Error;
		[CCode (array_length = false, array_null_terminated = true)]
		[NoAccessorMethod]
		public string[] alphabet { owned get; }
		[NoAccessorMethod]
		public E.BookClient client { owned get; construct; }
		public GLib.DBusConnection connection { construct; }
		public GLib.MainContext context { construct; }
		public string object_path { construct; }
		public int position { get; }
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] sort_fields { construct; }
		public int total { get; }
		public virtual signal void refresh ();
	}
	[CCode (cheader_filename = "libebook/libebook.h", type_id = "e_book_client_view_get_type ()")]
	[Version (since = "3.2")]
	public class BookClientView : GLib.Object, GLib.Initable {
		[CCode (has_construct_function = false)]
		protected BookClientView ();
		[Version (deprecated = true, deprecated_since = "3.10")]
		public void* get_client ();
		[Version (since = "3.8")]
		public unowned GLib.DBusConnection get_connection ();
		[Version (since = "3.8")]
		public unowned string get_object_path ();
		public bool is_running ();
		[Version (since = "3.10")]
		public void* ref_client ();
		public void set_fields_of_interest (GLib.SList<string> fields_of_interest) throws GLib.Error;
		[Version (since = "3.4")]
		public void set_flags (E.BookClientViewFlags flags) throws GLib.Error;
		public void start () throws GLib.Error;
		public void stop () throws GLib.Error;
		public E.BookClient client { get; construct; }
		public GLib.DBusConnection connection { get; construct; }
		public string object_path { get; construct; }
		public virtual signal void complete (GLib.Error error);
		public signal void objects_added ([CCode (type = "gpointer")] GLib.List<void*> object);
		public signal void objects_modified ([CCode (type = "gpointer")] GLib.List<void*> object);
		public signal void objects_removed ([CCode (type = "gpointer")] GLib.List<void*> object);
		public virtual signal void progress (uint percent, string message);
	}
	[CCode (cheader_filename = "libebook/libebook.h", type_id = "e_destination_get_type ()")]
	public class Destination : GLib.Object {
		[CCode (has_construct_function = false)]
		public Destination ();
		public E.Destination copy ();
		public bool empty ();
		public bool equal (E.Destination b);
		public string export ();
		public void export_to_vcard_attribute (E.VCardAttribute attr);
		public static string exportv (E.Destination destv);
		public static void freev (E.Destination destv);
		public unowned string get_address ();
		public unowned E.Contact get_contact ();
		public unowned string get_contact_uid ();
		public unowned string get_email ();
		public int get_email_num ();
		public bool get_html_mail_pref ();
		public unowned string get_name ();
		public unowned string get_source_uid ();
		public unowned string get_textrep (bool include_email);
		public static string get_textrepv (E.Destination destv);
		public static E.Destination import (string str);
		public static E.Destination importv (string str);
		public bool is_auto_recipient ();
		public bool is_evolution_list ();
		public bool is_ignored ();
		[Version (since = "3.2")]
		public unowned GLib.List<E.Destination> list_get_dests ();
		[Version (since = "3.2")]
		public unowned GLib.List<E.Destination> list_get_root_dests ();
		public bool list_show_addresses ();
		public void set_auto_recipient (bool value);
		[Version (since = "3.2")]
		public void set_client (E.BookClient client);
		public void set_contact (E.Contact contact, int email_num);
		public void set_contact_uid (string uid, int email_num);
		public void set_email (string email);
		public void set_html_mail_pref (bool flag);
		public void set_ignored (bool ignored);
		public void set_name (string name);
		public void set_raw (string raw);
		public virtual signal void changed ();
	}
	[CCode (cheader_filename = "libebook/libebook.h", cprefix = "E_BOOK_ERROR_", type_id = "e_book_status_get_type ()")]
	[Version (deprecated = true, deprecated_since = "3.2")]
	public enum BookStatus {
		OK,
		INVALID_ARG,
		BUSY,
		REPOSITORY_OFFLINE,
		NO_SUCH_BOOK,
		NO_SELF_CONTACT,
		SOURCE_NOT_LOADED,
		SOURCE_ALREADY_LOADED,
		PERMISSION_DENIED,
		CONTACT_NOT_FOUND,
		CONTACT_ID_ALREADY_EXISTS,
		PROTOCOL_NOT_SUPPORTED,
		CANCELLED,
		COULD_NOT_CANCEL,
		AUTHENTICATION_FAILED,
		AUTHENTICATION_REQUIRED,
		TLS_NOT_AVAILABLE,
		DBUS_EXCEPTION,
		NO_SUCH_SOURCE,
		OFFLINE_UNAVAILABLE,
		OTHER_ERROR,
		INVALID_SERVER_VERSION,
		UNSUPPORTED_AUTHENTICATION_METHOD,
		NO_SPACE,
		NOT_SUPPORTED
	}
	[CCode (cheader_filename = "libebook/libebook.h")]
	public static GLib.Quark book_error_quark ();
}

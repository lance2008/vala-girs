/* libebook-contacts-1.2.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "E", gir_namespace = "EBookContacts", gir_version = "1.2", lower_case_cprefix = "e_")]
namespace E {
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", ref_function = "e_book_query_ref", type_id = "e_book_query_get_type ()", unref_function = "e_book_query_unref")]
	[Compact]
	public class BookQuery {
		public static E.BookQuery and (int nqs, E.BookQuery qs, bool unref);
		public static E.BookQuery any_field_contains (string value);
		public E.BookQuery copy ();
		public static E.BookQuery field_exists (E.ContactField field);
		public static E.BookQuery field_test (E.ContactField field, E.BookQueryTest test, string value);
		public static E.BookQuery from_string (string query_string);
		public E.BookQuery not (bool unref);
		public static E.BookQuery or (int nqs, E.BookQuery qs, bool unref);
		public E.BookQuery @ref ();
		public string to_string ();
		public void unref ();
		public static E.BookQuery vcard_field_exists (string field);
		public static E.BookQuery vcard_field_test (string field, E.BookQueryTest test, string value);
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", type_id = "e_contact_get_type ()")]
	public class Contact : E.VCard {
		[CCode (has_construct_function = false)]
		public Contact ();
		public E.Contact duplicate ();
		public static E.ContactField field_id (string field_name);
		public static E.ContactField field_id_from_vcard (string vcard_field);
		public static bool field_is_string (E.ContactField field_id);
		public static unowned string field_name (E.ContactField field_id);
		public static GLib.Type field_type (E.ContactField field_id);
		[CCode (has_construct_function = false)]
		public Contact.from_vcard (string vcard);
		[CCode (has_construct_function = false)]
		public Contact.from_vcard_with_uid (string vcard, string uid);
		[CCode (simple_generics = true)]
		public T @get<T> (E.ContactField field_id);
		public GLib.List<E.VCardAttribute> get_attributes (E.ContactField field_id);
		public GLib.List<E.VCardAttribute> get_attributes_set (E.ContactField field_ids, int size);
		[CCode (simple_generics = true)]
		public unowned T get_const<T> (E.ContactField field_id);
		public bool inline_local_photos () throws GLib.Error;
		public static unowned string pretty_name (E.ContactField field_id);
		[CCode (simple_generics = true)]
		public void @set<T> (E.ContactField field_id, T value);
		public void set_attributes (E.ContactField field_id, GLib.List<E.VCardAttribute> attributes);
		public static unowned string vcard_attribute (E.ContactField field_id);
		[NoAccessorMethod]
		public string Rev { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList address { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAddress address_home { owned get; set; }
		[NoAccessorMethod]
		public string address_label_home { owned get; set; }
		[NoAccessorMethod]
		public string address_label_other { owned get; set; }
		[NoAccessorMethod]
		public string address_label_work { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAddress address_other { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAddress address_work { owned get; set; }
		[NoAccessorMethod]
		public E.ContactDate anniversary { owned get; set; }
		[NoAccessorMethod]
		public string assistant { owned get; set; }
		[NoAccessorMethod]
		public string assistant_phone { owned get; set; }
		[NoAccessorMethod]
		public E.ContactDate birth_date { owned get; set; }
		[NoAccessorMethod]
		public string blog_url { owned get; set; }
		[NoAccessorMethod]
		public string book_uid { owned get; set; }
		[NoAccessorMethod]
		public string business_fax { owned get; set; }
		[NoAccessorMethod]
		public string business_phone { owned get; set; }
		[NoAccessorMethod]
		public string business_phone_2 { owned get; set; }
		[NoAccessorMethod]
		public string callback_phone { owned get; set; }
		[NoAccessorMethod]
		public string caluri { owned get; set; }
		[NoAccessorMethod]
		public string car_phone { owned get; set; }
		[NoAccessorMethod]
		public string categories { owned get; set; }
		[NoAccessorMethod]
		public void* category_list { get; set; }
		[NoAccessorMethod]
		public string company_phone { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList email { owned get; set; }
		[NoAccessorMethod]
		public string email_1 { owned get; set; }
		[NoAccessorMethod]
		public string email_2 { owned get; set; }
		[NoAccessorMethod]
		public string email_3 { owned get; set; }
		[NoAccessorMethod]
		public string email_4 { owned get; set; }
		[NoAccessorMethod]
		public string family_name { owned get; set; }
		[NoAccessorMethod]
		public string fburl { owned get; set; }
		[NoAccessorMethod]
		public string file_as { owned get; set; }
		[NoAccessorMethod]
		public string full_name { owned get; set; }
		[NoAccessorMethod]
		public E.ContactGeo geo { owned get; set; }
		[NoAccessorMethod]
		public string given_name { owned get; set; }
		[NoAccessorMethod]
		public string home_fax { owned get; set; }
		[NoAccessorMethod]
		public string home_phone { owned get; set; }
		[NoAccessorMethod]
		public string home_phone_2 { owned get; set; }
		[NoAccessorMethod]
		public string homepage_url { owned get; set; }
		[NoAccessorMethod]
		public string icscalendar { owned get; set; }
		[NoAccessorMethod]
		public string id { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_aim { owned get; set; }
		[NoAccessorMethod]
		public string im_aim_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_aim_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_aim_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_aim_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_aim_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_aim_work_3 { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_gadugadu { owned get; set; }
		[NoAccessorMethod]
		public string im_gadugadu_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_gadugadu_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_gadugadu_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_gadugadu_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_gadugadu_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_gadugadu_work_3 { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_google_talk { owned get; set; }
		[NoAccessorMethod]
		public string im_google_talk_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_google_talk_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_google_talk_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_google_talk_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_google_talk_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_google_talk_work_3 { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_groupwise { owned get; set; }
		[NoAccessorMethod]
		public string im_groupwise_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_groupwise_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_groupwise_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_groupwise_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_groupwise_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_groupwise_work_3 { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_icq { owned get; set; }
		[NoAccessorMethod]
		public string im_icq_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_icq_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_icq_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_icq_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_icq_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_icq_work_3 { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_jabber { owned get; set; }
		[NoAccessorMethod]
		public string im_jabber_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_jabber_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_jabber_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_jabber_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_jabber_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_jabber_work_3 { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_msn { owned get; set; }
		[NoAccessorMethod]
		public string im_msn_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_msn_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_msn_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_msn_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_msn_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_msn_work_3 { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_skype { owned get; set; }
		[NoAccessorMethod]
		public string im_skype_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_skype_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_skype_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_skype_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_skype_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_skype_work_3 { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_twitter { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList im_yahoo { owned get; set; }
		[NoAccessorMethod]
		public string im_yahoo_home_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_yahoo_home_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_yahoo_home_3 { owned get; set; }
		[NoAccessorMethod]
		public string im_yahoo_work_1 { owned get; set; }
		[NoAccessorMethod]
		public string im_yahoo_work_2 { owned get; set; }
		[NoAccessorMethod]
		public string im_yahoo_work_3 { owned get; set; }
		[NoAccessorMethod]
		public string isdn_phone { owned get; set; }
		[NoAccessorMethod]
		public bool list { get; set; }
		[NoAccessorMethod]
		public bool list_show_addresses { get; set; }
		[NoAccessorMethod]
		public E.ContactPhoto logo { owned get; set; }
		[NoAccessorMethod]
		public string mailer { owned get; set; }
		[NoAccessorMethod]
		public string manager { owned get; set; }
		[NoAccessorMethod]
		public string mobile_phone { owned get; set; }
		[NoAccessorMethod]
		public E.ContactName name { owned get; set; }
		[NoAccessorMethod]
		public string name_or_org { owned get; }
		[NoAccessorMethod]
		public string nickname { owned get; set; }
		[NoAccessorMethod]
		public string note { owned get; set; }
		[NoAccessorMethod]
		public string office { owned get; set; }
		[NoAccessorMethod]
		public string org { owned get; set; }
		[NoAccessorMethod]
		public string org_unit { owned get; set; }
		[NoAccessorMethod]
		public string other_fax { owned get; set; }
		[NoAccessorMethod]
		public string other_phone { owned get; set; }
		[NoAccessorMethod]
		public string pager { owned get; set; }
		[NoAccessorMethod]
		public E.ContactCert pgpCert { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList phone { owned get; set; }
		[NoAccessorMethod]
		public E.ContactPhoto photo { owned get; set; }
		[NoAccessorMethod]
		public string primary_phone { owned get; set; }
		[NoAccessorMethod]
		public string radio { owned get; set; }
		[NoAccessorMethod]
		public string role { owned get; set; }
		[NoAccessorMethod]
		public E.ContactAttrList sip { owned get; set; }
		[NoAccessorMethod]
		public string spouse { owned get; set; }
		[NoAccessorMethod]
		public string telex { owned get; set; }
		[NoAccessorMethod]
		public string title { owned get; set; }
		[NoAccessorMethod]
		public string tty { owned get; set; }
		[NoAccessorMethod]
		public string video_url { owned get; set; }
		[NoAccessorMethod]
		public bool wants_html { get; set; }
		[NoAccessorMethod]
		public E.ContactCert x509Cert { owned get; set; }
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_contact_address_get_type ()")]
	[Compact]
	public class ContactAddress {
		public string address_format;
		public string code;
		public string country;
		public string ext;
		public string locality;
		public string po;
		public string region;
		public string street;
		[CCode (has_construct_function = false)]
		public ContactAddress ();
		public void free ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_contact_attr_list_get_type ()")]
	[Compact]
	public class ContactAttrList {
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_contact_cert_get_type ()")]
	[Compact]
	public class ContactCert {
		public weak string data;
		public size_t length;
		[CCode (has_construct_function = false)]
		public ContactCert ();
		public void free ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_contact_date_get_type ()")]
	[Compact]
	public class ContactDate {
		public uint day;
		public uint month;
		public uint year;
		[CCode (has_construct_function = false)]
		public ContactDate ();
		public bool equal (E.ContactDate dt2);
		public void free ();
		public static E.ContactDate from_string (string str);
		public string to_string ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_contact_geo_get_type ()")]
	[Compact]
	public class ContactGeo {
		public double latitude;
		public double longitude;
		[CCode (has_construct_function = false)]
		public ContactGeo ();
		public void free ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_contact_name_get_type ()")]
	[Compact]
	public class ContactName {
		public string additional;
		public string family;
		public string given;
		public string prefixes;
		public string suffixes;
		[CCode (has_construct_function = false)]
		public ContactName ();
		public E.ContactName copy ();
		public void free ();
		public static E.ContactName from_string (string name_str);
		public string to_string ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_contact_photo_get_type ()")]
	[Compact]
	public class ContactPhoto {
		[CCode (cname = "data.inlined.data")]
		public uint8 data_inlined_data;
		[CCode (cname = "data.inlined.length")]
		public size_t data_inlined_length;
		[CCode (cname = "data.inlined.mime_type")]
		public weak string data_inlined_mime_type;
		[CCode (cname = "data.uri")]
		public weak string data_uri;
		public E.ContactPhotoType type;
		[CCode (has_construct_function = false)]
		public ContactPhoto ();
		public E.ContactPhoto copy ();
		public void free ();
		[CCode (array_length_pos = 0.1, array_length_type = "gsize")]
		public unowned uint8[]? get_inlined ();
		public unowned string? get_mime_type ();
		public unowned string? get_uri ();
		public void set_inlined ([CCode (array_length_cname = "len", array_length_pos = 1.1, array_length_type = "gsize")] uint8[] data);
		public void set_mime_type (string mime_type);
		public void set_uri (string uri);
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_phone_number_get_type ()")]
	[Compact]
	public class PhoneNumber {
		public E.PhoneNumberMatch compare (E.PhoneNumber second_number);
		public static E.PhoneNumberMatch compare_strings (string first_number, string second_number) throws GLib.Error;
		public static E.PhoneNumberMatch compare_strings_with_region (string first_number, string second_number, string? region_code) throws GLib.Error;
		public E.PhoneNumber copy ();
		public void free ();
		public static E.PhoneNumber from_string (string phone_number, string? region_code) throws GLib.Error;
		public int get_country_code (E.PhoneNumberCountrySource source);
		public static int get_country_code_for_region (string? region_code) throws GLib.Error;
		public static string get_default_region () throws GLib.Error;
		public string get_national_number ();
		public static bool is_supported ();
		public string to_string (E.PhoneNumberFormat format);
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", type_id = "e_source_backend_summary_setup_get_type ()")]
	public class SourceBackendSummarySetup : E.SourceExtension {
		[CCode (has_construct_function = false)]
		protected SourceBackendSummarySetup ();
		public E.ContactField get_indexed_fields (out E.BookIndexType types, out int n_fields);
		public E.ContactField get_summary_fields (out int n_fields);
		public void set_indexed_fieldsv (E.ContactField fields, E.BookIndexType types, int n_fields);
		public void set_summary_fieldsv (E.ContactField fields, int n_fields);
		[NoAccessorMethod]
		public string indexed_fields { owned get; set construct; }
		[NoAccessorMethod]
		public string summary_fields { owned get; set construct; }
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", type_id = "e_vcard_get_type ()")]
	public class VCard : GLib.Object {
		[CCode (has_construct_function = false)]
		public VCard ();
		public void add_attribute (owned E.VCardAttribute attr);
		public void add_attribute_with_value (owned E.VCardAttribute attr, string value);
		public void append_attribute (owned E.VCardAttribute attr);
		public void append_attribute_with_value (owned E.VCardAttribute attr, string value);
		public void @construct (string str);
		public void construct_full (string str, ssize_t len, string? uid);
		public void construct_with_uid (string str, string? uid);
		public void dump_structure ();
		public static string escape_string (string s);
		[CCode (has_construct_function = false)]
		public VCard.from_string (string str);
		public unowned E.VCardAttribute? get_attribute (string name);
		public unowned E.VCardAttribute? get_attribute_if_parsed (string name);
		public unowned GLib.List<E.VCardAttribute> get_attributes ();
		public bool is_parsed ();
		public void remove_attribute (owned E.VCardAttribute attr);
		public void remove_attributes (string? attr_group, string attr_name);
		public string to_string (E.VCardFormat format);
		public static string unescape_string (string s);
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_vcard_attribute_get_type ()")]
	[Compact]
	public class VCardAttribute {
		[CCode (has_construct_function = false)]
		public VCardAttribute (string? attr_group, string attr_name);
		public void add_param (owned E.VCardAttributeParam param);
		public void add_param_with_value (owned E.VCardAttributeParam param, string value);
		public void add_value (string value);
		public void add_value_decoded (string value, int len);
		public E.VCardAttribute copy ();
		public void free ();
		public unowned string? get_group ();
		public unowned string get_name ();
		public unowned GLib.List<string> get_param (string name);
		public unowned GLib.List<E.VCardAttributeParam> get_params ();
		public string? get_value ();
		public GLib.StringBuilder get_value_decoded ();
		public unowned GLib.List<string> get_values ();
		public unowned GLib.List<GLib.StringBuilder> get_values_decoded ();
		public bool has_type (string typestr);
		public bool is_single_valued ();
		public void remove_param (string param_name);
		public void remove_param_value (string param_name, string s);
		public void remove_params ();
		public void remove_value (string s);
		public void remove_values ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "e_vcard_attribute_param_get_type ()")]
	[Compact]
	public class VCardAttributeParam {
		[CCode (has_construct_function = false)]
		public VCardAttributeParam (string name);
		public void add_value (string value);
		public E.VCardAttributeParam copy ();
		public void free ();
		public unowned string get_name ();
		public unowned GLib.List<string> get_values ();
		public void remove_values ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", has_type_id = false)]
	public struct AddressWestern {
		public weak string po_box;
		public weak string extended;
		public weak string street;
		public weak string locality;
		public weak string region;
		public weak string postal_code;
		public weak string country;
		public void free ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", has_type_id = false)]
	[Deprecated (since = "3.2")]
	public struct BookChange {
		public E.BookChangeType change_type;
		public weak E.Contact contact;
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", has_type_id = false)]
	public struct NameWestern {
		public weak string prefix;
		public weak string first;
		public weak string middle;
		public weak string nick;
		public weak string last;
		public weak string suffix;
		public weak string full;
		public void free ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_CHANGE_CARD_", type_id = "e_book_change_type_get_type ()")]
	[Deprecated (since = "3.2")]
	public enum BookChangeType {
		ADDED,
		DELETED,
		MODIFIED
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_CLIENT_VIEW_FLAGS_", type_id = "e_book_client_view_flags_get_type ()")]
	[Flags]
	public enum BookClientViewFlags {
		NONE,
		NOTIFY_INITIAL
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_CURSOR_ORIGIN_", type_id = "e_book_cursor_origin_get_type ()")]
	public enum BookCursorOrigin {
		CURRENT,
		BEGIN,
		END
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_CURSOR_SORT_", type_id = "e_book_cursor_sort_type_get_type ()")]
	public enum BookCursorSortType {
		ASCENDING,
		DESCENDING
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_CURSOR_STEP_", type_id = "e_book_cursor_step_flags_get_type ()")]
	[Flags]
	public enum BookCursorStepFlags {
		MOVE,
		FETCH
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_INDEX_", type_id = "e_book_index_type_get_type ()")]
	public enum BookIndexType {
		PREFIX,
		SUFFIX,
		PHONE,
		SORT_KEY
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_QUERY_", has_type_id = false)]
	public enum BookQueryTest {
		IS,
		CONTAINS,
		BEGINS_WITH,
		ENDS_WITH,
		EQUALS_PHONE_NUMBER,
		EQUALS_NATIONAL_PHONE_NUMBER,
		EQUALS_SHORT_PHONE_NUMBER,
		REGEX_NORMAL,
		REGEX_RAW,
		LAST
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_VIEW_", type_id = "e_book_view_status_get_type ()")]
	[Deprecated (since = "3.2")]
	public enum BookViewStatus {
		STATUS_OK,
		STATUS_TIME_LIMIT_EXCEEDED,
		STATUS_SIZE_LIMIT_EXCEEDED,
		ERROR_INVALID_QUERY,
		ERROR_QUERY_REFUSED,
		ERROR_OTHER_ERROR
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_CONTACT_", has_type_id = false)]
	public enum ContactField {
		UID,
		FILE_AS,
		BOOK_UID,
		FULL_NAME,
		GIVEN_NAME,
		FAMILY_NAME,
		NICKNAME,
		EMAIL_1,
		EMAIL_2,
		EMAIL_3,
		EMAIL_4,
		MAILER,
		ADDRESS_LABEL_HOME,
		ADDRESS_LABEL_WORK,
		ADDRESS_LABEL_OTHER,
		PHONE_ASSISTANT,
		PHONE_BUSINESS,
		PHONE_BUSINESS_2,
		PHONE_BUSINESS_FAX,
		PHONE_CALLBACK,
		PHONE_CAR,
		PHONE_COMPANY,
		PHONE_HOME,
		PHONE_HOME_2,
		PHONE_HOME_FAX,
		PHONE_ISDN,
		PHONE_MOBILE,
		PHONE_OTHER,
		PHONE_OTHER_FAX,
		PHONE_PAGER,
		PHONE_PRIMARY,
		PHONE_RADIO,
		PHONE_TELEX,
		PHONE_TTYTDD,
		ORG,
		ORG_UNIT,
		OFFICE,
		TITLE,
		ROLE,
		MANAGER,
		ASSISTANT,
		HOMEPAGE_URL,
		BLOG_URL,
		CATEGORIES,
		CALENDAR_URI,
		FREEBUSY_URL,
		ICS_CALENDAR,
		VIDEO_URL,
		SPOUSE,
		NOTE,
		IM_AIM_HOME_1,
		IM_AIM_HOME_2,
		IM_AIM_HOME_3,
		IM_AIM_WORK_1,
		IM_AIM_WORK_2,
		IM_AIM_WORK_3,
		IM_GROUPWISE_HOME_1,
		IM_GROUPWISE_HOME_2,
		IM_GROUPWISE_HOME_3,
		IM_GROUPWISE_WORK_1,
		IM_GROUPWISE_WORK_2,
		IM_GROUPWISE_WORK_3,
		IM_JABBER_HOME_1,
		IM_JABBER_HOME_2,
		IM_JABBER_HOME_3,
		IM_JABBER_WORK_1,
		IM_JABBER_WORK_2,
		IM_JABBER_WORK_3,
		IM_YAHOO_HOME_1,
		IM_YAHOO_HOME_2,
		IM_YAHOO_HOME_3,
		IM_YAHOO_WORK_1,
		IM_YAHOO_WORK_2,
		IM_YAHOO_WORK_3,
		IM_MSN_HOME_1,
		IM_MSN_HOME_2,
		IM_MSN_HOME_3,
		IM_MSN_WORK_1,
		IM_MSN_WORK_2,
		IM_MSN_WORK_3,
		IM_ICQ_HOME_1,
		IM_ICQ_HOME_2,
		IM_ICQ_HOME_3,
		IM_ICQ_WORK_1,
		IM_ICQ_WORK_2,
		IM_ICQ_WORK_3,
		REV,
		NAME_OR_ORG,
		ADDRESS,
		ADDRESS_HOME,
		ADDRESS_WORK,
		ADDRESS_OTHER,
		CATEGORY_LIST,
		PHOTO,
		LOGO,
		NAME,
		EMAIL,
		IM_AIM,
		IM_GROUPWISE,
		IM_JABBER,
		IM_YAHOO,
		IM_MSN,
		IM_ICQ,
		WANTS_HTML,
		IS_LIST,
		LIST_SHOW_ADDRESSES,
		BIRTH_DATE,
		ANNIVERSARY,
		X509_CERT,
		PGP_CERT,
		IM_GADUGADU_HOME_1,
		IM_GADUGADU_HOME_2,
		IM_GADUGADU_HOME_3,
		IM_GADUGADU_WORK_1,
		IM_GADUGADU_WORK_2,
		IM_GADUGADU_WORK_3,
		IM_GADUGADU,
		GEO,
		TEL,
		IM_SKYPE_HOME_1,
		IM_SKYPE_HOME_2,
		IM_SKYPE_HOME_3,
		IM_SKYPE_WORK_1,
		IM_SKYPE_WORK_2,
		IM_SKYPE_WORK_3,
		IM_SKYPE,
		SIP,
		IM_GOOGLE_TALK_HOME_1,
		IM_GOOGLE_TALK_HOME_2,
		IM_GOOGLE_TALK_HOME_3,
		IM_GOOGLE_TALK_WORK_1,
		IM_GOOGLE_TALK_WORK_2,
		IM_GOOGLE_TALK_WORK_3,
		IM_GOOGLE_TALK,
		IM_TWITTER,
		FIELD_LAST,
		FIELD_FIRST,
		LAST_SIMPLE_STRING,
		FIRST_PHONE_ID,
		LAST_PHONE_ID,
		FIRST_EMAIL_ID,
		LAST_EMAIL_ID,
		FIRST_ADDRESS_ID,
		LAST_ADDRESS_ID,
		FIRST_LABEL_ID,
		LAST_LABEL_ID
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_CONTACT_PHOTO_TYPE_", has_type_id = false)]
	public enum ContactPhotoType {
		INLINED,
		URI
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_DATA_BOOK_STATUS_", type_id = "e_data_book_status_get_type ()")]
	public enum DataBookStatus {
		SUCCESS,
		BUSY,
		REPOSITORY_OFFLINE,
		PERMISSION_DENIED,
		CONTACT_NOT_FOUND,
		CONTACTID_ALREADY_EXISTS,
		AUTHENTICATION_FAILED,
		AUTHENTICATION_REQUIRED,
		UNSUPPORTED_FIELD,
		UNSUPPORTED_AUTHENTICATION_METHOD,
		TLS_NOT_AVAILABLE,
		NO_SUCH_BOOK,
		BOOK_REMOVED,
		OFFLINE_UNAVAILABLE,
		SEARCH_SIZE_LIMIT_EXCEEDED,
		SEARCH_TIME_LIMIT_EXCEEDED,
		INVALID_QUERY,
		QUERY_REFUSED,
		COULD_NOT_CANCEL,
		OTHER_ERROR,
		INVALID_SERVER_VERSION,
		NO_SPACE,
		INVALID_ARG,
		NOT_SUPPORTED,
		NOT_OPENED,
		OUT_OF_SYNC
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_PHONE_NUMBER_COUNTRY_FROM_", has_type_id = false)]
	public enum PhoneNumberCountrySource {
		FQTN,
		IDD,
		DEFAULT
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_PHONE_NUMBER_FORMAT_", has_type_id = false)]
	public enum PhoneNumberFormat {
		E164,
		INTERNATIONAL,
		NATIONAL,
		RFC3966
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_PHONE_NUMBER_MATCH_", has_type_id = false)]
	public enum PhoneNumberMatch {
		NONE,
		EXACT,
		NATIONAL,
		SHORT
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "EVC_FORMAT_VCARD_", has_type_id = false)]
	public enum VCardFormat {
		@21,
		@30
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_BOOK_CLIENT_ERROR_")]
	public errordomain BookClientError {
		NO_SUCH_BOOK,
		CONTACT_NOT_FOUND,
		CONTACT_ID_ALREADY_EXISTS,
		NO_SUCH_SOURCE,
		NO_SPACE;
		[Deprecated (since = "3.8")]
		public static GLib.Error create (E.BookClientError code, string custom_msg);
		public static GLib.Quark quark ();
		public static unowned string to_string (E.BookClientError code);
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cprefix = "E_PHONE_NUMBER_ERROR_")]
	public errordomain PhoneNumberError {
		NOT_IMPLEMENTED,
		UNKNOWN,
		NOT_A_NUMBER,
		INVALID_COUNTRY_CODE,
		TOO_SHORT_AFTER_IDD,
		TOO_SHORT,
		TOO_LONG;
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cname = "E_SOURCE_EXTENSION_BACKEND_SUMMARY_SETUP")]
	public const string SOURCE_EXTENSION_BACKEND_SUMMARY_SETUP;
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cname = "E_VCARD_21_VALID_PARAMETERS")]
	public const string VCARD_21_VALID_PARAMETERS;
	[CCode (cheader_filename = "libebook-contacts/libebook-contacts.h", cname = "E_VCARD_21_VALID_PROPERTIES")]
	public const string VCARD_21_VALID_PROPERTIES;
}

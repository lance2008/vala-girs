/* libbamf3.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Bamf", gir_namespace = "Bamf", gir_version = "3", lower_case_cprefix = "bamf_")]
namespace Bamf {
	[CCode (cheader_filename = "libbamf/libbamf.h", type_id = "bamf_application_get_type ()")]
	public class Application : Bamf.View {
		[CCode (has_construct_function = false)]
		protected Application ();
		[Deprecated (since = "0.5.0")]
		public bool get_application_menu (out string name, out string object_path);
		public unowned string get_application_type ();
		public unowned string get_desktop_file ();
		public unowned Bamf.View get_focusable_child ();
		public bool get_show_menu_stubs ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_supported_mime_types ();
		public GLib.List<weak Bamf.Window> get_windows ();
		public GLib.Array<uint32> get_xids ();
		public signal void desktop_file_updated (string object);
		public signal void window_added (Bamf.Window object);
		public signal void window_removed (Bamf.Window object);
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", type_id = "bamf_control_get_type ()")]
	public class Control : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Control ();
		public void create_local_desktop_file (Bamf.Application application);
		public static Bamf.Control get_default ();
		public void insert_desktop_file (string desktop_file);
		public void register_application_for_pid (string desktop_file, int32 pid);
		public void set_approver_behavior (int32 behavior);
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", type_id = "bamf_matcher_get_type ()")]
	public class Matcher : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Matcher ();
		public bool application_is_running (string desktop_file);
		public unowned Bamf.Application get_active_application ();
		public unowned Bamf.Window get_active_window ();
		public unowned Bamf.Application get_application_for_desktop_file (string desktop_file_path, bool create_if_not_found);
		public unowned Bamf.Application get_application_for_window (Bamf.Window window);
		public unowned Bamf.Application get_application_for_xid (uint32 xid);
		public GLib.List<weak Bamf.Application> get_applications ();
		public static Bamf.Matcher get_default ();
		public GLib.List<weak Bamf.Application> get_running_applications ();
		public GLib.List<weak Bamf.Tab> get_tabs ();
		public GLib.List<weak Bamf.Window> get_window_stack_for_monitor (int monitor);
		public GLib.List<weak Bamf.Window> get_windows ();
		public GLib.Array<uint32> get_xids_for_application (string desktop_file);
		public void register_favorites ([CCode (array_length = false)] string[] favorites);
		public signal void active_application_changed (Bamf.Application object, Bamf.Application p0);
		public signal void active_window_changed (Bamf.Window object, Bamf.Window p0);
		public signal void stacking_order_changed ();
		public signal void view_closed (Bamf.View object);
		public signal void view_opened (Bamf.View object);
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", type_id = "bamf_tab_get_type ()")]
	public class Tab : Bamf.View {
		[CCode (has_construct_function = false)]
		protected Tab ();
		public bool close ();
		public virtual unowned string get_desktop_name ();
		public virtual bool get_is_foreground_tab ();
		public virtual unowned string get_location ();
		public virtual uint64 get_xid ();
		public bool raise ();
		public void request_preview ([CCode (scope = "async")] owned Bamf.TabPreviewReadyCallback callback);
		[NoAccessorMethod]
		public string desktop_id { owned get; }
		public bool is_foreground_tab { get; }
		public string location { get; }
		public uint64 xid { get; }
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", type_id = "bamf_view_get_type ()")]
	public class View : GLib.InitiallyUnowned {
		[CCode (has_construct_function = false)]
		protected View ();
		[NoWrapper]
		public virtual Bamf.ClickBehavior click_behavior ();
		public virtual GLib.List<weak Bamf.View> get_children ();
		public Bamf.ClickBehavior get_click_suggestion ();
		public virtual string get_icon ();
		public virtual string get_name ();
		[CCode (vfunc_name = "view_type")]
		public virtual unowned string get_view_type ();
		public virtual bool is_active ();
		public bool is_closed ();
		public virtual bool is_running ();
		public bool is_sticky ();
		public virtual bool is_urgent ();
		public virtual bool is_user_visible ();
		[NoWrapper]
		public virtual void set_path (string path);
		public virtual void set_sticky (bool value);
		[NoAccessorMethod]
		public bool active { get; }
		[NoAccessorMethod]
		public string path { owned get; }
		[NoAccessorMethod]
		public bool running { get; }
		[NoAccessorMethod]
		public bool urgent { get; }
		[NoAccessorMethod]
		public bool user_visible { get; }
		public virtual signal void active_changed (bool active);
		public virtual signal void child_added (Bamf.View child);
		public virtual signal void child_moved (Bamf.View child);
		public virtual signal void child_removed (Bamf.View child);
		public virtual signal void closed ();
		public virtual signal void icon_changed (string icon);
		public virtual signal void name_changed (string old_name, string new_name);
		public virtual signal void running_changed (bool running);
		public virtual signal void urgent_changed (bool urgent);
		public virtual signal void user_visible_changed (bool user_visible);
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", type_id = "bamf_window_get_type ()")]
	public class Window : Bamf.View {
		[CCode (has_construct_function = false)]
		protected Window ();
		public virtual int get_monitor ();
		public virtual uint32 get_pid ();
		public virtual unowned Bamf.Window get_transient ();
		public virtual string get_utf8_prop (string prop);
		public virtual Bamf.WindowType get_window_type ();
		public virtual uint32 get_xid ();
		public virtual long last_active ();
		public virtual Bamf.WindowMaximizationType maximized ();
		public virtual signal void maximized_changed (int old_value, int new_value);
		public virtual signal void monitor_changed (int old_value, int new_value);
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", cprefix = "BAMF_CLICK_BEHAVIOR_", has_type_id = false)]
	public enum ClickBehavior {
		NONE,
		OPEN,
		FOCUS,
		FOCUS_ALL,
		MINIMIZE,
		RESTORE,
		RESTORE_ALL,
		PICKER
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", cprefix = "BAMF_WINDOW_", has_type_id = false)]
	public enum WindowMaximizationType {
		FLOATING,
		HORIZONTAL_MAXIMIZED,
		VERTICAL_MAXIMIZED,
		MAXIMIZED
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", cprefix = "BAMF_WINDOW_", has_type_id = false)]
	public enum WindowType {
		NORMAL,
		DESKTOP,
		DOCK,
		DIALOG,
		TOOLBAR,
		MENU,
		UTILITY,
		SPLASHSCREEN,
		UNKNOWN
	}
	[CCode (cheader_filename = "libbamf/libbamf.h", instance_pos = 2.9)]
	public delegate void TabPreviewReadyCallback (Bamf.Tab self, string preview_data);
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_APPLICATION_SIGNAL_DESKTOP_FILE_UPDATED")]
	public const string APPLICATION_SIGNAL_DESKTOP_FILE_UPDATED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_APPLICATION_SIGNAL_WINDOW_ADDED")]
	public const string APPLICATION_SIGNAL_WINDOW_ADDED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_APPLICATION_SIGNAL_WINDOW_REMOVED")]
	public const string APPLICATION_SIGNAL_WINDOW_REMOVED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_MATCHER_SIGNAL_ACTIVE_APPLICATION_CHANGED")]
	public const string MATCHER_SIGNAL_ACTIVE_APPLICATION_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_MATCHER_SIGNAL_ACTIVE_WINDOW_CHANGED")]
	public const string MATCHER_SIGNAL_ACTIVE_WINDOW_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_MATCHER_SIGNAL_STACKING_ORDER_CHANGED")]
	public const string MATCHER_SIGNAL_STACKING_ORDER_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_MATCHER_SIGNAL_VIEW_CLOSED")]
	public const string MATCHER_SIGNAL_VIEW_CLOSED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_MATCHER_SIGNAL_VIEW_OPENED")]
	public const string MATCHER_SIGNAL_VIEW_OPENED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_ACTIVE_CHANGED")]
	public const string VIEW_SIGNAL_ACTIVE_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_CHILD_ADDED")]
	public const string VIEW_SIGNAL_CHILD_ADDED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_CHILD_MOVED")]
	public const string VIEW_SIGNAL_CHILD_MOVED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_CHILD_REMOVED")]
	public const string VIEW_SIGNAL_CHILD_REMOVED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_CLOSED")]
	public const string VIEW_SIGNAL_CLOSED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_ICON_CHANGED")]
	public const string VIEW_SIGNAL_ICON_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_NAME_CHANGED")]
	public const string VIEW_SIGNAL_NAME_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_RUNNING_CHANGED")]
	public const string VIEW_SIGNAL_RUNNING_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_URGENT_CHANGED")]
	public const string VIEW_SIGNAL_URGENT_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_VIEW_SIGNAL_USER_VISIBLE_CHANGED")]
	public const string VIEW_SIGNAL_USER_VISIBLE_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_WINDOW_SIGNAL_MAXIMIZED_CHANGED")]
	public const string WINDOW_SIGNAL_MAXIMIZED_CHANGED;
	[CCode (cheader_filename = "libbamf/libbamf.h", cname = "BAMF_WINDOW_SIGNAL_MONITOR_CHANGED")]
	public const string WINDOW_SIGNAL_MONITOR_CHANGED;
}

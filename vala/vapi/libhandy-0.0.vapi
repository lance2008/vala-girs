/* libhandy-0.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Hdy", gir_namespace = "Handy", gir_version = "0.0", lower_case_cprefix = "hdy_")]
namespace Hdy {
	[CCode (cheader_filename = "handy.h", type_id = "hdy_action_row_get_type ()")]
	public class ActionRow : Gtk.ListBoxRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.6")]
		public ActionRow ();
		public virtual void activate ();
		[Version (since = "0.0.6")]
		public void add_action (Gtk.Widget? widget);
		[Version (since = "0.0.6")]
		public void add_prefix (Gtk.Widget? widget);
		[Version (since = "0.0.7")]
		public unowned Gtk.Widget? get_activatable_widget ();
		[Version (since = "0.0.6")]
		public unowned string get_icon_name ();
		[Version (since = "0.0.6")]
		public unowned string get_subtitle ();
		[Version (since = "0.0.6")]
		public unowned string get_title ();
		[Version (since = "0.0.6")]
		public bool get_use_underline ();
		[Version (since = "0.0.7")]
		public void set_activatable_widget (Gtk.Widget? widget);
		[Version (since = "0.0.6")]
		public void set_icon_name (string icon_name);
		[Version (since = "0.0.6")]
		public void set_subtitle (string subtitle);
		[Version (since = "0.0.6")]
		public void set_title (string title);
		[Version (since = "0.0.6")]
		public void set_use_underline (bool use_underline);
		[Version (since = "0.0.7")]
		public Gtk.Widget activatable_widget { get; set; }
		[Version (since = "0.0.6")]
		public string icon_name { get; set; }
		[Version (since = "0.0.6")]
		public string subtitle { get; set; }
		[Version (since = "0.0.6")]
		public string title { get; set; }
		[Version (since = "0.0.6")]
		public bool use_underline { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_arrows_get_type ()")]
	public class Arrows : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Arrows ();
		public void animate ();
		public uint get_count ();
		public Hdy.ArrowsDirection get_direction ();
		public uint get_duration ();
		public void set_count (uint count);
		public void set_direction (Hdy.ArrowsDirection direction);
		public void set_duration (uint duration);
		public uint count { get; set; }
		public Hdy.ArrowsDirection direction { get; set; }
		public uint duration { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_column_get_type ()")]
	public class Column : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public Column ();
		public int get_linear_growth_width ();
		public int get_maximum_width ();
		public void set_linear_growth_width (int linear_growth_width);
		public void set_maximum_width (int maximum_width);
		public int linear_growth_width { get; set; }
		public int maximum_width { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_combo_row_get_type ()")]
	public class ComboRow : Hdy.ActionRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.6")]
		public ComboRow ();
		[Version (since = "0.0.6")]
		public void bind_model (GLib.ListModel? model, Gtk.ListBoxCreateWidgetFunc? create_list_widget_func, owned Gtk.ListBoxCreateWidgetFunc? create_current_widget_func);
		[Version (since = "0.0.6")]
		public void bind_name_model (GLib.ListModel? model, owned Hdy.ComboRowGetNameFunc? get_name_func);
		[Version (since = "0.0.6")]
		public unowned GLib.ListModel? get_model ();
		[Version (since = "0.0.7")]
		public int get_selected_index ();
		[Version (since = "0.0.6")]
		public void set_for_enum (GLib.Type enum_type, owned Hdy.ComboRowGetEnumValueNameFunc? get_name_func);
		[Version (since = "0.0.7")]
		public void set_selected_index (int selected_index);
		[Version (since = "0.0.7")]
		public int selected_index { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_dialer_get_type ()")]
	public class Dialer : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Dialer ();
		public void clear_number ();
		public unowned string get_number ();
		public Gtk.ReliefStyle get_relief ();
		public bool get_show_action_buttons ();
		public void set_number (string number);
		public void set_relief (Gtk.ReliefStyle relief);
		public void set_show_action_buttons (bool show);
		[NoAccessorMethod]
		public uint column_spacing { get; set; }
		public string number { get; set; }
		public Gtk.ReliefStyle relief { get; set; }
		[NoAccessorMethod]
		public uint row_spacing { get; set; }
		public bool show_action_buttons { get; set; }
		public signal void deleted ();
		public virtual signal void submitted (string number);
		public signal void symbol_clicked (char button);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_dialer_button_get_type ()")]
	public class DialerButton : Gtk.Button, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DialerButton (string? symbols);
		public int get_digit ();
		public unowned string get_symbols ();
		public int digit { get; }
		[NoAccessorMethod]
		public string symbols { owned get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_dialer_cycle_button_get_type ()")]
	public class DialerCycleButton : Hdy.DialerButton, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public DialerCycleButton (string symbols);
		public unichar get_current_symbol ();
		public int get_cycle_timeout ();
		public bool is_cycling ();
		public void set_cycle_timeout (int timeout);
		public void stop_cycle ();
		public int cycle_timeout { get; set construct; }
		public virtual signal void cycle_end ();
		public virtual signal void cycle_start ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_dialog_get_type ()")]
	public class Dialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "0.0.7")]
		public Dialog (Gtk.Window parent);
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_enum_value_object_get_type ()")]
	public class EnumValueObject : GLib.Object {
		[CCode (has_construct_function = false)]
		public EnumValueObject (GLib.EnumValue enum_value);
		public unowned string get_name ();
		public unowned string get_nick ();
		public int get_value ();
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_expander_row_get_type ()")]
	public class ExpanderRow : Hdy.ActionRow, Atk.Implementor, Gtk.Actionable, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		[Version (since = "0.0.6")]
		public ExpanderRow ();
		[Version (since = "0.0.6")]
		public bool get_enable_expansion ();
		[Version (since = "0.0.6")]
		public bool get_show_enable_switch ();
		[Version (since = "0.0.6")]
		public void set_enable_expansion (bool enable_expansion);
		[Version (since = "0.0.6")]
		public void set_show_enable_switch (bool show_enable_switch);
		public bool enable_expansion { get; set; }
		public bool show_enable_switch { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_header_group_get_type ()")]
	public class HeaderGroup : GLib.Object, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public HeaderGroup ();
		public void add_header_bar (Gtk.HeaderBar header_bar);
		public unowned Gtk.HeaderBar? get_focus ();
		public unowned GLib.SList<Gtk.HeaderBar> get_header_bars ();
		public void remove_header_bar (Gtk.HeaderBar header_bar);
		public void set_focus (Gtk.HeaderBar? header_bar);
		public Gtk.HeaderBar focus { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_leaflet_get_type ()")]
	public class Leaflet : Gtk.Container, Atk.Implementor, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Leaflet ();
		public uint get_child_transition_duration ();
		public bool get_child_transition_running ();
		public Hdy.LeafletChildTransitionType get_child_transition_type ();
		public Hdy.Fold get_fold ();
		public bool get_homogeneous (Hdy.Fold fold, Gtk.Orientation orientation);
		public bool get_interpolate_size ();
		public uint get_mode_transition_duration ();
		public Hdy.LeafletModeTransitionType get_mode_transition_type ();
		public unowned Gtk.Widget get_visible_child ();
		public unowned string get_visible_child_name ();
		public void set_child_transition_duration (uint duration);
		public void set_child_transition_type (Hdy.LeafletChildTransitionType transition);
		public void set_homogeneous (Hdy.Fold fold, Gtk.Orientation orientation, bool homogeneous);
		public void set_interpolate_size (bool interpolate_size);
		public void set_mode_transition_duration (uint duration);
		public void set_mode_transition_type (Hdy.LeafletModeTransitionType transition);
		public void set_visible_child (Gtk.Widget visible_child);
		public void set_visible_child_name (string name);
		[NoWrapper]
		public virtual void todo ();
		public uint child_transition_duration { get; set; }
		public bool child_transition_running { get; }
		public Hdy.LeafletChildTransitionType child_transition_type { get; set; }
		public Hdy.Fold fold { get; }
		[NoAccessorMethod]
		public bool folded { get; }
		[NoAccessorMethod]
		public bool hhomogeneous_folded { get; set; }
		[NoAccessorMethod]
		public bool hhomogeneous_unfolded { get; set; }
		public bool interpolate_size { get; set; }
		public uint mode_transition_duration { get; set; }
		public Hdy.LeafletModeTransitionType mode_transition_type { get; set; }
		[NoAccessorMethod]
		public bool vhomogeneous_folded { get; set; }
		[NoAccessorMethod]
		public bool vhomogeneous_unfolded { get; set; }
		public Gtk.Widget visible_child { get; set; }
		public string visible_child_name { get; set; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_search_bar_get_type ()")]
	public class SearchBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "0.0.6")]
		public SearchBar ();
		[Version (since = "0.0.6")]
		public void connect_entry (Gtk.Entry entry);
		[Version (since = "0.0.6")]
		public bool get_search_mode ();
		[Version (since = "0.0.6")]
		public bool get_show_close_button ();
		[Version (since = "0.0.6")]
		public bool handle_event (Gdk.Event event);
		[Version (since = "0.0.6")]
		public void set_search_mode (bool search_mode);
		[Version (since = "0.0.6")]
		public void set_show_close_button (bool visible);
		[NoAccessorMethod]
		public bool search_mode_enabled { get; set; }
		public bool show_close_button { get; set construct; }
	}
	[CCode (cheader_filename = "handy.h", type_id = "hdy_title_bar_get_type ()")]
	public class TitleBar : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public TitleBar ();
		public bool get_selection_mode ();
		public void set_selection_mode (bool selection_mode);
		public bool selection_mode { get; set; }
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_ARROWS_DIRECTION_", type_id = "hdy_arrows_direction_get_type ()")]
	public enum ArrowsDirection {
		UP,
		DOWN,
		LEFT,
		RIGHT
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_FOLD_", type_id = "hdy_fold_get_type ()")]
	public enum Fold {
		UNFOLDED,
		FOLDED
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_LEAFLET_CHILD_TRANSITION_TYPE_", type_id = "hdy_leaflet_child_transition_type_get_type ()")]
	public enum LeafletChildTransitionType {
		NONE,
		CROSSFADE,
		SLIDE,
		OVER
	}
	[CCode (cheader_filename = "handy.h", cprefix = "HDY_LEAFLET_MODE_TRANSITION_TYPE_", type_id = "hdy_leaflet_mode_transition_type_get_type ()")]
	public enum LeafletModeTransitionType {
		NONE,
		SLIDE
	}
	[CCode (cheader_filename = "handy.h", instance_pos = 1.9)]
	public delegate string ComboRowGetEnumValueNameFunc (Hdy.EnumValueObject value);
	[CCode (cheader_filename = "handy.h", instance_pos = 1.9)]
	public delegate string ComboRowGetNameFunc (GLib.Object item);
	[CCode (cheader_filename = "handy.h")]
	[Version (since = "0.0.6")]
	public static string enum_value_row_name (Hdy.EnumValueObject value, void* user_data);
	[CCode (cheader_filename = "handy.h")]
	public static bool init ([CCode (array_length_cname = "argc", array_length_pos = 0.5)] ref unowned string[]? argv);
	[CCode (cheader_filename = "handy.h")]
	[Version (since = "0.0.6")]
	public static void list_box_separator_header (Gtk.ListBoxRow row, Gtk.ListBoxRow? before, void* unused_user_data);
	[CCode (cheader_filename = "handy.h")]
	public static long string_utf8_len (GLib.StringBuilder string);
	[CCode (cheader_filename = "handy.h")]
	public static unowned GLib.StringBuilder string_utf8_truncate (GLib.StringBuilder string, size_t len);
}

/* gspell-1.vapi generated by vapigen-0.32, do not modify. */

[CCode (cprefix = "Gspell", gir_namespace = "Gspell", gir_version = "1", lower_case_cprefix = "gspell_")]
namespace Gspell {
	[CCode (cheader_filename = "gspell/gspell.h", type_id = "gspell_checker_get_type ()")]
	public class Checker : GLib.Object {
		[CCode (has_construct_function = false)]
		public Checker (Gspell.Language? language);
		public void add_word_to_personal (string word, ssize_t word_length);
		public void add_word_to_session (string word, ssize_t word_length);
		public bool check_word (string word, ssize_t word_length) throws GLib.Error;
		public void clear_session ();
		public static GLib.Quark error_quark ();
		public unowned Gspell.Language? get_language ();
		public GLib.SList<string> get_suggestions (string word, ssize_t word_length);
		public void set_correction (string word, ssize_t word_length, string replacement, ssize_t replacement_length);
		public bool set_language (Gspell.Language? language);
		[NoAccessorMethod]
		public Gspell.Language language { owned get; set construct; }
		public virtual signal void session_cleared ();
		public virtual signal void word_added_to_personal (string word);
		public virtual signal void word_added_to_session (string word);
	}
	[CCode (cheader_filename = "gspell/gspell.h", type_id = "gspell_checker_dialog_get_type ()")]
	public class CheckerDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public CheckerDialog (Gtk.Window parent, Gspell.Navigator navigator);
		[NoAccessorMethod]
		public Gspell.Navigator spell_navigator { owned get; construct; }
	}
	[CCode (cheader_filename = "gspell/gspell.h", type_id = "gspell_inline_checker_gtv_get_type ()")]
	public class InlineCheckerGtv : GLib.Object {
		[CCode (has_construct_function = false)]
		public InlineCheckerGtv (Gtk.TextBuffer buffer, Gspell.Checker checker);
		public void attach_view (Gtk.TextView view);
		public void detach_view (Gtk.TextView view);
		[NoAccessorMethod]
		public Gtk.TextBuffer buffer { owned get; construct; }
		[NoAccessorMethod]
		public Gspell.Checker spell_checker { owned get; construct; }
	}
	[CCode (cheader_filename = "gspell/gspell.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gspell_language_get_type ()")]
	[Compact]
	public class Language {
		public int compare (Gspell.Language language_b);
		public Gspell.Language copy ();
		public void free ();
		public static unowned GLib.List<Gspell.Language> get_available ();
		public unowned string get_code ();
		public unowned string get_name ();
		public static unowned Gspell.Language lookup (string language_code);
	}
	[CCode (cheader_filename = "gspell/gspell.h", type_id = "gspell_language_chooser_button_get_type ()")]
	public class LanguageChooserButton : Gtk.Button, Atk.Implementor, Gspell.LanguageChooser, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public LanguageChooserButton (Gspell.Language current_language);
	}
	[CCode (cheader_filename = "gspell/gspell.h", type_id = "gspell_language_chooser_dialog_get_type ()")]
	public class LanguageChooserDialog : Gtk.Dialog, Atk.Implementor, Gspell.LanguageChooser, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public LanguageChooserDialog (Gtk.Window parent, Gspell.Language current_language, Gtk.DialogFlags flags);
	}
	[CCode (cheader_filename = "gspell/gspell.h", type_id = "gspell_navigator_gtv_get_type ()")]
	public class NavigatorGtv : GLib.Object, Gspell.Navigator {
		[CCode (has_construct_function = false)]
		protected NavigatorGtv ();
		public static Gspell.Navigator @new (Gtk.TextView view, Gspell.Checker spell_checker);
		[NoAccessorMethod]
		public Gspell.Checker spell_checker { owned get; set construct; }
		[NoAccessorMethod]
		public Gtk.TextView view { owned get; construct; }
	}
	[CCode (cheader_filename = "gspell/gspell.h", type_cname = "GspellLanguageChooserInterface", type_id = "gspell_language_chooser_get_type ()")]
	public interface LanguageChooser : GLib.Object {
		public abstract unowned Gspell.Language? get_language ();
		public abstract void set_language (Gspell.Language language);
		public abstract Gspell.Language language { get; set; }
	}
	[CCode (cheader_filename = "gspell/gspell.h", type_cname = "GspellNavigatorInterface", type_id = "gspell_navigator_get_type ()")]
	public interface Navigator : GLib.Object {
		public abstract void change (string word, string change_to);
		public abstract void change_all (string word, string change_to);
		public abstract bool goto_next (out string word, out Gspell.Checker spell_checker) throws GLib.Error;
	}
	[CCode (cheader_filename = "gspell/gspell.h", cprefix = "GSPELL_CHECKER_ERROR_", has_type_id = false)]
	public enum CheckerError {
		DICTIONARY,
		NO_LANGUAGE_SET
	}
}

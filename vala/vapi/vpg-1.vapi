/* vpg-1.vapi generated by valac 0.46.1.87-af96b, do not modify. */

[CCode (gir_namespace = "Vpg", gir_version = "1")]
namespace Vpg {
	/**
	 * Implementation of {@link Vda.Connection} for a direct connection to a PostgreSQL server
	 */
	[CCode (cheader_filename = "vpg.h")]
	public class Connection : GLib.Object, Vda.Connection {
		public Connection ();
	}
}

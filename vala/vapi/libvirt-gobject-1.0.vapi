/* libvirt-gobject-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GVir", gir_namespace = "LibvirtGObject", gir_version = "1.0", lower_case_cprefix = "gvir_")]
namespace GVir {
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_connection_get_type ()")]
	public class Connection : GLib.Object {
		[CCode (has_construct_function = false)]
		public Connection (string uri);
		public void close ();
		public GVir.Domain create_domain (GVirConfig.Domain conf) throws GLib.Error;
		public GVir.StoragePool create_storage_pool (GVirConfig.StoragePool conf, uint flags) throws GLib.Error;
		public bool fetch_domains (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool fetch_domains_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool fetch_interfaces (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool fetch_interfaces_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool fetch_networks (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool fetch_networks_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool fetch_storage_pools (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool fetch_storage_pools_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public GVir.Domain find_domain_by_id (int id);
		public GVir.Domain find_domain_by_name (string name);
		public GVir.Interface find_interface_by_mac (string macaddr);
		public GVir.Network find_network_by_name (string name);
		public GVir.StoragePool find_storage_pool_by_name (string name);
		public GVirConfig.Capabilities get_capabilities () throws GLib.Error;
		public async GVirConfig.Capabilities get_capabilities_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public GVir.Domain get_domain (string uuid);
		public GLib.List<GVir.Domain> get_domains ();
		public string get_hypervisor_name () throws GLib.Error;
		public GVir.Interface get_interface (string name);
		public GLib.List<GVir.Interface> get_interfaces ();
		public GVir.Network get_network (string uuid);
		public GLib.List<GVir.Network> get_networks ();
		public GVir.NodeInfo get_node_info () throws GLib.Error;
		public GVir.StoragePool get_storage_pool (string uuid);
		public GLib.List<GVir.StoragePool> get_storage_pools ();
		public GVir.Stream get_stream (uint flags);
		public unowned string get_uri ();
		public ulong get_version () throws GLib.Error;
		public bool is_open ();
		public bool is_read_only ();
		public bool open (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool open_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool open_read_only (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool open_read_only_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool restore_domain_from_file (string filename, GVirConfig.Domain? custom_conf, uint flags) throws GLib.Error;
		public async bool restore_domain_from_file_async (string filename, GVirConfig.Domain? custom_conf, uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public GVir.Domain start_domain (GVirConfig.Domain conf, uint flags) throws GLib.Error;
		[NoAccessorMethod]
		public GVir.ConnectionHandle handle { owned get; construct; }
		public string uri { get; construct; }
		public virtual signal void connection_closed ();
		public virtual signal void connection_opened ();
		public virtual signal void domain_added (GVir.Domain dom);
		public virtual signal void domain_removed (GVir.Domain dom);
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_connection_handle_get_type ()")]
	[Compact]
	public class ConnectionHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_domain_get_type ()")]
	public class Domain : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Domain ();
		public GVir.DomainSnapshot create_snapshot (GVirConfig.DomainSnapshot? custom_conf, uint flags) throws GLib.Error;
		public async GVir.DomainSnapshot create_snapshot_async (GVirConfig.DomainSnapshot? custom_conf, uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool @delete (uint flags) throws GLib.Error;
		public bool fetch_snapshots (uint list_flags, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool fetch_snapshots_async (uint list_flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public GVirConfig.Domain get_config (uint flags) throws GLib.Error;
		public GLib.List<GVir.DomainDevice> get_devices () throws GLib.Error;
		public bool get_has_current_snapshot (uint flags, out bool has_current_snapshot) throws GLib.Error;
		public int get_id () throws GLib.Error;
		public GVir.DomainInfo get_info () throws GLib.Error;
		public async GVir.DomainInfo get_info_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public unowned string get_name ();
		public bool get_persistent ();
		public bool get_saved ();
		public GLib.List<GVir.DomainSnapshot> get_snapshots ();
		public unowned string get_uuid ();
		public bool open_console (GVir.Stream stream, string? devname, uint flags) throws GLib.Error;
		public bool open_graphics (uint idx, int fd, uint flags) throws GLib.Error;
		[Version (since = "0.2.0")]
		public int open_graphics_fd (uint idx, uint flags) throws GLib.Error;
		public bool reboot (uint flags) throws GLib.Error;
		public bool resume () throws GLib.Error;
		public async bool resume_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool save (uint flags) throws GLib.Error;
		public async bool save_async (uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool save_to_file (string filename, GVirConfig.Domain? custom_conf, uint flags) throws GLib.Error;
		public async bool save_to_file_async (string filename, GVirConfig.Domain? custom_conf, uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public string screenshot (GVir.Stream stream, uint monitor_id, uint flags) throws GLib.Error;
		public bool set_config (GVirConfig.Domain conf) throws GLib.Error;
		public bool set_time (GLib.DateTime? date_time, uint flags) throws GLib.Error;
		public async bool set_time_async (GLib.DateTime? date_time, uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool shutdown (uint flags) throws GLib.Error;
		public bool start (uint flags) throws GLib.Error;
		public async bool start_async (uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool stop (uint flags) throws GLib.Error;
		public bool suspend () throws GLib.Error;
		public bool update_device (GVirConfig.DomainDevice device, uint flags) throws GLib.Error;
		public bool wakeup (uint flags) throws GLib.Error;
		public async bool wakeup_async (uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public GVir.DomainHandle handle { owned get; construct; }
		public bool persistent { get; }
		public virtual signal void pmsuspended ();
		public virtual signal void resumed ();
		public virtual signal void started ();
		public virtual signal void stopped ();
		public virtual signal void suspended ();
		public virtual signal void updated ();
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_domain_device_get_type ()")]
	public abstract class DomainDevice : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DomainDevice ();
		public GVirConfig.DomainDevice get_config ();
		public GVir.Domain get_domain ();
		public GVirConfig.DomainDevice config { owned get; construct; }
		public GVir.Domain domain { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_domain_disk_get_type ()")]
	public class DomainDisk : GVir.DomainDevice {
		[CCode (has_construct_function = false)]
		protected DomainDisk ();
		public GVir.DomainDiskStats get_stats () throws GLib.Error;
		public bool resize (uint64 size, uint flags) throws GLib.Error;
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_domain_disk_stats_get_type ()")]
	[Compact]
	public class DomainDiskStats {
		public int64 errs;
		public int64 rd_bytes;
		public int64 rd_req;
		public int64 wr_bytes;
		public int64 wr_req;
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_domain_handle_get_type ()")]
	[Compact]
	public class DomainHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_domain_info_get_type ()")]
	[Compact]
	public class DomainInfo {
		public uint64 cpuTime;
		public uint64 maxMem;
		public uint64 memory;
		public uint16 nrVirtCpu;
		public GVir.DomainState state;
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_domain_interface_get_type ()")]
	public class DomainInterface : GVir.DomainDevice {
		[CCode (has_construct_function = false)]
		protected DomainInterface ();
		public GVir.DomainInterfaceStats get_stats () throws GLib.Error;
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_domain_interface_stats_get_type ()")]
	[Compact]
	public class DomainInterfaceStats {
		public int64 rx_bytes;
		public int64 rx_drop;
		public int64 rx_errs;
		public int64 rx_packets;
		public int64 tx_bytes;
		public int64 tx_drop;
		public int64 tx_errs;
		public int64 tx_packets;
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_domain_snapshot_get_type ()")]
	public class DomainSnapshot : GLib.Object {
		[CCode (has_construct_function = false)]
		protected DomainSnapshot ();
		public bool @delete (uint flags) throws GLib.Error;
		public async bool delete_async (uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public GVirConfig.DomainSnapshot get_config (uint flags) throws GLib.Error;
		public bool get_is_current (uint flags, out bool is_current) throws GLib.Error;
		public unowned string get_name ();
		public bool revert_to (uint flags) throws GLib.Error;
		public async bool revert_to_async (uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_config (GVirConfig.DomainSnapshot conf) throws GLib.Error;
		[NoAccessorMethod]
		public GVir.DomainSnapshotHandle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_domain_snapshot_handle_get_type ()")]
	[Compact]
	public class DomainSnapshotHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_interface_get_type ()")]
	public class Interface : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Interface ();
		public GVirConfig.Interface get_config (uint flags) throws GLib.Error;
		public unowned string get_mac ();
		public unowned string get_name ();
		[NoAccessorMethod]
		public GVir.InterfaceHandle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_interface_handle_get_type ()")]
	[Compact]
	public class InterfaceHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_manager_get_type ()")]
	public class Manager : GLib.Object {
		[CCode (has_construct_function = false)]
		public Manager ();
		public void add_connection (GVir.Connection conn);
		public GVir.Connection? find_connection_by_uri (string uri);
		public GLib.List<GVir.Connection> get_connections ();
		public void remove_connection (GVir.Connection conn);
		public virtual signal void connection_added (GVir.Connection conn);
		public virtual signal void connection_removed (GVir.Connection conn);
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_network_get_type ()")]
	public class Network : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Network ();
		public GVirConfig.Network get_config (uint flags) throws GLib.Error;
		public GLib.List<GVir.NetworkDHCPLease> get_dhcp_leases (string? mac, uint flags) throws GLib.Error;
		public unowned string get_name ();
		public unowned string get_uuid ();
		[NoWrapper]
		public virtual void started ();
		[NoWrapper]
		public virtual void stopped ();
		[NoAccessorMethod]
		public GVir.NetworkHandle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_network_dhcp_lease_get_type ()")]
	public class NetworkDHCPLease : GLib.Object {
		[CCode (has_construct_function = false)]
		protected NetworkDHCPLease ();
		public unowned string get_client_id ();
		public int64 get_expiry_time ();
		public unowned string get_hostname ();
		public unowned string get_iaid ();
		public unowned string get_iface ();
		public unowned string get_ip ();
		public int get_ip_type ();
		public unowned string get_mac ();
		public uint get_prefix ();
		[NoAccessorMethod]
		public void* handle { get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_network_filter_get_type ()")]
	public class NetworkFilter : GLib.Object {
		[CCode (has_construct_function = false)]
		protected NetworkFilter ();
		public GVirConfig.NetworkFilter get_config (uint flags) throws GLib.Error;
		public unowned string get_name ();
		public unowned string get_uuid ();
		[NoAccessorMethod]
		public GVir.NetworkFilterHandle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_network_filter_handle_get_type ()")]
	[Compact]
	public class NetworkFilterHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_network_handle_get_type ()")]
	[Compact]
	public class NetworkHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_node_device_get_type ()")]
	public class NodeDevice : GLib.Object {
		[CCode (has_construct_function = false)]
		protected NodeDevice ();
		public GVirConfig.NodeDevice get_config (uint flags) throws GLib.Error;
		public unowned string get_name ();
		[NoAccessorMethod]
		public GVir.NodeDeviceHandle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_node_device_handle_get_type ()")]
	[Compact]
	public class NodeDeviceHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_node_info_get_type ()")]
	[Compact]
	public class NodeInfo {
		public uint cores;
		public uint cpus;
		public ulong memory;
		public uint mhz;
		[CCode (array_length = false, array_null_terminated = true)]
		public weak char[] model;
		public uint nodes;
		public uint sockets;
		public uint threads;
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_secret_get_type ()")]
	public class Secret : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Secret ();
		public GVirConfig.Secret get_config (uint flags) throws GLib.Error;
		public unowned string get_name ();
		public unowned string get_uuid ();
		[NoAccessorMethod]
		public GVir.SecretHandle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_secret_handle_get_type ()")]
	[Compact]
	public class SecretHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_storage_pool_get_type ()")]
	public class StoragePool : GLib.Object {
		[CCode (has_construct_function = false)]
		protected StoragePool ();
		public bool build (uint flags) throws GLib.Error;
		public async bool build_async (uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public GVir.StorageVol create_volume (GVirConfig.StorageVol conf) throws GLib.Error;
		public bool @delete (uint flags) throws GLib.Error;
		public async bool delete_async (uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool get_active ();
		public bool get_autostart () throws GLib.Error;
		public GVirConfig.StoragePool get_config (uint flags) throws GLib.Error;
		public GVir.StoragePoolInfo get_info () throws GLib.Error;
		public unowned string get_name ();
		public bool get_persistent ();
		public unowned string get_uuid ();
		public GVir.StorageVol get_volume (string name);
		public GLib.List<GVir.StorageVol> get_volumes ();
		public bool refresh (GLib.Cancellable? cancellable = null) throws GLib.Error;
		public async bool refresh_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool set_autostart (bool autostart) throws GLib.Error;
		public bool start (uint flags) throws GLib.Error;
		public async bool start_async (uint flags, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool stop () throws GLib.Error;
		public async bool stop_async (GLib.Cancellable? cancellable) throws GLib.Error;
		public bool undefine () throws GLib.Error;
		public async bool undefine_async (GLib.Cancellable? cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public GVir.StoragePoolHandle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_storage_pool_handle_get_type ()")]
	[Compact]
	public class StoragePoolHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_storage_pool_info_get_type ()")]
	[Compact]
	public class StoragePoolInfo {
		public uint64 allocation;
		public uint64 available;
		public uint64 capacity;
		public GVir.StoragePoolState state;
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_storage_vol_get_type ()")]
	public class StorageVol : GLib.Object {
		[CCode (has_construct_function = false)]
		protected StorageVol ();
		public bool @delete (uint flags) throws GLib.Error;
		public bool download (GVir.Stream stream, uint64 offset, uint64 length, uint flags) throws GLib.Error;
		public GVirConfig.StorageVol get_config (uint flags) throws GLib.Error;
		public GVir.StorageVolInfo get_info () throws GLib.Error;
		public unowned string get_name ();
		public unowned string get_path () throws GLib.Error;
		public bool resize (uint64 capacity, GVir.StorageVolResizeFlags flags) throws GLib.Error;
		public bool upload (GVir.Stream stream, uint64 offset, uint64 length, uint flags) throws GLib.Error;
		[NoAccessorMethod]
		public GVir.StorageVolHandle handle { owned get; construct; }
		[NoAccessorMethod]
		public GVir.StoragePool pool { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_storage_vol_handle_get_type ()")]
	[Compact]
	public class StorageVolHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_storage_vol_info_get_type ()")]
	[Compact]
	public class StorageVolInfo {
		public uint64 allocation;
		public uint64 capacity;
		public GVir.StorageVolType type;
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", type_id = "gvir_stream_get_type ()")]
	public class Stream : GLib.IOStream {
		[CCode (has_construct_function = false)]
		protected Stream ();
		public uint add_watch_full (int priority, GVir.StreamIOCondition cond, owned GVir.StreamIOFunc func);
		public ssize_t receive ([CCode (array_length_cname = "size", array_length_pos = 1.5, array_length_type = "gsize")] uint8[] buffer, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public ssize_t receive_all (GLib.Cancellable? cancellable, GVir.StreamSinkFunc func) throws GLib.Error;
		public ssize_t send (string buffer, size_t size, GLib.Cancellable? cancellable = null) throws GLib.Error;
		public ssize_t send_all (GLib.Cancellable? cancellable, GVir.StreamSourceFunc func) throws GLib.Error;
		[NoAccessorMethod]
		public GVir.StreamHandle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gvir_stream_handle_get_type ()")]
	[Compact]
	public class StreamHandle {
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_DELETE_", type_id = "gvir_domain_delete_flags_get_type ()")]
	public enum DomainDeleteFlags {
		NONE,
		SAVED_STATE,
		SNAPSHOTS_METADATA
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_REBOOT_", type_id = "gvir_domain_reboot_flags_get_type ()")]
	public enum DomainRebootFlags {
		NONE,
		ACPI_POWER_BTN,
		GUEST_AGENT
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_SHUTDOWN_", type_id = "gvir_domain_shutdown_flags_get_type ()")]
	public enum DomainShutdownFlags {
		NONE,
		ACPI_POWER_BTN,
		GUEST_AGENT
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_SNAPSHOT_", type_id = "gvir_domain_snapshot_create_flags_get_type ()")]
	public enum DomainSnapshotCreateFlags {
		NONE,
		REDEFINE,
		CURRENT,
		NO_METADATA,
		HALT,
		DISK_ONLY,
		REUSE_EXT,
		QUIESCE,
		ATOMIC
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_SNAPSHOT_DELETE_", type_id = "gvir_domain_snapshot_delete_flags_get_type ()")]
	public enum DomainSnapshotDeleteFlags {
		CHILDREN,
		METADATA_ONLY,
		CHILDREN_ONLY
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_SNAPSHOT_LIST_", type_id = "gvir_domain_snapshot_list_flags_get_type ()")]
	public enum DomainSnapshotListFlags {
		ALL,
		DESCENDANTS,
		ROOTS,
		METADATA,
		LEAVES,
		NO_LEAVES,
		NO_METADATA,
		INACTIVE,
		ACTIVE,
		DISK_ONLY,
		INTERNAL,
		EXTERNAL
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_SNAPSHOT_REVERT_", type_id = "gvir_domain_snapshot_revert_flags_get_type ()")]
	public enum DomainSnapshotRevertFlags {
		RUNNING,
		PAUSED,
		FORCE
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_START_", type_id = "gvir_domain_start_flags_get_type ()")]
	[Flags]
	public enum DomainStartFlags {
		NONE,
		PAUSED,
		AUTODESTROY,
		BYPASS_CACHE,
		FORCE_BOOT
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_STATE_", type_id = "gvir_domain_state_get_type ()")]
	public enum DomainState {
		NONE,
		RUNNING,
		BLOCKED,
		PAUSED,
		SHUTDOWN,
		SHUTOFF,
		CRASHED,
		PMSUSPENDED
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_UPDATE_DEVICE_", type_id = "gvir_domain_update_device_flags_get_type ()")]
	public enum DomainUpdateDeviceFlags {
		CURRENT,
		LIVE,
		CONFIG
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_DOMAIN_XML_", type_id = "gvir_domain_xml_flags_get_type ()")]
	public enum DomainXMLFlags {
		NONE,
		SECURE,
		INACTIVE,
		UPDATE_CPU
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_IP_ADDR_TYPE_", type_id = "gvir_ip_addr_type_get_type ()")]
	public enum IPAddrType {
		IPV4,
		IPV6
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_STORAGE_POOL_STATE_", type_id = "gvir_storage_pool_state_get_type ()")]
	public enum StoragePoolState {
		INACTIVE,
		BUILDING,
		RUNNING,
		DEGRADED,
		INACCESSIBLE
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_STORAGE_VOL_RESIZE_", type_id = "gvir_storage_vol_resize_flags_get_type ()")]
	public enum StorageVolResizeFlags {
		NONE,
		ALLOCATE,
		DELTA,
		SHRINK
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_STORAGE_VOL_STATE_", type_id = "gvir_storage_vol_type_get_type ()")]
	public enum StorageVolType {
		FILE,
		BLOCK,
		DIR
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", cprefix = "GVIR_STREAM_IO_CONDITION_", type_id = "gvir_stream_io_condition_get_type ()")]
	[Flags]
	public enum StreamIOCondition {
		READABLE,
		WRITABLE,
		HANGUP,
		ERROR
	}
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", has_target = false)]
	public delegate bool StreamIOFunc (GVir.Stream stream, GVir.StreamIOCondition cond, void* opaque);
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", instance_pos = 2.9)]
	public delegate int StreamSinkFunc (GVir.Stream stream, [CCode (array_length_cname = "nbytes", array_length_pos = 2.1, array_length_type = "gsize")] out unowned string[] buf);
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h", instance_pos = 2.9)]
	public delegate int StreamSourceFunc (GVir.Stream stream, [CCode (array_length_cname = "nbytes", array_length_pos = 2.1, array_length_type = "gsize")] out unowned string[] buf);
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h")]
	public static void init_object ([CCode (array_length_cname = "argc", array_length_pos = 0.5)] ref unowned string[]? argv);
	[CCode (cheader_filename = "libvirt-gobject/libvirt-gobject.h")]
	public static bool init_object_check ([CCode (array_length_cname = "argc", array_length_pos = 0.5)] ref unowned string[]? argv) throws GLib.Error;
}

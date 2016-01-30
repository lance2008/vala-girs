/* gee-0.8.vapi generated by valac 0.30.0.49-768701-dirty, do not modify. */

[CCode (gir_namespace = "Gee", gir_version = "0.8")]
namespace Gee {
	namespace Functions {
		[CCode (cheader_filename = "gee.h")]
		public static GLib.CompareDataFunc get_compare_func_for (GLib.Type t);
		[CCode (cheader_filename = "gee.h")]
		public static Gee.EqualDataFunc get_equal_func_for (GLib.Type t);
		[CCode (cheader_filename = "gee.h")]
		public static Gee.HashDataFunc get_hash_func_for (GLib.Type t);
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractBidirList<G> : Gee.AbstractList<G>, Gee.BidirList<G> {
		public AbstractBidirList ();
		public abstract Gee.BidirListIterator<G> bidir_list_iterator ();
		public virtual Gee.BidirList<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractBidirSortedMap<K,V> : Gee.AbstractSortedMap<K,V>, Gee.BidirSortedMap<K,V> {
		public AbstractBidirSortedMap ();
		public abstract Gee.BidirMapIterator<K,V> bidir_map_iterator ();
		public virtual Gee.BidirSortedMap<K,V> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractBidirSortedSet<G> : Gee.AbstractSortedSet<G>, Gee.BidirSortedSet<G> {
		public AbstractBidirSortedSet ();
		public abstract Gee.BidirIterator<G> bidir_iterator ();
		public virtual Gee.BidirSortedSet<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractCollection<G> : GLib.Object, Gee.Traversable<G>, Gee.Iterable<G>, Gee.Collection<G> {
		public AbstractCollection ();
		public abstract bool add (G item);
		public abstract void clear ();
		public abstract bool contains (G item);
		public virtual bool @foreach (Gee.ForallFunc<G> f);
		public abstract Gee.Iterator<G> iterator ();
		public abstract bool remove (G item);
		public abstract bool read_only { get; }
		public virtual Gee.Collection<G> read_only_view { owned get; }
		public abstract int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractList<G> : Gee.AbstractCollection<G>, Gee.List<G> {
		public AbstractList ();
		public abstract new G @get (int index);
		public abstract int index_of (G item);
		public abstract void insert (int index, G item);
		public abstract Gee.ListIterator<G> list_iterator ();
		public abstract G remove_at (int index);
		public abstract new void @set (int index, G item);
		public abstract Gee.List<G>? slice (int start, int stop);
		public virtual Gee.List<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractMap<K,V> : GLib.Object, Gee.Traversable<Gee.Map.Entry<K,V>>, Gee.Iterable<Gee.Map.Entry<K,V>>, Gee.Map<K,V> {
		public AbstractMap ();
		public abstract void clear ();
		public virtual bool @foreach (Gee.ForallFunc<Gee.Map.Entry<K,V>> f);
		public abstract new V @get (K key);
		public abstract bool has (K key, V value);
		public abstract bool has_key (K key);
		public abstract Gee.MapIterator<K,V> map_iterator ();
		public abstract new void @set (K key, V value);
		public virtual Gee.Iterator<A> stream<A> (owned Gee.StreamFunc<Gee.Map.Entry<K,V>,A> f);
		public abstract bool unset (K key, out V value = null);
		public abstract Gee.Set<Gee.Map.Entry<K,V>> entries { owned get; }
		public abstract Gee.Set<K> keys { owned get; }
		public abstract bool read_only { get; }
		public virtual Gee.Map<K,V> read_only_view { owned get; }
		public abstract int size { get; }
		public abstract Gee.Collection<V> values { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractMultiMap<K,V> : GLib.Object, Gee.MultiMap<K,V> {
		protected Gee.Map<K,Gee.Collection<V>> _storage_map;
		public AbstractMultiMap (Gee.Map<K,Gee.Collection<V>> storage_map);
		protected abstract Gee.MultiSet<K> create_multi_key_set ();
		protected abstract Gee.Collection<V> create_value_storage ();
		protected abstract Gee.EqualDataFunc<V> get_value_equal_func ();
		public virtual Gee.MultiMap<K,V> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractMultiSet<G> : Gee.AbstractCollection<G>, Gee.MultiSet<G> {
		protected Gee.Map<G,int> _storage_map;
		public AbstractMultiSet (Gee.Map<G,int> storage_map);
		public override bool add (G item);
		public override void clear ();
		public override bool contains (G item);
		public override Gee.Iterator<G> iterator ();
		public override bool remove (G item);
		public override bool read_only { get; }
		public virtual Gee.MultiSet<G> read_only_view { owned get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractQueue<G> : Gee.AbstractCollection<G>, Gee.Queue<G> {
		public AbstractQueue ();
		public abstract G peek ();
		public abstract G poll ();
		public abstract int capacity { get; }
		public abstract bool is_full { get; }
		public abstract int remaining_capacity { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractSet<G> : Gee.AbstractCollection<G>, Gee.Set<G> {
		public AbstractSet ();
		public virtual Gee.Set<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractSortedMap<K,V> : Gee.AbstractMap<K,V>, Gee.SortedMap<K,V> {
		public AbstractSortedMap ();
		public abstract Gee.SortedMap<K,V> head_map (K before);
		public abstract Gee.SortedMap<K,V> sub_map (K before, K after);
		public abstract Gee.SortedMap<K,V> tail_map (K after);
		public abstract Gee.SortedSet<Gee.Map.Entry<K,V>> ascending_entries { owned get; }
		public abstract Gee.SortedSet<K> ascending_keys { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public abstract class AbstractSortedSet<G> : Gee.AbstractSet<G>, Gee.SortedSet<G> {
		public AbstractSortedSet ();
		public abstract G ceil (G element);
		public abstract G first ();
		public abstract G floor (G element);
		public abstract Gee.SortedSet<G> head_set (G before);
		public abstract G higher (G element);
		public abstract Gee.Iterator<G>? iterator_at (G element);
		public abstract G last ();
		public abstract G lower (G element);
		public abstract Gee.SortedSet<G> sub_set (G from, G to);
		public abstract Gee.SortedSet<G> tail_set (G after);
		public virtual Gee.SortedSet<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class ArrayList<G> : Gee.AbstractBidirList<G> {
		public ArrayList (owned Gee.EqualDataFunc<G>? equal_func = null);
		public override bool add (G item);
		public bool add_all (Gee.Collection<G> collection);
		public override Gee.BidirListIterator<G> bidir_list_iterator ();
		public override void clear ();
		public override bool contains (G item);
		public override bool @foreach (Gee.ForallFunc<G> f);
		public override G @get (int index);
		public override int index_of (G item);
		public override void insert (int index, G item);
		public override Gee.Iterator<G> iterator ();
		public override Gee.ListIterator<G> list_iterator ();
		public override bool remove (G item);
		public override G remove_at (int index);
		public override void @set (int index, G item);
		public override Gee.List<G>? slice (int start, int stop);
		public ArrayList.wrap (owned G[] items, owned Gee.EqualDataFunc<G>? equal_func = null);
		[CCode (notify = false)]
		public Gee.EqualDataFunc<G> equal_func { get; private set; }
		public override bool read_only { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class ArrayQueue<G> : Gee.AbstractQueue<G>, Gee.Deque<G> {
		public ArrayQueue (owned Gee.EqualDataFunc<G>? equal_func = null);
		public override bool add (G element);
		public override void clear ();
		public override bool contains (G item);
		public override bool @foreach (Gee.ForallFunc<G> f);
		public override Gee.Iterator<G> iterator ();
		public override G peek ();
		public override G poll ();
		public override bool remove (G item);
		public override int capacity { get; }
		[CCode (notify = false)]
		public Gee.EqualDataFunc<G> equal_func { get; private set; }
		public bool is_empty { get; }
		public override bool is_full { get; }
		public override bool read_only { get; }
		public override int remaining_capacity { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class ConcurrentList<G> : Gee.AbstractList<G> {
		public ConcurrentList (owned Gee.EqualDataFunc<G>? equal_func = null);
		public override bool add (G item);
		public override void clear ();
		public override bool contains (G item);
		public override G @get (int index);
		public override int index_of (G item);
		public override void insert (int index, G item);
		public override Gee.Iterator<G> iterator ();
		public override Gee.ListIterator<G> list_iterator ();
		public override bool remove (G item);
		public override G remove_at (int index);
		public override void @set (int index, G item);
		public override Gee.List<G>? slice (int start, int end);
		[CCode (notify = false)]
		public Gee.EqualDataFunc<G> equal_func { get; private set; }
		public bool is_empty { get; }
		public override bool read_only { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class ConcurrentSet<G> : Gee.AbstractSortedSet<G> {
		public enum RangeType {
			HEAD,
			TAIL,
			BOUNDED,
			EMPTY
		}
		public ConcurrentSet (owned GLib.CompareDataFunc<G>? compare_func = null);
		public override bool add (G key);
		public override G ceil (G element);
		public override void clear ();
		public override bool contains (G key);
		public override G first ();
		public override G floor (G element);
		public override Gee.SortedSet<G> head_set (G before);
		public override G higher (G element);
		public override Gee.Iterator<G> iterator ();
		public override Gee.Iterator<G>? iterator_at (G element);
		public override G last ();
		public override G lower (G element);
		public override bool remove (G item);
		public override Gee.SortedSet<G> sub_set (G from, G to);
		public override Gee.SortedSet<G> tail_set (G after);
		public override bool read_only { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class HashMap<K,V> : Gee.AbstractMap<K,V> {
		public HashMap (owned Gee.HashDataFunc<K>? key_hash_func = null, owned Gee.EqualDataFunc<K>? key_equal_func = null, owned Gee.EqualDataFunc<V>? value_equal_func = null);
		public override void clear ();
		public override V @get (K key);
		public override bool has (K key, V value);
		public override bool has_key (K key);
		public override Gee.MapIterator<K,V> map_iterator ();
		public override void @set (K key, V value);
		public override bool unset (K key, out V value = null);
		public override Gee.Set<Gee.Map.Entry<K,V>> entries { owned get; }
		[CCode (notify = false)]
		public Gee.EqualDataFunc<K> key_equal_func { get; private set; }
		[CCode (notify = false)]
		public Gee.HashDataFunc<K> key_hash_func { get; private set; }
		public override Gee.Set<K> keys { owned get; }
		public override bool read_only { get; }
		public override int size { get; }
		[CCode (notify = false)]
		public Gee.EqualDataFunc<V> value_equal_func { get; private set; }
		public override Gee.Collection<V> values { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class HashMultiMap<K,V> : Gee.AbstractMultiMap<K,V> {
		public HashMultiMap (owned Gee.HashDataFunc<K>? key_hash_func = null, owned Gee.EqualDataFunc<K>? key_equal_func = null, owned Gee.HashDataFunc<V>? value_hash_func = null, owned Gee.EqualDataFunc<V>? value_equal_func = null);
		protected override Gee.MultiSet<K> create_multi_key_set ();
		protected override Gee.Collection<V> create_value_storage ();
		protected override Gee.EqualDataFunc<V> get_value_equal_func ();
		public Gee.EqualDataFunc<K> key_equal_func { get; }
		public Gee.HashDataFunc<K> key_hash_func { get; }
		[CCode (notify = false)]
		public Gee.EqualDataFunc<V> value_equal_func { get; private set; }
		[CCode (notify = false)]
		public Gee.HashDataFunc<V> value_hash_func { get; private set; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class HashMultiSet<G> : Gee.AbstractMultiSet<G> {
		[CCode (cname = "gee_hash_multi_set_new_fixed")]
		public HashMultiSet (owned Gee.HashDataFunc<G>? hash_func = null, owned Gee.EqualDataFunc<G>? equal_func = null);
		[CCode (cname = "gee_hash_multi_set_new")]
		[Deprecated (replacement = "gee_hash_multi_set_new_fixed", since = "0.13.3")]
		public HashMultiSet.broken (Gee.HashDataFunc<G>? hash_func = null, Gee.EqualDataFunc<G>? equal_func = null);
		public Gee.EqualDataFunc<G> equal_func { get; }
		public Gee.HashDataFunc<G> hash_func { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class HashSet<G> : Gee.AbstractSet<G> {
		public HashSet (owned Gee.HashDataFunc<G>? hash_func = null, owned Gee.EqualDataFunc<G>? equal_func = null);
		public override bool add (G key);
		public override void clear ();
		public override bool contains (G key);
		public override bool @foreach (Gee.ForallFunc f);
		public override Gee.Iterator<G> iterator ();
		public override bool remove (G key);
		[CCode (notify = false)]
		public Gee.EqualDataFunc<G> equal_func { get; private set; }
		[CCode (notify = false)]
		public Gee.HashDataFunc<G> hash_func { get; private set; }
		public override bool read_only { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[Compact]
	public class HazardPointer<G> {
		[Compact]
		public class Context {
			public Context (Gee.HazardPointer.Policy? policy = null);
			public void free_all ();
			public void release ();
			public void try_free ();
			public void try_release ();
		}
		public enum Policy {
			DEFAULT,
			THREAD_EXIT,
			TRY_FREE,
			FREE,
			TRY_RELEASE,
			RELEASE;
			public bool is_concrete ();
			public bool is_blocking ();
			public bool is_safe ();
			public Gee.HazardPointer.Policy to_concrete ();
		}
		public enum ReleasePolicy {
			HELPER_THREAD,
			MAIN_LOOP;
		}
		public HazardPointer (G* ptr);
		public static bool compare_and_exchange_pointer<G> (G** aptr, G old_ptr, owned G _new_ptr, size_t mask = 0, size_t old_mask = 0, size_t new_mask = 0);
		public static Gee.HazardPointer<G>? exchange_hazard_pointer<G> (G** aptr, owned G new_ptr, size_t mask = 0, size_t new_mask = 0, out size_t old_mask = null);
		public static G exchange_pointer<G> (G** aptr, owned G new_ptr, size_t mask = 0, size_t new_mask = 0, out size_t old_mask = null);
		public new unowned G @get (bool other_thread = false);
		public static Gee.HazardPointer<G>? get_hazard_pointer<G> (G** aptr, size_t mask = 0, out size_t mask_out = null);
		public static G get_pointer<G> (G** aptr, size_t mask = 0, out size_t mask_out = null);
		public void release (owned GLib.DestroyNotify notify);
		public static void set_default_policy (Gee.HazardPointer.Policy policy);
		public static void set_pointer<G> (G** aptr, owned G new_ptr, size_t mask = 0, size_t new_mask = 0);
		public static bool set_release_policy (Gee.HazardPointer.ReleasePolicy policy);
		public static void set_thread_exit_policy (Gee.HazardPointer.Policy policy);
	}
	[CCode (cheader_filename = "gee.h")]
	public class Lazy<G> {
		public Lazy (owned Gee.LazyFunc<G> func);
		public void eval ();
		public Lazy.from_value (G item);
		public new G @get ();
		public Gee.Future<G>? future { owned get; }
		public G value { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class LinkedList<G> : Gee.AbstractBidirList<G>, Gee.Queue<G>, Gee.Deque<G> {
		public LinkedList (owned Gee.EqualDataFunc<G>? equal_func = null);
		public override bool add (G item);
		public override Gee.BidirListIterator<G> bidir_list_iterator ();
		public override void clear ();
		public override bool contains (G item);
		public G first ();
		public override bool @foreach (Gee.ForallFunc<G> f);
		public override G @get (int index);
		public override int index_of (G item);
		public override void insert (int index, G item);
		public override Gee.Iterator<G> iterator ();
		public G last ();
		public override Gee.ListIterator<G> list_iterator ();
		public override bool remove (G item);
		public override G remove_at (int index);
		public override void @set (int index, G item);
		public override Gee.List<G>? slice (int start, int stop);
		[CCode (notify = false)]
		public Gee.EqualDataFunc<G> equal_func { get; private set; }
		public override bool read_only { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class PriorityQueue<G> : Gee.AbstractQueue<G> {
		public PriorityQueue (owned GLib.CompareDataFunc<G>? compare_func = null);
		public override bool add (G item);
		public override void clear ();
		public override bool contains (G item);
		public int drain (Gee.Collection<G> recipient, int amount = -1);
		public override bool @foreach (Gee.ForallFunc f);
		public override Gee.Iterator<G> iterator ();
		public bool offer (G element);
		public override G peek ();
		public override G poll ();
		public override bool remove (G item);
		public override int capacity { get; }
		[CCode (notify = false)]
		public GLib.CompareDataFunc<G> compare_func { get; private set; }
		public override bool is_full { get; }
		public override bool read_only { get; }
		public override int remaining_capacity { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class Promise<G> {
		public Promise ();
		public void set_exception (owned GLib.Error exception);
		public void set_value (owned G value);
		public Gee.Future<G> future { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class TreeMap<K,V> : Gee.AbstractBidirSortedMap<K,V> {
		public TreeMap (owned GLib.CompareDataFunc<K>? key_compare_func = null, owned Gee.EqualDataFunc<V>? value_equal_func = null);
		public override Gee.BidirMapIterator<K,V> bidir_map_iterator ();
		public override void clear ();
		public override V @get (K key);
		public override bool has (K key, V value);
		public override bool has_key (K key);
		public override Gee.SortedMap<K,V> head_map (K before);
		public override Gee.MapIterator<K,V> map_iterator ();
		public override void @set (K key, V value);
		public override Gee.SortedMap<K,V> sub_map (K after, K before);
		public override Gee.SortedMap<K,V> tail_map (K after);
		public override bool unset (K key, out V value = null);
		public override Gee.SortedSet<Gee.Map.Entry<K,V>> ascending_entries { owned get; }
		public override Gee.SortedSet<K> ascending_keys { owned get; }
		public override Gee.Set<Gee.Map.Entry<K,V>> entries { owned get; }
		[CCode (notify = false)]
		public GLib.CompareDataFunc<K> key_compare_func { get; private set; }
		public override Gee.Set<K> keys { owned get; }
		public override bool read_only { get; }
		public override int size { get; }
		[CCode (notify = false)]
		public Gee.EqualDataFunc<V> value_equal_func { get; private set; }
		public override Gee.Collection<V> values { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class TreeMultiMap<K,V> : Gee.AbstractMultiMap<K,V> {
		public TreeMultiMap (owned GLib.CompareDataFunc<K>? key_compare_func = null, owned GLib.CompareDataFunc<V>? value_compare_func = null);
		protected override Gee.MultiSet<K> create_multi_key_set ();
		protected override Gee.Collection<V> create_value_storage ();
		protected override Gee.EqualDataFunc<V> get_value_equal_func ();
		public GLib.CompareDataFunc<K> key_compare_func { get; }
		[CCode (notify = false)]
		public GLib.CompareDataFunc<V> value_compare_func { get; private set; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class TreeMultiSet<G> : Gee.AbstractMultiSet<G> {
		public TreeMultiSet (owned GLib.CompareDataFunc<G>? compare_func = null);
		public GLib.CompareDataFunc<G> compare_func { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class TreeSet<G> : Gee.AbstractBidirSortedSet<G> {
		public TreeSet (owned GLib.CompareDataFunc<G>? compare_func = null);
		public override bool add (G item);
		public override Gee.BidirIterator<G> bidir_iterator ();
		public override G ceil (G item);
		public override void clear ();
		public override bool contains (G item);
		public override G first ();
		public override G floor (G item);
		public override bool @foreach (Gee.ForallFunc<G> f);
		public override Gee.SortedSet<G> head_set (G before);
		public override G higher (G item);
		public override Gee.Iterator<G> iterator ();
		public override Gee.Iterator<G>? iterator_at (G item);
		public override G last ();
		public override G lower (G item);
		public override bool remove (G item);
		public override Gee.SortedSet<G> sub_set (G after, G before);
		public override Gee.SortedSet<G> tail_set (G after);
		[CCode (notify = false)]
		public GLib.CompareDataFunc<G> compare_func { get; private set; }
		public override bool read_only { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public class UnrolledLinkedList<G> : Gee.AbstractBidirList<G>, Gee.Queue<G>, Gee.Deque<G> {
		public UnrolledLinkedList (owned Gee.EqualDataFunc<G>? equal_func = null);
		public override bool add (G item);
		public override Gee.BidirListIterator<G> bidir_list_iterator ();
		public override void clear ();
		public override bool contains (G item);
		public override bool @foreach (Gee.ForallFunc<G> f);
		public override G @get (int index);
		public override int index_of (G item);
		public override void insert (int index, G item);
		public override Gee.Iterator<G> iterator ();
		public override Gee.ListIterator<G> list_iterator ();
		public override bool remove (G item);
		public override G remove_at (int index);
		public override void @set (int index, G item);
		public override Gee.List<G>? slice (int start, int stop);
		[CCode (notify = false)]
		public Gee.EqualDataFunc<G> equal_func { get; private set; }
		public override bool read_only { get; }
		public override int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface BidirIterator<G> : Gee.Iterator<G> {
		public abstract bool first ();
		public abstract bool has_previous ();
		public abstract bool last ();
		public abstract bool previous ();
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface BidirList<G> : Gee.List<G> {
		public abstract new Gee.BidirListIterator<G> bidir_list_iterator ();
		public abstract Gee.BidirList<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface BidirListIterator<G> : Gee.BidirIterator<G>, Gee.ListIterator<G> {
		public abstract void insert (G item);
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface BidirMapIterator<K,V> : Gee.MapIterator<K,V> {
		public abstract bool first ();
		public abstract bool has_previous ();
		public abstract bool last ();
		public abstract bool previous ();
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface BidirSortedMap<K,V> : Gee.SortedMap<K,V> {
		public abstract Gee.BidirMapIterator<K,V> bidir_map_iterator ();
		public static Gee.BidirSortedMap<K,V> empty<K,V> ();
		public abstract Gee.BidirSortedMap<K,V> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface BidirSortedSet<G> : Gee.SortedSet<G> {
		public abstract Gee.BidirIterator<G> bidir_iterator ();
		public static Gee.BidirSortedSet<G> empty<G> ();
		public abstract Gee.BidirSortedSet<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface Collection<G> : Gee.Iterable<G> {
		[CCode (ordering = 1)]
		public abstract bool add (G item);
		[CCode (ordering = 4)]
		public virtual bool add_all (Gee.Collection<G> collection);
		[CCode (ordering = 13)]
		public virtual bool add_all_array (G[] array);
		[CCode (ordering = 16)]
		public virtual bool add_all_iterator (Gee.Iterator<G> iter);
		[CCode (ordering = 3)]
		public abstract void clear ();
		[CCode (ordering = 0)]
		public abstract bool contains (G item);
		[CCode (ordering = 5)]
		public virtual bool contains_all (Gee.Collection<G> collection);
		[CCode (ordering = 14)]
		public virtual bool contains_all_array (G[] array);
		[CCode (ordering = 17)]
		public virtual bool contains_all_iterator (Gee.Iterator<G> iter);
		public static Gee.Collection<G> empty<G> ();
		[CCode (ordering = 2)]
		public abstract bool remove (G item);
		[CCode (ordering = 6)]
		public virtual bool remove_all (Gee.Collection<G> collection);
		[CCode (ordering = 15)]
		public virtual bool remove_all_array (G[] array);
		[CCode (ordering = 18)]
		public virtual bool remove_all_iterator (Gee.Iterator<G> iter);
		[CCode (ordering = 7)]
		public virtual bool retain_all (Gee.Collection<G> collection);
		[CCode (ordering = 8)]
		public virtual G[] to_array ();
		[CCode (ordering = 10)]
		public virtual bool is_empty { get; }
		[CCode (ordering = 11)]
		public abstract bool read_only { get; }
		[CCode (ordering = 12)]
		public abstract Gee.Collection<G> read_only_view { owned get; }
		[CCode (ordering = 9)]
		public abstract int size { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Comparable<G> : GLib.Object {
		public abstract int compare_to (G object);
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface Deque<G> : Gee.Queue<G> {
		public abstract int drain_head (Gee.Collection<G> recipient, int amount = -1);
		public abstract int drain_tail (Gee.Collection<G> recipient, int amount = -1);
		public abstract bool offer_head (G element);
		public abstract bool offer_tail (G element);
		public abstract G peek_head ();
		public abstract G peek_tail ();
		public abstract G poll_head ();
		public abstract G poll_tail ();
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface Future<G> : GLib.Object {
		public delegate Gee.Future<A> FlatMapFunc<A,G> (G value);
		public delegate unowned A LightMapFunc<A,G> (G value);
		public delegate A MapFunc<A,G> (G value);
		[CCode (scope = "async")]
		public delegate C ZipFunc<A,B,C> (A a, B b);
		[CCode (ordering = 6)]
		public virtual Gee.Future<A> flat_map<A> (owned Gee.Future.FlatMapFunc<A,G> func);
		[CCode (cname = "gee_future_light_map_fixed", ordering = 10, vfunc_name = "light_map_fixed")]
		public virtual Gee.Future<A> light_map<A> (owned Gee.Future.LightMapFunc<A,G> func);
		[CCode (cname = "gee_future_light_map", ordering = 4, vfunc_name = "light_map")]
		public virtual Gee.Future<A> light_map_broken<A> (Gee.Future.LightMapFunc<A,G> func);
		[CCode (ordering = 3)]
		public virtual Gee.Future<A> map<A> (owned Gee.Future.MapFunc<A,G> func);
		[CCode (ordering = 0)]
		public abstract unowned G wait () throws Gee.FutureError;
		[CCode (ordering = 2)]
		public abstract async unowned G wait_async () throws Gee.FutureError;
		[CCode (ordering = 1)]
		public abstract bool wait_until (int64 end_time, out unowned G value = null) throws Gee.FutureError;
		[CCode (ordering = 5)]
		public virtual Gee.Future<B> zip<A,B> (owned Gee.Future.ZipFunc<G,A,B> zip_func, Gee.Future<A> second);
		[CCode (ordering = 9)]
		public abstract GLib.Error? exception { get; }
		[CCode (ordering = 8)]
		public abstract bool ready { get; }
		[CCode (ordering = 7)]
		public virtual G value { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Hashable<G> : GLib.Object {
		public abstract bool equal_to (G object);
		public abstract uint hash ();
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface Iterable<G> : GLib.Object, Gee.Traversable<G> {
		public abstract Gee.Iterator<G> iterator ();
	}
	[CCode (cheader_filename = "gee.h")]
	public interface Iterator<G> : GLib.Object, Gee.Traversable<G> {
		public static Gee.Iterator<G> concat<G> (Gee.Iterator<Gee.Iterator<G>> iters);
		public abstract G @get ();
		public abstract bool has_next ();
		public abstract bool next ();
		public abstract void remove ();
		public static Gee.Iterator<A> unfold<A> (owned Gee.UnfoldFunc<A> f, owned Gee.Lazy<G>? current = null);
		public abstract bool read_only { get; }
		public abstract bool valid { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface List<G> : Gee.Collection<G> {
		public static Gee.List<G> empty<G> ();
		public virtual G first ();
		public abstract G @get (int index);
		public abstract int index_of (G item);
		public abstract void insert (int index, G item);
		public virtual void insert_all (int index, Gee.Collection<G> collection);
		public virtual G last ();
		public abstract new Gee.ListIterator<G> list_iterator ();
		public abstract G remove_at (int index);
		public abstract void @set (int index, G item);
		public abstract Gee.List<G>? slice (int start, int stop);
		public virtual void sort (owned GLib.CompareDataFunc<G>? compare_func = null);
		public abstract Gee.List<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface ListIterator<G> : Gee.Iterator<G> {
		public abstract void add (G item);
		public abstract int index ();
		public abstract void @set (G item);
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface Map<K,V> : GLib.Object, Gee.Iterable<Gee.Map.Entry<K,V>> {
		public abstract class Entry<K,V> : GLib.Object {
			public Entry ();
			public abstract K key { get; }
			public abstract bool read_only { get; }
			public abstract V value { get; set; }
		}
		public abstract void clear ();
		[Deprecated (replacement = "Map.has_key")]
		public bool contains (K key);
		[Deprecated (replacement = "Map.has_all")]
		public bool contains_all (Gee.Map<K,V> map);
		public static Gee.Map<K,V> empty<K,V> ();
		public abstract V @get (K key);
		public abstract bool has (K key, V value);
		public virtual bool has_all (Gee.Map<K,V> map);
		public abstract bool has_key (K key);
		public abstract Gee.MapIterator<K,V> map_iterator ();
		[Deprecated (replacement = "Map.unset")]
		public bool remove (K key, out V value = null);
		[Deprecated (replacement = "Map.unset_all")]
		public bool remove_all (Gee.Map<K,V> map);
		public abstract void @set (K key, V value);
		public virtual void set_all (Gee.Map<K,V> map);
		public abstract bool unset (K key, out V value = null);
		public virtual bool unset_all (Gee.Map<K,V> map);
		public abstract Gee.Set<Gee.Map.Entry<K,V>> entries { owned get; }
		public virtual bool is_empty { get; }
		public GLib.Type key_type { get; }
		public abstract Gee.Set<K> keys { owned get; }
		public abstract bool read_only { get; }
		public abstract Gee.Map<K,V> read_only_view { owned get; }
		public abstract int size { get; }
		public GLib.Type value_type { get; }
		public abstract Gee.Collection<V> values { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface MapIterator<K,V> : GLib.Object {
		public virtual A fold<A> (Gee.FoldMapFunc<A,K,V> f, owned A seed);
		public virtual new bool @foreach (Gee.ForallMapFunc<K,V> f);
		public abstract K get_key ();
		public abstract V get_value ();
		public abstract bool has_next ();
		public abstract bool next ();
		public abstract void set_value (V value);
		public abstract void unset ();
		public abstract bool mutable { get; }
		public abstract bool read_only { get; }
		public abstract bool valid { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface MultiMap<K,V> : GLib.Object {
		public abstract void clear ();
		public abstract bool contains (K key);
		public abstract Gee.Collection<V> @get (K key);
		public abstract Gee.MultiSet<K> get_all_keys ();
		public abstract Gee.Set<K> get_keys ();
		public abstract Gee.Collection<V> get_values ();
		public abstract Gee.MapIterator<K,V> map_iterator ();
		public abstract bool remove (K key, V value);
		public abstract bool remove_all (K key);
		public abstract void @set (K key, V value);
		public GLib.Type key_type { get; }
		public abstract bool read_only { get; }
		public virtual Gee.MultiMap<K,V> read_only_view { owned get; }
		public abstract int size { get; }
		public GLib.Type value_type { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface MultiSet<G> : Gee.Collection<G> {
		public abstract int count (G item);
		public static Gee.Set<G> empty<G> ();
		public virtual Gee.MultiSet<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface Queue<G> : Gee.Collection<G> {
		public const int UNBOUNDED_CAPACITY;
		public virtual int drain (Gee.Collection<G> recipient, int amount = -1);
		public virtual bool offer (G element);
		public abstract G peek ();
		public abstract G poll ();
		public abstract int capacity { get; }
		public abstract bool is_full { get; }
		public abstract int remaining_capacity { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface Set<G> : Gee.Collection<G> {
		public static Gee.Set<G> empty<G> ();
		public abstract Gee.Set<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public interface SortedMap<K,V> : Gee.Map<K,V> {
		public static Gee.Map<K,V> empty<K,V> ();
		public abstract Gee.SortedMap<K,V> head_map (K before);
		public abstract Gee.SortedMap<K,V> sub_map (K before, K after);
		public abstract Gee.SortedMap<K,V> tail_map (K after);
		public abstract Gee.SortedSet<Gee.Map.Entry<K,V>> ascending_entries { owned get; }
		public abstract Gee.SortedSet<K> ascending_keys { owned get; }
		public abstract Gee.SortedMap<K,V> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface SortedSet<G> : Gee.Set<G> {
		public abstract G ceil (G element);
		public static Gee.SortedSet<G> empty<G> ();
		public abstract G first ();
		public abstract G floor (G element);
		public abstract Gee.SortedSet<G> head_set (G before);
		public abstract G higher (G element);
		public abstract Gee.Iterator<G>? iterator_at (G element);
		public abstract G last ();
		public abstract G lower (G element);
		public abstract Gee.SortedSet<G> sub_set (G from, G to);
		public abstract Gee.SortedSet<G> tail_set (G after);
		public abstract Gee.SortedSet<G> read_only_view { owned get; }
	}
	[CCode (cheader_filename = "gee.h")]
	[GenericAccessors]
	public interface Traversable<G> : GLib.Object {
		public enum Stream {
			YIELD,
			CONTINUE,
			END,
			WAIT
		}
		[CCode (ordering = 6)]
		public virtual Gee.Iterator<G> chop (int offset, int length = -1);
		[CCode (ordering = 5)]
		public virtual Gee.Iterator<G> filter (owned Gee.Predicate<G> pred);
		[CCode (ordering = 8)]
		public virtual Gee.Iterator<A> flat_map<A> (owned Gee.FlatMapFunc<A,G> f);
		[CCode (ordering = 2)]
		public virtual A fold<A> (Gee.FoldFunc<A,G> f, owned A seed);
		[CCode (ordering = 0)]
		public abstract new bool @foreach (Gee.ForallFunc<G> f);
		[CCode (ordering = 3)]
		public virtual Gee.Iterator<A> map<A> (Gee.MapFunc<A,G> f);
		[CCode (ordering = 4)]
		public virtual Gee.Iterator<A> scan<A> (Gee.FoldFunc<A,G> f, owned A seed);
		[CCode (ordering = 1)]
		public virtual Gee.Iterator<A> stream<A> (owned Gee.StreamFunc<G,A> f);
		[CCode (ordering = 9)]
		public virtual Gee.Iterator<G>[] tee (uint forks);
		[CCode (ordering = 7)]
		public virtual GLib.Type element_type { get; }
	}
	[CCode (cheader_filename = "gee.h")]
	public errordomain FutureError {
		ABANDON_PROMISE,
		EXCEPTION
	}
	[CCode (cheader_filename = "gee.h")]
	public delegate bool EqualDataFunc<T> (T a, T b);
	[CCode (cheader_filename = "gee.h")]
	public delegate Gee.Iterator<A> FlatMapFunc<A,G> (owned G g);
	[CCode (cheader_filename = "gee.h")]
	public delegate A FoldFunc<A,G> (owned G g, owned A a);
	[CCode (cheader_filename = "gee.h")]
	public delegate A FoldMapFunc<A,K,V> (K k, V v, owned A a);
	[CCode (cheader_filename = "gee.h")]
	public delegate bool ForallFunc<G> (owned G g);
	[CCode (cheader_filename = "gee.h")]
	public delegate bool ForallMapFunc<K,V> (K k, V v);
	[CCode (cheader_filename = "gee.h")]
	public delegate uint HashDataFunc<T> (T v);
	[CCode (cheader_filename = "gee.h")]
	public delegate G LazyFunc<G> ();
	[CCode (cheader_filename = "gee.h")]
	public delegate A MapFunc<A,G> (owned G g);
	[CCode (cheader_filename = "gee.h")]
	public delegate bool Predicate<G> (G g);
	[CCode (cheader_filename = "gee.h")]
	public delegate Gee.Traversable.Stream StreamFunc<G,A> (Gee.Traversable.Stream state, owned Gee.Lazy<G>? g, out Gee.Lazy<A>? lazy);
	[CCode (cheader_filename = "gee.h", scope = "async")]
	public delegate G Task<G> ();
	[CCode (cheader_filename = "gee.h")]
	public delegate Gee.Lazy<A>? UnfoldFunc<A> ();
	[CCode (cheader_filename = "gee.h")]
	public static async void async_task () throws GLib.ThreadError;
	[CCode (cheader_filename = "gee.h")]
	public static Gee.Future<G> task<G> (owned Gee.Task<G> task) throws GLib.ThreadError;
}

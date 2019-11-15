package org.jboss.netty.util.internal;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.ReentrantLock;

public final class ConcurrentIdentityWeakKeyHashMap<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {
    static final int DEFAULT_CONCURRENCY_LEVEL = 16;
    static final int DEFAULT_INITIAL_CAPACITY = 16;
    static final float DEFAULT_LOAD_FACTOR = 0.75f;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    static final int RETRIES_BEFORE_LOCK = 2;
    Set<Entry<K, V>> entrySet;
    Set<K> keySet;
    final int segmentMask;
    final int segmentShift;
    final Segment<K, V>[] segments;
    Collection<V> values;

    final class EntryIterator extends HashIterator implements ReusableIterator<Entry<K, V>> {
        EntryIterator() {
            super();
        }

        public Entry<K, V> next() {
            HashEntry nextEntry = nextEntry();
            return new WriteThroughEntry(nextEntry.key(), nextEntry.value());
        }
    }

    final class EntrySet extends AbstractSet<Entry<K, V>> {
        EntrySet() {
        }

        public Iterator<Entry<K, V>> iterator() {
            return new EntryIterator();
        }

        public boolean contains(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            Object obj2 = ConcurrentIdentityWeakKeyHashMap.this.get(entry.getKey());
            if (obj2 == null || !obj2.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        public boolean remove(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return ConcurrentIdentityWeakKeyHashMap.this.remove(entry.getKey(), entry.getValue());
        }

        public int size() {
            return ConcurrentIdentityWeakKeyHashMap.this.size();
        }

        public boolean isEmpty() {
            return ConcurrentIdentityWeakKeyHashMap.this.isEmpty();
        }

        public void clear() {
            ConcurrentIdentityWeakKeyHashMap.this.clear();
        }
    }

    static final class HashEntry<K, V> {
        final int hash;
        final Object keyRef;
        final HashEntry<K, V> next;
        volatile Object valueRef;

        HashEntry(K k, int i, HashEntry<K, V> hashEntry, V v, ReferenceQueue<Object> referenceQueue) {
            this.hash = i;
            this.next = hashEntry;
            this.keyRef = new WeakKeyReference(k, i, referenceQueue);
            this.valueRef = v;
        }

        /* access modifiers changed from: 0000 */
        public K key() {
            return ((Reference) this.keyRef).get();
        }

        /* access modifiers changed from: 0000 */
        public V value() {
            return dereferenceValue(this.valueRef);
        }

        /* access modifiers changed from: 0000 */
        public V dereferenceValue(Object obj) {
            if (obj instanceof WeakKeyReference) {
                return ((Reference) obj).get();
            }
            return obj;
        }

        /* access modifiers changed from: 0000 */
        public void setValue(V v) {
            this.valueRef = v;
        }

        static <K, V> HashEntry<K, V>[] newArray(int i) {
            return new HashEntry[i];
        }
    }

    abstract class HashIterator {
        K currentKey;
        HashEntry<K, V>[] currentTable;
        HashEntry<K, V> lastReturned;
        HashEntry<K, V> nextEntry;
        int nextSegmentIndex;
        int nextTableIndex = -1;

        HashIterator() {
            this.nextSegmentIndex = ConcurrentIdentityWeakKeyHashMap.this.segments.length - 1;
            advance();
        }

        public void rewind() {
            this.nextSegmentIndex = ConcurrentIdentityWeakKeyHashMap.this.segments.length - 1;
            this.nextTableIndex = -1;
            this.currentTable = null;
            this.nextEntry = null;
            this.lastReturned = null;
            this.currentKey = null;
            advance();
        }

        public boolean hasMoreElements() {
            return hasNext();
        }

        /* access modifiers changed from: 0000 */
        public final void advance() {
            if (this.nextEntry != null) {
                HashEntry<K, V> hashEntry = this.nextEntry.next;
                this.nextEntry = hashEntry;
                if (hashEntry != null) {
                    return;
                }
            }
            while (this.nextTableIndex >= 0) {
                HashEntry<K, V>[] hashEntryArr = this.currentTable;
                int i = this.nextTableIndex;
                this.nextTableIndex = i - 1;
                HashEntry<K, V> hashEntry2 = hashEntryArr[i];
                this.nextEntry = hashEntry2;
                if (hashEntry2 != null) {
                    return;
                }
            }
            while (this.nextSegmentIndex >= 0) {
                Segment<K, V>[] segmentArr = ConcurrentIdentityWeakKeyHashMap.this.segments;
                int i2 = this.nextSegmentIndex;
                this.nextSegmentIndex = i2 - 1;
                Segment<K, V> segment = segmentArr[i2];
                if (segment.count != 0) {
                    this.currentTable = segment.table;
                    for (int length = this.currentTable.length - 1; length >= 0; length--) {
                        HashEntry<K, V> hashEntry3 = this.currentTable[length];
                        this.nextEntry = hashEntry3;
                        if (hashEntry3 != null) {
                            this.nextTableIndex = length - 1;
                            return;
                        }
                    }
                    continue;
                }
            }
        }

        public boolean hasNext() {
            while (this.nextEntry != null) {
                if (this.nextEntry.key() != null) {
                    return true;
                }
                advance();
            }
            return false;
        }

        /* access modifiers changed from: 0000 */
        public HashEntry<K, V> nextEntry() {
            while (this.nextEntry != null) {
                this.lastReturned = this.nextEntry;
                this.currentKey = this.lastReturned.key();
                advance();
                if (this.currentKey != null) {
                    return this.lastReturned;
                }
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            if (this.lastReturned == null) {
                throw new IllegalStateException();
            }
            ConcurrentIdentityWeakKeyHashMap.this.remove(this.currentKey);
            this.lastReturned = null;
        }
    }

    final class KeyIterator extends HashIterator implements Enumeration<K>, ReusableIterator<K> {
        KeyIterator() {
            super();
        }

        public K next() {
            return nextEntry().key();
        }

        public K nextElement() {
            return nextEntry().key();
        }
    }

    final class KeySet extends AbstractSet<K> {
        KeySet() {
        }

        public Iterator<K> iterator() {
            return new KeyIterator();
        }

        public int size() {
            return ConcurrentIdentityWeakKeyHashMap.this.size();
        }

        public boolean isEmpty() {
            return ConcurrentIdentityWeakKeyHashMap.this.isEmpty();
        }

        public boolean contains(Object obj) {
            return ConcurrentIdentityWeakKeyHashMap.this.containsKey(obj);
        }

        public boolean remove(Object obj) {
            return ConcurrentIdentityWeakKeyHashMap.this.remove(obj) != null;
        }

        public void clear() {
            ConcurrentIdentityWeakKeyHashMap.this.clear();
        }
    }

    static final class Segment<K, V> extends ReentrantLock {
        private static final long serialVersionUID = 5571906852696599096L;
        volatile transient int count;
        final float loadFactor;
        int modCount;
        volatile transient ReferenceQueue<Object> refQueue;
        volatile transient HashEntry<K, V>[] table;
        int threshold;

        Segment(int i, float f) {
            this.loadFactor = f;
            setTable(HashEntry.newArray(i));
        }

        static <K, V> Segment<K, V>[] newArray(int i) {
            return new Segment[i];
        }

        private static boolean keyEq(Object obj, Object obj2) {
            return obj == obj2;
        }

        /* access modifiers changed from: 0000 */
        public void setTable(HashEntry<K, V>[] hashEntryArr) {
            this.threshold = (int) (((float) hashEntryArr.length) * this.loadFactor);
            this.table = hashEntryArr;
            this.refQueue = new ReferenceQueue<>();
        }

        /* access modifiers changed from: 0000 */
        public HashEntry<K, V> getFirst(int i) {
            HashEntry<K, V>[] hashEntryArr = this.table;
            return hashEntryArr[(hashEntryArr.length - 1) & i];
        }

        /* access modifiers changed from: 0000 */
        public HashEntry<K, V> newHashEntry(K k, int i, HashEntry<K, V> hashEntry, V v) {
            return new HashEntry<>(k, i, hashEntry, v, this.refQueue);
        }

        /* access modifiers changed from: 0000 */
        public V readValueUnderLock(HashEntry<K, V> hashEntry) {
            lock();
            try {
                removeStale();
                return hashEntry.value();
            } finally {
                unlock();
            }
        }

        /* access modifiers changed from: 0000 */
        public V get(Object obj, int i) {
            if (this.count != 0) {
                HashEntry<K, V> first = getFirst(i);
                while (first != null) {
                    if (first.hash != i || !keyEq(obj, first.key())) {
                        first = first.next;
                    } else {
                        Object obj2 = first.valueRef;
                        if (obj2 != null) {
                            return first.dereferenceValue(obj2);
                        }
                        return readValueUnderLock(first);
                    }
                }
            }
            return null;
        }

        /* access modifiers changed from: 0000 */
        public boolean containsKey(Object obj, int i) {
            if (this.count != 0) {
                for (HashEntry<K, V> first = getFirst(i); first != null; first = first.next) {
                    if (first.hash == i && keyEq(obj, first.key())) {
                        return true;
                    }
                }
            }
            return false;
        }

        /* access modifiers changed from: 0000 */
        public boolean containsValue(Object obj) {
            HashEntry<K, V>[] hashEntryArr;
            Object dereferenceValue;
            if (this.count != 0) {
                for (HashEntry<K, V> hashEntry : this.table) {
                    while (hashEntry != null) {
                        Object obj2 = hashEntry.valueRef;
                        if (obj2 == null) {
                            dereferenceValue = readValueUnderLock(hashEntry);
                        } else {
                            dereferenceValue = hashEntry.dereferenceValue(obj2);
                        }
                        if (obj.equals(dereferenceValue)) {
                            return true;
                        }
                        hashEntry = hashEntry.next;
                    }
                }
            }
            return false;
        }

        /* access modifiers changed from: 0000 */
        public boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                removeStale();
                HashEntry first = getFirst(i);
                while (first != null && (first.hash != i || !keyEq(k, first.key()))) {
                    first = first.next;
                }
                boolean z = false;
                if (first != null && v.equals(first.value())) {
                    z = true;
                    first.setValue(v2);
                }
                return z;
            } finally {
                unlock();
            }
        }

        /* access modifiers changed from: 0000 */
        public V replace(K k, int i, V v) {
            lock();
            try {
                removeStale();
                HashEntry first = getFirst(i);
                while (first != null && (first.hash != i || !keyEq(k, first.key()))) {
                    first = first.next;
                }
                V v2 = null;
                if (first != null) {
                    v2 = first.value();
                    first.setValue(v);
                }
                return v2;
            } finally {
                unlock();
            }
        }

        /* access modifiers changed from: 0000 */
        public V put(K k, int i, V v, boolean z) {
            V v2;
            lock();
            try {
                removeStale();
                int i2 = this.count;
                int i3 = i2 + 1;
                if (i2 > this.threshold) {
                    int rehash = rehash();
                    if (rehash > 0) {
                        i3 -= rehash;
                        this.count = i3 - 1;
                    }
                }
                int i4 = i3;
                HashEntry<K, V>[] hashEntryArr = this.table;
                int length = i & (hashEntryArr.length - 1);
                HashEntry<K, V> hashEntry = hashEntryArr[length];
                HashEntry<K, V> hashEntry2 = hashEntry;
                while (hashEntry2 != null && (hashEntry2.hash != i || !keyEq(k, hashEntry2.key()))) {
                    hashEntry2 = hashEntry2.next;
                }
                if (hashEntry2 != null) {
                    v2 = hashEntry2.value();
                    if (!z) {
                        hashEntry2.setValue(v);
                    }
                } else {
                    v2 = null;
                    this.modCount++;
                    hashEntryArr[length] = newHashEntry(k, i, hashEntry, v);
                    this.count = i4;
                }
                return v2;
            } finally {
                unlock();
            }
        }

        /* access modifiers changed from: 0000 */
        public int rehash() {
            int i;
            HashEntry<K, V> hashEntry;
            int i2 = 0;
            HashEntry<K, V>[] hashEntryArr = this.table;
            int length = hashEntryArr.length;
            if (length < 1073741824) {
                HashEntry<K, V>[] newArray = HashEntry.newArray(length << 1);
                this.threshold = (int) (((float) newArray.length) * this.loadFactor);
                int length2 = newArray.length - 1;
                int length3 = hashEntryArr.length;
                int i3 = 0;
                while (i3 < length3) {
                    HashEntry<K, V> hashEntry2 = hashEntryArr[i3];
                    if (hashEntry2 != null) {
                        HashEntry<K, V> hashEntry3 = hashEntry2.next;
                        int i4 = hashEntry2.hash & length2;
                        if (hashEntry3 == null) {
                            newArray[i4] = hashEntry2;
                            i = i2;
                        } else {
                            HashEntry<K, V> hashEntry4 = hashEntry2;
                            while (hashEntry3 != null) {
                                int i5 = hashEntry3.hash & length2;
                                if (i5 != i4) {
                                    hashEntry = hashEntry3;
                                } else {
                                    i5 = i4;
                                    hashEntry = hashEntry4;
                                }
                                hashEntry3 = hashEntry3.next;
                                hashEntry4 = hashEntry;
                                i4 = i5;
                            }
                            newArray[i4] = hashEntry4;
                            i = i2;
                            for (HashEntry<K, V> hashEntry5 = hashEntry2; hashEntry5 != hashEntry4; hashEntry5 = hashEntry5.next) {
                                Object key = hashEntry5.key();
                                if (key == null) {
                                    i++;
                                } else {
                                    int i6 = hashEntry5.hash & length2;
                                    newArray[i6] = newHashEntry(key, hashEntry5.hash, newArray[i6], hashEntry5.value());
                                }
                            }
                        }
                    } else {
                        i = i2;
                    }
                    i3++;
                    i2 = i;
                }
                this.table = newArray;
            }
            return i2;
        }

        /* access modifiers changed from: 0000 */
        public V remove(Object obj, int i, Object obj2, boolean z) {
            lock();
            if (!z) {
                try {
                    removeStale();
                } catch (Throwable th) {
                    unlock();
                    throw th;
                }
            }
            int i2 = this.count - 1;
            HashEntry<K, V>[] hashEntryArr = this.table;
            int length = i & (hashEntryArr.length - 1);
            HashEntry<K, V> hashEntry = hashEntryArr[length];
            HashEntry<K, V> hashEntry2 = hashEntry;
            while (hashEntry2 != null && obj != hashEntry2.keyRef && (z || i != hashEntry2.hash || !keyEq(obj, hashEntry2.key()))) {
                hashEntry2 = hashEntry2.next;
            }
            V v = null;
            if (hashEntry2 != null) {
                V value = hashEntry2.value();
                if (obj2 == null || obj2.equals(value)) {
                    this.modCount++;
                    HashEntry<K, V> hashEntry3 = hashEntry2.next;
                    HashEntry<K, V> hashEntry4 = hashEntry;
                    int i3 = i2;
                    for (HashEntry<K, V> hashEntry5 = hashEntry4; hashEntry5 != hashEntry2; hashEntry5 = hashEntry5.next) {
                        Object key = hashEntry5.key();
                        if (key == null) {
                            i3--;
                        } else {
                            hashEntry3 = newHashEntry(key, hashEntry5.hash, hashEntry3, hashEntry5.value());
                        }
                    }
                    hashEntryArr[length] = hashEntry3;
                    this.count = i3;
                    v = value;
                }
            }
            unlock();
            return v;
        }

        /* access modifiers changed from: 0000 */
        public void removeStale() {
            while (true) {
                WeakKeyReference weakKeyReference = (WeakKeyReference) this.refQueue.poll();
                if (weakKeyReference != null) {
                    remove(weakKeyReference.keyRef(), weakKeyReference.keyHash(), null, true);
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void clear() {
            if (this.count != 0) {
                lock();
                try {
                    HashEntry<K, V>[] hashEntryArr = this.table;
                    for (int i = 0; i < hashEntryArr.length; i++) {
                        hashEntryArr[i] = null;
                    }
                    this.modCount++;
                    this.refQueue = new ReferenceQueue<>();
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }
    }

    static class SimpleEntry<K, V> implements Entry<K, V> {
        private final K key;
        private V value;

        public SimpleEntry(K k, V v) {
            this.key = k;
            this.value = v;
        }

        public SimpleEntry(Entry<? extends K, ? extends V> entry) {
            this.key = entry.getKey();
            this.value = entry.getValue();
        }

        public K getKey() {
            return this.key;
        }

        public V getValue() {
            return this.value;
        }

        public V setValue(V v) {
            V v2 = this.value;
            this.value = v;
            return v2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (!eq(this.key, entry.getKey()) || !eq(this.value, entry.getValue())) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.key == null ? 0 : this.key.hashCode();
            if (this.value != null) {
                i = this.value.hashCode();
            }
            return hashCode ^ i;
        }

        public String toString() {
            return this.key + "=" + this.value;
        }

        private static boolean eq(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }
    }

    final class ValueIterator extends HashIterator implements Enumeration<V>, ReusableIterator<V> {
        ValueIterator() {
            super();
        }

        public V next() {
            return nextEntry().value();
        }

        public V nextElement() {
            return nextEntry().value();
        }
    }

    final class Values extends AbstractCollection<V> {
        Values() {
        }

        public Iterator<V> iterator() {
            return new ValueIterator();
        }

        public int size() {
            return ConcurrentIdentityWeakKeyHashMap.this.size();
        }

        public boolean isEmpty() {
            return ConcurrentIdentityWeakKeyHashMap.this.isEmpty();
        }

        public boolean contains(Object obj) {
            return ConcurrentIdentityWeakKeyHashMap.this.containsValue(obj);
        }

        public void clear() {
            ConcurrentIdentityWeakKeyHashMap.this.clear();
        }
    }

    static final class WeakKeyReference<K> extends WeakReference<K> {
        final int hash;

        WeakKeyReference(K k, int i, ReferenceQueue<Object> referenceQueue) {
            super(k, referenceQueue);
            this.hash = i;
        }

        public int keyHash() {
            return this.hash;
        }

        public Object keyRef() {
            return this;
        }
    }

    final class WriteThroughEntry extends SimpleEntry<K, V> {
        WriteThroughEntry(K k, V v) {
            super(k, v);
        }

        public V setValue(V v) {
            if (v == null) {
                throw new NullPointerException();
            }
            V value = super.setValue(v);
            ConcurrentIdentityWeakKeyHashMap.this.put(getKey(), v);
            return value;
        }
    }

    private static int hash(int i) {
        int i2 = ((i << 15) ^ -12931) + i;
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    /* access modifiers changed from: 0000 */
    public Segment<K, V> segmentFor(int i) {
        return this.segments[(i >>> this.segmentShift) & this.segmentMask];
    }

    private static int hashOf(Object obj) {
        return hash(System.identityHashCode(obj));
    }

    public ConcurrentIdentityWeakKeyHashMap(int i, float f, int i2) {
        if (f <= 0.0f || i < 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        if (i2 > 65536) {
            i2 = 65536;
        }
        int i3 = 1;
        int i4 = 0;
        while (i3 < i2) {
            i3 <<= 1;
            i4++;
        }
        this.segmentShift = 32 - i4;
        this.segmentMask = i3 - 1;
        this.segments = Segment.newArray(i3);
        if (i > 1073741824) {
            i = 1073741824;
        }
        int i5 = i / i3;
        if (i5 * i3 < i) {
            i5++;
        }
        int i6 = 1;
        while (i6 < i5) {
            i6 <<= 1;
        }
        for (int i7 = 0; i7 < this.segments.length; i7++) {
            this.segments[i7] = new Segment<>(i6, f);
        }
    }

    public ConcurrentIdentityWeakKeyHashMap(int i, float f) {
        this(i, f, 16);
    }

    public ConcurrentIdentityWeakKeyHashMap(int i) {
        this(i, DEFAULT_LOAD_FACTOR, 16);
    }

    public ConcurrentIdentityWeakKeyHashMap() {
        this(16, DEFAULT_LOAD_FACTOR, 16);
    }

    public ConcurrentIdentityWeakKeyHashMap(Map<? extends K, ? extends V> map) {
        this(Math.max(((int) (((float) map.size()) / DEFAULT_LOAD_FACTOR)) + 1, 16), DEFAULT_LOAD_FACTOR, 16);
        putAll(map);
    }

    public boolean isEmpty() {
        Segment<K, V>[] segmentArr = this.segments;
        int[] iArr = new int[segmentArr.length];
        int i = 0;
        for (int i2 = 0; i2 < segmentArr.length; i2++) {
            if (segmentArr[i2].count != 0) {
                return false;
            }
            int i3 = segmentArr[i2].modCount;
            iArr[i2] = i3;
            i += i3;
        }
        if (i != 0) {
            for (int i4 = 0; i4 < segmentArr.length; i4++) {
                if (segmentArr[i4].count != 0 || iArr[i4] != segmentArr[i4].modCount) {
                    return false;
                }
            }
        }
        return true;
    }

    public int size() {
        long j;
        long j2;
        long j3;
        Segment<K, V>[] segmentArr = this.segments;
        int[] iArr = new int[segmentArr.length];
        int i = 0;
        long j4 = 0;
        long j5 = 0;
        while (true) {
            if (i >= 2) {
                long j6 = j4;
                j = j5;
                j2 = j6;
                break;
            }
            long j7 = 0;
            j5 = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < segmentArr.length; i3++) {
                j5 += (long) segmentArr[i3].count;
                int i4 = segmentArr[i3].modCount;
                iArr[i3] = i4;
                i2 += i4;
            }
            if (i2 != 0) {
                int i5 = 0;
                while (true) {
                    if (i5 >= segmentArr.length) {
                        break;
                    }
                    j7 += (long) segmentArr[i5].count;
                    if (iArr[i5] != segmentArr[i5].modCount) {
                        j4 = -1;
                        break;
                    }
                    i5++;
                }
            }
            j4 = j7;
            if (j4 == j5) {
                long j8 = j4;
                j = j5;
                j2 = j8;
                break;
            }
            i++;
        }
        if (j2 != j3) {
            for (Segment<K, V> lock : segmentArr) {
                lock.lock();
            }
            j3 = 0;
            int i6 = 0;
            while (i6 < segmentArr.length) {
                long j9 = ((long) segmentArr[i6].count) + j3;
                i6++;
                j3 = j9;
            }
            for (Segment<K, V> unlock : segmentArr) {
                unlock.unlock();
            }
        }
        if (j3 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) j3;
    }

    public V get(Object obj) {
        int hashOf = hashOf(obj);
        return segmentFor(hashOf).get(obj, hashOf);
    }

    public boolean containsKey(Object obj) {
        int hashOf = hashOf(obj);
        return segmentFor(hashOf).containsKey(obj, hashOf);
    }

    /* JADX WARNING: type inference failed for: r4v0 */
    /* JADX WARNING: type inference failed for: r4v1, types: [int] */
    /* JADX WARNING: type inference failed for: r0v2 */
    /* JADX WARNING: type inference failed for: r0v3, types: [int] */
    /* JADX WARNING: type inference failed for: r1v1, types: [int] */
    /* JADX WARNING: type inference failed for: r0v5 */
    /* JADX WARNING: type inference failed for: r0v6, types: [int] */
    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: type inference failed for: r0v8 */
    /* JADX WARNING: type inference failed for: r1v3, types: [int] */
    /* JADX WARNING: type inference failed for: r0v9 */
    /* JADX WARNING: type inference failed for: r0v12 */
    /* JADX WARNING: type inference failed for: r0v13, types: [int] */
    /* JADX WARNING: type inference failed for: r0v14 */
    /* JADX WARNING: type inference failed for: r0v15 */
    /* JADX WARNING: type inference failed for: r0v16, types: [int] */
    /* JADX WARNING: type inference failed for: r4v5 */
    /* JADX WARNING: type inference failed for: r0v17 */
    /* JADX WARNING: type inference failed for: r0v18, types: [int] */
    /* JADX WARNING: type inference failed for: r0v19 */
    /* JADX WARNING: type inference failed for: r1v6 */
    /* JADX WARNING: type inference failed for: r1v7 */
    /* JADX WARNING: type inference failed for: r1v8 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: type inference failed for: r0v23 */
    /* JADX WARNING: type inference failed for: r0v24 */
    /* JADX WARNING: type inference failed for: r0v25 */
    /* JADX WARNING: type inference failed for: r0v26 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x003d A[LOOP:0: B:5:0x0010->B:22:0x003d, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0028 A[SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 10 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean containsValue(java.lang.Object r9) {
        /*
            r8 = this;
            r3 = 1
            r1 = 0
            if (r9 != 0) goto L_0x000a
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r0.<init>()
            throw r0
        L_0x000a:
            org.jboss.netty.util.internal.ConcurrentIdentityWeakKeyHashMap$Segment<K, V>[] r5 = r8.segments
            int r0 = r5.length
            int[] r6 = new int[r0]
            r4 = r1
        L_0x0010:
            r0 = 2
            if (r4 >= r0) goto L_0x0044
            r0 = r1
            r2 = r1
        L_0x0015:
            int r7 = r5.length
            if (r0 >= r7) goto L_0x002c
            r7 = r5[r0]
            int r7 = r7.modCount
            r6[r0] = r7
            int r2 = r2 + r7
            r7 = r5[r0]
            boolean r7 = r7.containsValue(r9)
            if (r7 == 0) goto L_0x0029
            r1 = r3
        L_0x0028:
            return r1
        L_0x0029:
            int r0 = r0 + 1
            goto L_0x0015
        L_0x002c:
            if (r2 == 0) goto L_0x007c
            r0 = r1
        L_0x002f:
            int r2 = r5.length
            if (r0 >= r2) goto L_0x007c
            r2 = r6[r0]
            r7 = r5[r0]
            int r7 = r7.modCount
            if (r2 == r7) goto L_0x0041
            r0 = r1
        L_0x003b:
            if (r0 != 0) goto L_0x0028
            int r0 = r4 + 1
            r4 = r0
            goto L_0x0010
        L_0x0041:
            int r0 = r0 + 1
            goto L_0x002f
        L_0x0044:
            int r2 = r5.length
            r0 = r1
        L_0x0046:
            if (r0 >= r2) goto L_0x0050
            r4 = r5[r0]
            r4.lock()
            int r0 = r0 + 1
            goto L_0x0046
        L_0x0050:
            int r2 = r5.length     // Catch:{ all -> 0x006e }
            r0 = r1
        L_0x0052:
            if (r0 >= r2) goto L_0x007a
            r4 = r5[r0]     // Catch:{ all -> 0x006e }
            boolean r4 = r4.containsValue(r9)     // Catch:{ all -> 0x006e }
            if (r4 == 0) goto L_0x0068
            r0 = r3
        L_0x005d:
            int r2 = r5.length
        L_0x005e:
            if (r1 >= r2) goto L_0x006c
            r3 = r5[r1]
            r3.unlock()
            int r1 = r1 + 1
            goto L_0x005e
        L_0x0068:
            int r0 = r0 + 1
            goto L_0x0052
        L_0x006b:
            throw r0
        L_0x006c:
            r1 = r0
            goto L_0x0028
        L_0x006e:
            r0 = move-exception
            int r2 = r5.length
        L_0x0070:
            if (r1 >= r2) goto L_0x006b
            r3 = r5[r1]
            r3.unlock()
            int r1 = r1 + 1
            goto L_0x0070
        L_0x007a:
            r0 = r1
            goto L_0x005d
        L_0x007c:
            r0 = r3
            goto L_0x003b
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.ConcurrentIdentityWeakKeyHashMap.containsValue(java.lang.Object):boolean");
    }

    public boolean contains(Object obj) {
        return containsValue(obj);
    }

    public V put(K k, V v) {
        if (v == null) {
            throw new NullPointerException();
        }
        int hashOf = hashOf(k);
        return segmentFor(hashOf).put(k, hashOf, v, false);
    }

    public V putIfAbsent(K k, V v) {
        if (v == null) {
            throw new NullPointerException();
        }
        int hashOf = hashOf(k);
        return segmentFor(hashOf).put(k, hashOf, v, true);
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        for (Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public V remove(Object obj) {
        int hashOf = hashOf(obj);
        return segmentFor(hashOf).remove(obj, hashOf, null, false);
    }

    public boolean remove(Object obj, Object obj2) {
        int hashOf = hashOf(obj);
        if (obj2 == null || segmentFor(hashOf).remove(obj, hashOf, obj2, false) == null) {
            return false;
        }
        return true;
    }

    public boolean replace(K k, V v, V v2) {
        if (v == null || v2 == null) {
            throw new NullPointerException();
        }
        int hashOf = hashOf(k);
        return segmentFor(hashOf).replace(k, hashOf, v, v2);
    }

    public V replace(K k, V v) {
        if (v == null) {
            throw new NullPointerException();
        }
        int hashOf = hashOf(k);
        return segmentFor(hashOf).replace(k, hashOf, v);
    }

    public void clear() {
        for (Segment<K, V> clear : this.segments) {
            clear.clear();
        }
    }

    public void purgeStaleEntries() {
        for (Segment<K, V> removeStale : this.segments) {
            removeStale.removeStale();
        }
    }

    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        KeySet keySet2 = new KeySet();
        this.keySet = keySet2;
        return keySet2;
    }

    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Values values2 = new Values();
        this.values = values2;
        return values2;
    }

    public Set<Entry<K, V>> entrySet() {
        Set<Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        EntrySet entrySet2 = new EntrySet();
        this.entrySet = entrySet2;
        return entrySet2;
    }

    public Enumeration<K> keys() {
        return new KeyIterator();
    }

    public Enumeration<V> elements() {
        return new ValueIterator();
    }
}

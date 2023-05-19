package com.xiaomi.push;

import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/* renamed from: com.xiaomi.push.jh */
/* loaded from: classes2.dex */
public final class C6280jh {

    /* renamed from: a */
    private static final Comparator f22776a = new C6281a();

    /* renamed from: com.xiaomi.push.jh$a */
    /* loaded from: classes2.dex */
    private static class C6281a implements Comparator {
        private C6281a() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            if (obj == null && obj2 == null) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            return obj instanceof List ? C6280jh.m1918a((List) obj, (List) obj2) : obj instanceof Set ? C6280jh.m1916a((Set) obj, (Set) obj2) : obj instanceof Map ? C6280jh.m1917a((Map) obj, (Map) obj2) : obj instanceof byte[] ? C6280jh.m1913a((byte[]) obj, (byte[]) obj2) : C6280jh.m1925a((Comparable) obj, (Comparable) obj2);
        }
    }

    /* renamed from: a */
    public static int m1928a(byte b, byte b2) {
        if (b < b2) {
            return -1;
        }
        return b2 < b ? 1 : 0;
    }

    /* renamed from: a */
    public static int m1927a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i2 < i ? 1 : 0;
    }

    /* renamed from: a */
    public static int m1926a(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j2 < j ? 1 : 0;
    }

    /* renamed from: a */
    public static int m1925a(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    /* renamed from: a */
    public static int m1924a(String str, String str2) {
        return str.compareTo(str2);
    }

    /* renamed from: a */
    public static int m1919a(ByteBuffer byteBuffer, byte[] bArr, int i) {
        int remaining = byteBuffer.remaining();
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), bArr, i, remaining);
        return remaining;
    }

    /* renamed from: a */
    public static int m1918a(List list, List list2) {
        int m1927a = m1927a(list.size(), list2.size());
        if (m1927a != 0) {
            return m1927a;
        }
        for (int i = 0; i < list.size(); i++) {
            int compare = f22776a.compare(list.get(i), list2.get(i));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m1917a(Map map, Map map2) {
        int m1927a = m1927a(map.size(), map2.size());
        if (m1927a != 0) {
            return m1927a;
        }
        Comparator comparator = f22776a;
        TreeMap treeMap = new TreeMap(comparator);
        treeMap.putAll(map);
        Iterator it2 = treeMap.entrySet().iterator();
        TreeMap treeMap2 = new TreeMap(comparator);
        treeMap2.putAll(map2);
        Iterator it3 = treeMap2.entrySet().iterator();
        while (it2.hasNext() && it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Map.Entry entry2 = (Map.Entry) it3.next();
            Comparator comparator2 = f22776a;
            int compare = comparator2.compare(entry.getKey(), entry2.getKey());
            if (compare != 0) {
                return compare;
            }
            int compare2 = comparator2.compare(entry.getValue(), entry2.getValue());
            if (compare2 != 0) {
                return compare2;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m1916a(Set set, Set set2) {
        int m1927a = m1927a(set.size(), set2.size());
        if (m1927a != 0) {
            return m1927a;
        }
        Comparator comparator = f22776a;
        TreeSet treeSet = new TreeSet(comparator);
        treeSet.addAll(set);
        TreeSet treeSet2 = new TreeSet(comparator);
        treeSet2.addAll(set2);
        Iterator it2 = treeSet.iterator();
        Iterator it3 = treeSet2.iterator();
        while (it2.hasNext() && it3.hasNext()) {
            int compare = f22776a.compare(it2.next(), it3.next());
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m1915a(short s, short s2) {
        if (s < s2) {
            return -1;
        }
        return s2 < s ? 1 : 0;
    }

    /* renamed from: a */
    public static int m1914a(boolean z, boolean z2) {
        return Boolean.valueOf(z).compareTo(Boolean.valueOf(z2));
    }

    /* renamed from: a */
    public static int m1913a(byte[] bArr, byte[] bArr2) {
        int m1927a = m1927a(bArr.length, bArr2.length);
        if (m1927a != 0) {
            return m1927a;
        }
        for (int i = 0; i < bArr.length; i++) {
            int m1928a = m1928a(bArr[i], bArr2[i]);
            if (m1928a != 0) {
                return m1928a;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static String m1929a(byte b) {
        return Integer.toHexString((b | 256) & 511).toUpperCase().substring(1);
    }

    /* renamed from: a */
    public static ByteBuffer m1923a(ByteBuffer byteBuffer) {
        return m1922a(byteBuffer) ? byteBuffer : ByteBuffer.wrap(m1921a(byteBuffer));
    }

    /* renamed from: a */
    public static void m1920a(ByteBuffer byteBuffer, StringBuilder sb) {
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset();
        int limit = byteBuffer.limit();
        int i = limit - arrayOffset > 128 ? arrayOffset + 128 : limit;
        for (int i2 = arrayOffset; i2 < i; i2++) {
            if (i2 > arrayOffset) {
                sb.append(" ");
            }
            sb.append(m1929a(array[i2]));
        }
        if (limit != i) {
            sb.append("...");
        }
    }

    /* renamed from: a */
    public static boolean m1922a(ByteBuffer byteBuffer) {
        return byteBuffer.hasArray() && byteBuffer.position() == 0 && byteBuffer.arrayOffset() == 0 && byteBuffer.remaining() == byteBuffer.capacity();
    }

    /* renamed from: a */
    public static byte[] m1921a(ByteBuffer byteBuffer) {
        if (m1922a(byteBuffer)) {
            return byteBuffer.array();
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        m1919a(byteBuffer, bArr, 0);
        return bArr;
    }
}

package com.tencent.bugly.mimsg.proguard;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: BUGLY */
public final class i {
    private ByteBuffer a;
    private String b = "GBK";

    /* compiled from: BUGLY */
    public static class a {
        public byte a;
        public int b;
    }

    public i() {
    }

    public i(byte[] bArr) {
        this.a = ByteBuffer.wrap(bArr);
    }

    public i(byte[] bArr, int i) {
        this.a = ByteBuffer.wrap(bArr);
        this.a.position(4);
    }

    public final void a(byte[] bArr) {
        if (this.a != null) {
            this.a.clear();
        }
        this.a = ByteBuffer.wrap(bArr);
    }

    private static int a(a aVar, ByteBuffer byteBuffer) {
        byte b2 = byteBuffer.get();
        aVar.a = (byte) (b2 & 15);
        aVar.b = (b2 & 240) >> 4;
        if (aVar.b != 15) {
            return 1;
        }
        aVar.b = byteBuffer.get();
        return 2;
    }

    private boolean a(int i) {
        try {
            a aVar = new a();
            while (true) {
                int a2 = a(aVar, this.a.duplicate());
                if (i > aVar.b && aVar.a != 11) {
                    this.a.position(a2 + this.a.position());
                    a(aVar.a);
                }
            }
            if (i == aVar.b) {
                return true;
            }
            return false;
        } catch (g | BufferUnderflowException e) {
            return false;
        }
    }

    private void a() {
        a aVar = new a();
        do {
            a(aVar, this.a);
            a(aVar.a);
        } while (aVar.a != 11);
    }

    private void a(byte b2) {
        int i = 0;
        switch (b2) {
            case 0:
                this.a.position(this.a.position() + 1);
                return;
            case 1:
                this.a.position(2 + this.a.position());
                return;
            case 2:
                this.a.position(this.a.position() + 4);
                return;
            case 3:
                this.a.position(this.a.position() + 8);
                return;
            case 4:
                this.a.position(this.a.position() + 4);
                return;
            case 5:
                this.a.position(this.a.position() + 8);
                return;
            case 6:
                int i2 = this.a.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                this.a.position(i2 + this.a.position());
                return;
            case 7:
                this.a.position(this.a.getInt() + this.a.position());
                return;
            case 8:
                int a2 = a(0, 0, true);
                while (i < (a2 << 1)) {
                    a aVar = new a();
                    a(aVar, this.a);
                    a(aVar.a);
                    i++;
                }
                return;
            case 9:
                int a3 = a(0, 0, true);
                while (i < a3) {
                    a aVar2 = new a();
                    a(aVar2, this.a);
                    a(aVar2.a);
                    i++;
                }
                return;
            case 10:
                a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                a aVar3 = new a();
                a(aVar3, this.a);
                if (aVar3.a != 0) {
                    throw new g("skipField with invalid type, type value: " + b2 + ", " + aVar3.a);
                }
                this.a.position(a(0, 0, true) + this.a.position());
                return;
            default:
                throw new g("invalid type.");
        }
    }

    public final boolean a(int i, boolean z) {
        if (a(0, i, z) != 0) {
            return true;
        }
        return false;
    }

    public final byte a(byte b2, int i, boolean z) {
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 0:
                    return this.a.get();
                case 12:
                    return 0;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return b2;
        } else {
            throw new g("require field not exist.");
        }
    }

    public final short a(short s, int i, boolean z) {
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 0:
                    return (short) this.a.get();
                case 1:
                    return this.a.getShort();
                case 12:
                    return 0;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return s;
        } else {
            throw new g("require field not exist.");
        }
    }

    public final int a(int i, int i2, boolean z) {
        if (a(i2)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 0:
                    return this.a.get();
                case 1:
                    return this.a.getShort();
                case 2:
                    return this.a.getInt();
                case 12:
                    return 0;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return i;
        } else {
            throw new g("require field not exist.");
        }
    }

    public final long a(long j, int i, boolean z) {
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 0:
                    return (long) this.a.get();
                case 1:
                    return (long) this.a.getShort();
                case 2:
                    return (long) this.a.getInt();
                case 3:
                    return this.a.getLong();
                case 12:
                    return 0;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return j;
        } else {
            throw new g("require field not exist.");
        }
    }

    private float a(float f, int i, boolean z) {
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 4:
                    return this.a.getFloat();
                case 12:
                    return 0.0f;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return f;
        } else {
            throw new g("require field not exist.");
        }
    }

    private double a(double d, int i, boolean z) {
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 4:
                    return (double) this.a.getFloat();
                case 5:
                    return this.a.getDouble();
                case 12:
                    return 0.0d;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return d;
        } else {
            throw new g("require field not exist.");
        }
    }

    public final String b(int i, boolean z) {
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 6:
                    int i2 = this.a.get();
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    byte[] bArr = new byte[i2];
                    this.a.get(bArr);
                    try {
                        return new String(bArr, this.b);
                    } catch (UnsupportedEncodingException e) {
                        return new String(bArr);
                    }
                case 7:
                    int i3 = this.a.getInt();
                    if (i3 > 104857600 || i3 < 0) {
                        throw new g("String too long: " + i3);
                    }
                    byte[] bArr2 = new byte[i3];
                    this.a.get(bArr2);
                    try {
                        return new String(bArr2, this.b);
                    } catch (UnsupportedEncodingException e2) {
                        return new String(bArr2);
                    }
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new g("require field not exist.");
        }
    }

    public final <K, V> HashMap<K, V> a(Map<K, V> map, int i, boolean z) {
        return (HashMap) a(new HashMap(), map, i, z);
    }

    private <K, V> Map<K, V> a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Entry entry = (Entry) map2.entrySet().iterator().next();
        Object key = entry.getKey();
        Object value = entry.getValue();
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 8:
                    int a2 = a(0, 0, true);
                    if (a2 < 0) {
                        throw new g("size invalid: " + a2);
                    }
                    for (int i2 = 0; i2 < a2; i2++) {
                        map.put(a((T) key, 0, true), a((T) value, 1, true));
                    }
                    return map;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return map;
        } else {
            throw new g("require field not exist.");
        }
    }

    private boolean[] d(int i, boolean z) {
        boolean z2;
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 9:
                    int a2 = a(0, 0, true);
                    if (a2 < 0) {
                        throw new g("size invalid: " + a2);
                    }
                    boolean[] zArr = new boolean[a2];
                    for (int i2 = 0; i2 < a2; i2++) {
                        if (a(0, 0, true) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        zArr[i2] = z2;
                    }
                    return zArr;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new g("require field not exist.");
        }
    }

    public final byte[] c(int i, boolean z) {
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 9:
                    int a2 = a(0, 0, true);
                    if (a2 < 0) {
                        throw new g("size invalid: " + a2);
                    }
                    byte[] bArr = new byte[a2];
                    for (int i2 = 0; i2 < a2; i2++) {
                        bArr[i2] = a(bArr[0], 0, true);
                    }
                    return bArr;
                case 13:
                    a aVar2 = new a();
                    a(aVar2, this.a);
                    if (aVar2.a != 0) {
                        throw new g("type mismatch, tag: " + i + ", type: " + aVar.a + ", " + aVar2.a);
                    }
                    int a3 = a(0, 0, true);
                    if (a3 < 0) {
                        throw new g("invalid size, tag: " + i + ", type: " + aVar.a + ", " + aVar2.a + ", size: " + a3);
                    }
                    byte[] bArr2 = new byte[a3];
                    this.a.get(bArr2);
                    return bArr2;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new g("require field not exist.");
        }
    }

    private short[] e(int i, boolean z) {
        short[] sArr = null;
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 9:
                    int a2 = a(0, 0, true);
                    if (a2 >= 0) {
                        sArr = new short[a2];
                        for (int i2 = 0; i2 < a2; i2++) {
                            sArr[i2] = a(sArr[0], 0, true);
                        }
                        break;
                    } else {
                        throw new g("size invalid: " + a2);
                    }
                default:
                    throw new g("type mismatch.");
            }
        } else if (z) {
            throw new g("require field not exist.");
        }
        return sArr;
    }

    private int[] f(int i, boolean z) {
        int[] iArr = null;
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 9:
                    int a2 = a(0, 0, true);
                    if (a2 >= 0) {
                        iArr = new int[a2];
                        for (int i2 = 0; i2 < a2; i2++) {
                            iArr[i2] = a(iArr[0], 0, true);
                        }
                        break;
                    } else {
                        throw new g("size invalid: " + a2);
                    }
                default:
                    throw new g("type mismatch.");
            }
        } else if (z) {
            throw new g("require field not exist.");
        }
        return iArr;
    }

    private long[] g(int i, boolean z) {
        long[] jArr = null;
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 9:
                    int a2 = a(0, 0, true);
                    if (a2 >= 0) {
                        jArr = new long[a2];
                        for (int i2 = 0; i2 < a2; i2++) {
                            jArr[i2] = a(jArr[0], 0, true);
                        }
                        break;
                    } else {
                        throw new g("size invalid: " + a2);
                    }
                default:
                    throw new g("type mismatch.");
            }
        } else if (z) {
            throw new g("require field not exist.");
        }
        return jArr;
    }

    private float[] h(int i, boolean z) {
        float[] fArr = null;
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 9:
                    int a2 = a(0, 0, true);
                    if (a2 >= 0) {
                        fArr = new float[a2];
                        for (int i2 = 0; i2 < a2; i2++) {
                            fArr[i2] = a(fArr[0], 0, true);
                        }
                        break;
                    } else {
                        throw new g("size invalid: " + a2);
                    }
                default:
                    throw new g("type mismatch.");
            }
        } else if (z) {
            throw new g("require field not exist.");
        }
        return fArr;
    }

    private double[] i(int i, boolean z) {
        double[] dArr = null;
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 9:
                    int a2 = a(0, 0, true);
                    if (a2 >= 0) {
                        dArr = new double[a2];
                        for (int i2 = 0; i2 < a2; i2++) {
                            dArr[i2] = a(dArr[0], 0, true);
                        }
                        break;
                    } else {
                        throw new g("size invalid: " + a2);
                    }
                default:
                    throw new g("type mismatch.");
            }
        } else if (z) {
            throw new g("require field not exist.");
        }
        return dArr;
    }

    private <T> T[] a(T[] tArr, int i, boolean z) {
        if (tArr != null && tArr.length != 0) {
            return b(tArr[0], i, z);
        }
        throw new g("unable to get type of key and value.");
    }

    private <T> T[] b(T t, int i, boolean z) {
        if (a(i)) {
            a aVar = new a();
            a(aVar, this.a);
            switch (aVar.a) {
                case 9:
                    int a2 = a(0, 0, true);
                    if (a2 < 0) {
                        throw new g("size invalid: " + a2);
                    }
                    T[] tArr = (Object[]) Array.newInstance(t.getClass(), a2);
                    for (int i2 = 0; i2 < a2; i2++) {
                        tArr[i2] = a(t, 0, true);
                    }
                    return tArr;
                default:
                    throw new g("type mismatch.");
            }
        } else if (!z) {
            return null;
        } else {
            throw new g("require field not exist.");
        }
    }

    public final k a(k kVar, int i, boolean z) {
        k kVar2 = null;
        if (a(i)) {
            try {
                kVar2 = (k) kVar.getClass().newInstance();
                a aVar = new a();
                a(aVar, this.a);
                if (aVar.a != 10) {
                    throw new g("type mismatch.");
                }
                kVar2.a(this);
                a();
            } catch (Exception e) {
                throw new g(e.getMessage());
            }
        } else if (z) {
            throw new g("require field not exist.");
        }
        return kVar2;
    }

    public final <T> Object a(T t, int i, boolean z) {
        boolean z2 = 0;
        if (t instanceof Byte) {
            return Byte.valueOf(a(0, i, z));
        }
        if (t instanceof Boolean) {
            if (a(0, i, z) != 0) {
                z2 = 1;
            }
            return Boolean.valueOf(z2);
        } else if (t instanceof Short) {
            return Short.valueOf(a(0, i, z));
        } else {
            if (t instanceof Integer) {
                return Integer.valueOf(a(0, i, z));
            }
            if (t instanceof Long) {
                return Long.valueOf(a(0, i, z));
            }
            if (t instanceof Float) {
                return Float.valueOf(a(0.0f, i, z));
            }
            if (t instanceof Double) {
                return Double.valueOf(a(0.0d, i, z));
            }
            if (t instanceof String) {
                return String.valueOf(b(i, z));
            }
            if (t instanceof Map) {
                return (HashMap) a(new HashMap(), (Map) t, i, z);
            } else if (t instanceof List) {
                List list = (List) t;
                if (list == null || list.isEmpty()) {
                    return new ArrayList();
                }
                Object[] b2 = b(list.get(0), i, z);
                if (b2 == null) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 = z2; i2 < b2.length; i2++) {
                    arrayList.add(b2[i2]);
                }
                return arrayList;
            } else if (t instanceof k) {
                return a((k) t, i, z);
            } else {
                if (!t.getClass().isArray()) {
                    throw new g("read object error: unsupport type.");
                } else if ((t instanceof byte[]) || (t instanceof Byte[])) {
                    return c(i, z);
                } else {
                    if (t instanceof boolean[]) {
                        return d(i, z);
                    }
                    if (t instanceof short[]) {
                        return e(i, z);
                    }
                    if (t instanceof int[]) {
                        return f(i, z);
                    }
                    if (t instanceof long[]) {
                        return g(i, z);
                    }
                    if (t instanceof float[]) {
                        return h(i, z);
                    }
                    if (t instanceof double[]) {
                        return i(i, z);
                    }
                    return a((T[]) (Object[]) t, i, z);
                }
            }
        }
    }

    public final int a(String str) {
        this.b = str;
        return 0;
    }
}

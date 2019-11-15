package io.reactivex.internal.functions;

import io.reactivex.b.d;

/* compiled from: ObjectHelper */
public final class a {
    static final d<Object, Object> a = new C0083a();

    /* renamed from: io.reactivex.internal.functions.a$a reason: collision with other inner class name */
    /* compiled from: ObjectHelper */
    static final class C0083a implements d<Object, Object> {
        C0083a() {
        }

        public boolean a(Object obj, Object obj2) {
            return a.a(obj, obj2);
        }
    }

    public static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i > i2 ? 1 : 0;
    }

    public static int a(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    public static <T> d<T, T> a() {
        return a;
    }

    public static int a(int i, String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }

    public static long a(long j, String str) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j);
    }
}

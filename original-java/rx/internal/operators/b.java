package rx.internal.operators;

/* compiled from: NotificationLite */
public final class b<T> {
    private static final b a = new b();
    private static final Object b = new NotificationLite$1();
    private static final Object c = new NotificationLite$2();

    private b() {
    }

    public static <T> b<T> a() {
        return a;
    }

    public Object a(T t) {
        if (t == null) {
            return c;
        }
        return t;
    }

    public T b(Object obj) {
        if (obj == c) {
            return null;
        }
        return obj;
    }
}

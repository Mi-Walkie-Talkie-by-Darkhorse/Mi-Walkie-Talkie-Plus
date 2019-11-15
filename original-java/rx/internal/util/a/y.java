package rx.internal.util.a;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* compiled from: UnsafeAccess */
public final class y {
    public static final Unsafe a;

    static {
        Unsafe unsafe;
        try {
            Field declaredField = Unsafe.class.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            unsafe = (Unsafe) declaredField.get(null);
        } catch (Throwable th) {
            unsafe = null;
        }
        a = unsafe;
    }

    public static final boolean a() {
        return a != null;
    }

    public static long a(Class<?> cls, String str) {
        try {
            return a.objectFieldOffset(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e) {
            InternalError internalError = new InternalError();
            internalError.initCause(e);
            throw internalError;
        }
    }
}

package rx.internal.util;

import java.security.AccessController;
import java.security.PrivilegedAction;

/* compiled from: PlatformDependent */
public final class b {
    private static final int a = d();
    private static final boolean b = (a != 0);

    public static boolean a() {
        return b;
    }

    public static int b() {
        return a;
    }

    private static int d() {
        try {
            return ((Integer) Class.forName("android.os.Build$VERSION", true, c()).getField("SDK_INT").get(null)).intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    static ClassLoader c() {
        if (System.getSecurityManager() == null) {
            return ClassLoader.getSystemClassLoader();
        }
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() {
            /* renamed from: a */
            public ClassLoader run() {
                return ClassLoader.getSystemClassLoader();
            }
        });
    }
}

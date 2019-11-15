package rx.internal.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import rx.d.d;

/* compiled from: RxJavaPluginUtils */
public final class c {
    public static void a(Throwable th) {
        try {
            d.a().b().a(th);
        } catch (Throwable th2) {
            b(th2);
        }
    }

    private static void b(Throwable th) {
        System.err.println("RxJavaErrorHandler threw an Exception. It shouldn't. => " + th.getMessage());
        ThrowableExtension.printStackTrace(th);
    }
}

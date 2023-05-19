package p000a.p020h;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: a.h.a */
/* loaded from: classes.dex */
public final class Trace {

    /* renamed from: a */
    private static long f201a;

    /* renamed from: b */
    private static Method f202b;

    /* renamed from: a */
    public static void m26370a(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            TraceApi18Impl.m26365a(str);
        }
    }

    /* renamed from: b */
    public static void m26369b() {
        if (Build.VERSION.SDK_INT >= 18) {
            TraceApi18Impl.m26364b();
        }
    }

    /* renamed from: c */
    private static void m26368c(@NonNull String str, @NonNull Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: d */
    public static boolean m26367d() {
        try {
            if (f202b == null) {
                return android.os.Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        return m26366e();
    }

    /* renamed from: e */
    private static boolean m26366e() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f202b == null) {
                    f201a = android.os.Trace.class.getField("TRACE_TAG_APP").getLong(null);
                    f202b = android.os.Trace.class.getMethod("isTagEnabled", Long.TYPE);
                }
                return ((Boolean) f202b.invoke(null, Long.valueOf(f201a))).booleanValue();
            } catch (Exception e) {
                m26368c("isTagEnabled", e);
            }
        }
        return false;
    }
}

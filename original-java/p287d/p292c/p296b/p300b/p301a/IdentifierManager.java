package p287d.p292c.p296b.p300b.p301a;

import android.content.Context;
import android.util.Log;
import java.lang.reflect.Method;

/* renamed from: d.c.b.b.a.a */
/* loaded from: classes3.dex */
public class IdentifierManager {

    /* renamed from: a */
    private static Object f23710a;

    /* renamed from: b */
    private static Class<?> f23711b;

    /* renamed from: c */
    private static Method f23712c;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f23711b = cls;
            f23710a = cls.newInstance();
            f23711b.getMethod("getUDID", Context.class);
            f23712c = f23711b.getMethod("getOAID", Context.class);
            f23711b.getMethod("getVAID", Context.class);
            f23711b.getMethod("getAAID", Context.class);
        } catch (Exception e) {
            Log.e("IdentifierManager", "reflect exception!", e);
        }
    }

    /* renamed from: a */
    private static String m830a(Context context, Method method) {
        Object obj = f23710a;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(obj, context);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Exception e) {
            Log.e("IdentifierManager", "invoke exception!", e);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m829b() {
        return (f23711b == null || f23710a == null) ? false : true;
    }

    /* renamed from: c */
    public static String m828c(Context context) {
        return m830a(context, f23712c);
    }
}

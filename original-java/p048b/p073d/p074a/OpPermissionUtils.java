package p048b.p073d.p074a;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import p048b.p073d.p074a.p075b.HuaweiUtils;
import p048b.p073d.p074a.p075b.MeizuUtils;
import p048b.p073d.p074a.p075b.MiuiUtils;
import p048b.p073d.p074a.p075b.OppoUtils;
import p048b.p073d.p074a.p075b.QikuUtils;
import p048b.p073d.p074a.p075b.RomUtils;

/* renamed from: b.d.a.a */
/* loaded from: classes2.dex */
public class OpPermissionUtils {
    /* renamed from: a */
    public static boolean m21047a(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            if (RomUtils.m21027d()) {
                return m21043e(context);
            }
            if (RomUtils.m21028c()) {
                return m21044d(context);
            }
            if (RomUtils.m21029b()) {
                return m21045c(context);
            }
            if (RomUtils.m21030a()) {
                return m21041g(context);
            }
            if (RomUtils.m21026e()) {
                return m21042f(context);
            }
        }
        return m21046b(context);
    }

    /* renamed from: b */
    private static boolean m21046b(Context context) {
        if (RomUtils.m21028c()) {
            return m21044d(context);
        }
        Boolean bool = Boolean.TRUE;
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                bool = (Boolean) Settings.class.getDeclaredMethod("canDrawOverlays", Context.class).invoke(null, context);
            } catch (Exception e) {
                Log.e("OpPermissionUtils", Log.getStackTraceString(e));
            }
        }
        return bool.booleanValue();
    }

    /* renamed from: c */
    private static boolean m21045c(Context context) {
        return HuaweiUtils.m21040a(context);
    }

    /* renamed from: d */
    private static boolean m21044d(Context context) {
        return MeizuUtils.m21038a(context);
    }

    /* renamed from: e */
    private static boolean m21043e(Context context) {
        return MiuiUtils.m21036a(context);
    }

    /* renamed from: f */
    private static boolean m21042f(Context context) {
        return OppoUtils.m21034a(context);
    }

    /* renamed from: g */
    private static boolean m21041g(Context context) {
        return QikuUtils.m21032a(context);
    }
}

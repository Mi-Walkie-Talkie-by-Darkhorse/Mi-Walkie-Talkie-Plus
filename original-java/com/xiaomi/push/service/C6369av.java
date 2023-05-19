package com.xiaomi.push.service;

import android.app.Notification;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6175g;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.av */
/* loaded from: classes2.dex */
public class C6369av {

    /* renamed from: a */
    private static final String[] f22999a = {"com.mi.globalbrowser", "com.android.browser"};

    /* renamed from: a */
    private static String f22998a = null;

    /* renamed from: a */
    public static final C6370a<String, String, String> f22997a = new C6370a<>("setSound", "canSound", "canSound");

    /* renamed from: b */
    public static final C6370a<String, String, String> f23000b = new C6370a<>("setVibrate", "canVibrate", "canVibrate");

    /* renamed from: c */
    public static final C6370a<String, String, String> f23001c = new C6370a<>("setLights", "canLights", "canLights");

    /* renamed from: d */
    public static final C6370a<String, String, String> f23002d = new C6370a<>("setShowOnKeyguard", "canShowOnKeyguard", "canShowOnKeyguard");

    /* renamed from: e */
    public static final C6370a<String, String, String> f23003e = new C6370a<>("setFloat", "canFloat", "canShowFloat");

    /* renamed from: com.xiaomi.push.service.av$a */
    /* loaded from: classes2.dex */
    public static class C6370a<F, S, T> {

        /* renamed from: a */
        F f23004a;

        /* renamed from: b */
        S f23005b;

        /* renamed from: c */
        T f23006c;

        private C6370a(F f, S s, T t) {
            this.f23004a = f;
            this.f23005b = s;
            this.f23006c = t;
        }
    }

    /* renamed from: a */
    public static int m1550a(ContentResolver contentResolver) {
        try {
            return Settings.Global.getInt(contentResolver, "user_aggregate", 0);
        } catch (Exception e) {
            AbstractC5876b.m4147a("get user aggregate failed, " + e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m1547a(Context context, String str) {
        return C6175g.m2807b(context, str);
    }

    /* renamed from: a */
    public static int m1546a(Context context, String str, String str2, C6370a<String, String, String> c6370a) {
        if (c6370a != null) {
            try {
                Bundle m1544a = m1544a(context, c6370a.f23005b, str, str2, (Bundle) null);
                if (m1544a == null || !m1544a.containsKey(c6370a.f23006c)) {
                    return -1;
                }
                return m1544a.getBoolean(c6370a.f23006c) ? 1 : 0;
            } catch (Exception unused) {
                return -1;
            }
        }
        return -1;
    }

    /* renamed from: a */
    private static Bundle m1544a(Context context, String str, String str2, String str3, Bundle bundle) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("call notification provider failed!");
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("package", str2);
        if (!TextUtils.isEmpty(str3)) {
            bundle2.putString("channel_id", str3);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        return context.getContentResolver().call(Uri.parse("content://statusbar.notification"), str, (String) null, bundle2);
    }

    /* renamed from: a */
    public static <T> T m1553a(Notification notification, String str) {
        Bundle bundle = notification.extras;
        if (bundle != null) {
            try {
                return (T) bundle.get(str);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T> T m1542a(Object obj, String str, T t) {
        T t2;
        T t3 = null;
        try {
        } catch (Exception e) {
            AbstractC5876b.m4147a("get value error " + e);
        }
        if (obj instanceof Notification) {
            t2 = m1553a((Notification) obj, str);
        } else if (obj instanceof Map) {
            t2 = ((Map) obj).get(str);
        } else if (!(obj instanceof Bundle)) {
            AbstractC5876b.m4147a("not support get value from classType:" + obj);
            return t3 != null ? t : t3;
        } else {
            t2 = ((Bundle) obj).get(str);
        }
        t3 = t2;
        if (t3 != null) {
        }
    }

    /* renamed from: a */
    public static String m1557a(Notification notification) {
        CharSequence charSequence;
        Bundle bundle = notification.extras;
        if (bundle != null) {
            charSequence = bundle.getCharSequence("android.title");
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = notification.extras.getCharSequence("android.title.big");
            }
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = notification.extras.getCharSequence("mipush.customTitle");
            }
        } else {
            charSequence = null;
        }
        return charSequence != null ? charSequence.toString() : "";
    }

    /* renamed from: a */
    public static String m1543a(Object obj) {
        return (String) m1542a(obj, "msg_busi_type", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1555a(Notification notification, int i) {
        try {
            Bundle bundle = notification.extras;
            if (bundle != null) {
                bundle.putInt("miui.messageCount", i);
            }
            Object m3650a = C6016bj.m3650a(notification, "extraNotification");
            if (m3650a != null) {
                C6016bj.m3648a(m3650a, "setMessageCount", Integer.valueOf(i));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1554a(Notification notification, int i, int i2) {
        if (notification != null) {
            if (notification.extras == null) {
                notification.extras = new Bundle();
            }
            notification.extras.putInt("is_priority", i);
            notification.extras.putInt("mipush_class", i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1552a(Notification notification, String str) {
        try {
            Bundle bundle = notification.extras;
            if (bundle != null) {
                bundle.putString("target_package", str);
            }
            Object m3650a = C6016bj.m3650a(notification, "extraNotification");
            if (m3650a != null) {
                C6016bj.m3648a(m3650a, "setTargetPkg", str);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1551a(Notification notification, boolean z) {
        try {
            Bundle bundle = notification.extras;
            if (bundle != null) {
                bundle.putBoolean("miui.enableFloat", z);
            }
            Object m3650a = C6016bj.m3650a(notification, "extraNotification");
            if (m3650a != null) {
                C6016bj.m3648a(m3650a, "setEnableFloat", Boolean.valueOf(z));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1548a(Context context, Intent intent) {
        String str;
        int i = -1;
        while (true) {
            str = i < 0 ? f22998a : f22999a[i];
            if (!TextUtils.isEmpty(str)) {
                intent.setPackage(str);
                try {
                    if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
                        break;
                    }
                } catch (Exception e) {
                    AbstractC5876b.m4147a("not found xm browser:" + e);
                }
            }
            i++;
            if (i >= f22999a.length) {
                str = null;
                break;
            }
        }
        intent.setPackage(str);
        f22998a = str;
    }

    /* renamed from: a */
    public static void m1540a(Map<String, String> map, Bundle bundle, String str) {
        if (map == null || bundle == null || TextUtils.isEmpty(str)) {
            AbstractC5876b.m4147a("cp map to b fail:" + str);
        } else if (TextUtils.isEmpty(map.get(str))) {
            bundle.remove(str);
        } else {
            bundle.putString(str, map.get(str));
        }
    }

    /* renamed from: a */
    public static boolean m1558a(Notification.Builder builder, boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setGroupAlertBehavior(z ? 2 : 1);
            return true;
        }
        AbstractC5876b.m4141b("not support setGroupAlertBehavior");
        return false;
    }

    /* renamed from: a */
    public static boolean m1549a(ContentResolver contentResolver) {
        int m1550a = m1550a(contentResolver);
        return m1550a == 1 || m1550a == 2;
    }

    /* renamed from: a */
    public static boolean m1545a(Context context, String str, String str2, C6370a<String, String, String> c6370a, boolean z) {
        if (c6370a != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putBoolean(c6370a.f23006c, z);
                m1544a(context, c6370a.f23004a, str, str2, bundle);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m1541a(Map<String, String> map) {
        return Boolean.parseBoolean((String) m1542a(map, "not_suppress", "true"));
    }

    /* renamed from: a */
    public static Notification.Action[] m1556a(Notification notification) {
        Parcelable[] parcelableArray;
        Notification.Action[] actionArr = notification.actions;
        if (actionArr != null) {
            return actionArr;
        }
        Bundle bundle = notification.extras;
        if (bundle == null || (parcelableArray = bundle.getParcelableArray("mipush.customActions")) == null) {
            return null;
        }
        return (Notification.Action[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Notification.Action[].class);
    }

    /* renamed from: b */
    public static String m1539b(Notification notification) {
        CharSequence charSequence;
        Bundle bundle = notification.extras;
        if (bundle != null) {
            charSequence = bundle.getCharSequence("android.text");
            if (TextUtils.isEmpty(charSequence) && Build.VERSION.SDK_INT >= 21) {
                charSequence = notification.extras.getCharSequence("android.bigText");
            }
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = notification.extras.getCharSequence("mipush.customContent");
            }
        } else {
            charSequence = null;
        }
        return charSequence != null ? charSequence.toString() : "";
    }

    /* renamed from: b */
    public static void m1538b(Notification notification, boolean z) {
        try {
            Bundle bundle = notification.extras;
            if (bundle != null) {
                bundle.putBoolean("miui.enableKeyguard", z);
            }
            Object m3650a = C6016bj.m3650a(notification, "extraNotification");
            if (m3650a != null) {
                C6016bj.m3648a(m3650a, "setEnableKeyguard", Boolean.valueOf(z));
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: c */
    public static String m1537c(Notification notification) {
        Object m3650a;
        try {
            Bundle bundle = notification.extras;
            r0 = bundle != null ? bundle.getString("target_package") : null;
            return (!TextUtils.isEmpty(r0) || (m3650a = C6016bj.m3650a(notification, "extraNotification")) == null) ? r0 : (String) C6016bj.m3648a(m3650a, "getTargetPkg", new Object[0]);
        } catch (Exception unused) {
            return r0;
        }
    }
}

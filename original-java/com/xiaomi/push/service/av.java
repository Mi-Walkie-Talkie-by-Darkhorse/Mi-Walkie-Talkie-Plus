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
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bj;
import com.xiaomi.push.g;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes2.dex */
public class av {

    /* renamed from: a  reason: collision with other field name */
    private static final String[] f931a = {"com.mi.globalbrowser", "com.android.browser"};

    /* renamed from: a  reason: collision with other field name */
    private static String f930a = null;

    /* renamed from: a  reason: collision with root package name */
    public static final a<String, String, String> f9253a = new a<>("setSound", "canSound", "canSound");

    /* renamed from: b  reason: collision with root package name */
    public static final a<String, String, String> f9254b = new a<>("setVibrate", "canVibrate", "canVibrate");

    /* renamed from: c  reason: collision with root package name */
    public static final a<String, String, String> f9255c = new a<>("setLights", "canLights", "canLights");
    public static final a<String, String, String> d = new a<>("setShowOnKeyguard", "canShowOnKeyguard", "canShowOnKeyguard");
    public static final a<String, String, String> e = new a<>("setFloat", "canFloat", "canShowFloat");

    /* loaded from: classes2.dex */
    public static class a<F, S, T> {

        /* renamed from: a  reason: collision with root package name */
        F f9256a;

        /* renamed from: b  reason: collision with root package name */
        S f9257b;

        /* renamed from: c  reason: collision with root package name */
        T f9258c;

        private a(F f, S s, T t) {
            this.f9256a = f;
            this.f9257b = s;
            this.f9258c = t;
        }
    }

    public static int a(ContentResolver contentResolver) {
        try {
            return Settings.Global.getInt(contentResolver, "user_aggregate", 0);
        } catch (Exception e2) {
            b.m1a("get user aggregate failed, " + e2);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Context context, String str) {
        return g.b(context, str);
    }

    public static int a(Context context, String str, String str2, a<String, String, String> aVar) {
        if (aVar == null) {
            return -1;
        }
        try {
            Bundle a2 = a(context, aVar.f9257b, str, str2, (Bundle) null);
            if (a2 == null || !a2.containsKey(aVar.f9258c)) {
                return -1;
            }
            return a2.getBoolean(aVar.f9258c) ? 1 : 0;
        } catch (Exception unused) {
            return -1;
        }
    }

    private static Bundle a(Context context, String str, String str2, String str3, Bundle bundle) {
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

    public static <T> T a(Notification notification, String str) {
        Bundle bundle = notification.extras;
        if (bundle == null) {
            return null;
        }
        try {
            return (T) bundle.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <T> T a(java.lang.Object r2, java.lang.String r3, T r4) {
        /*
            r0 = 0
            boolean r1 = r2 instanceof android.app.Notification     // Catch: Exception -> 0x0038
            if (r1 == 0) goto L_0x000d
            android.app.Notification r2 = (android.app.Notification) r2     // Catch: Exception -> 0x0038
            java.lang.Object r2 = a(r2, r3)     // Catch: Exception -> 0x0038
        L_0x000b:
            r0 = r2
            goto L_0x004d
        L_0x000d:
            boolean r1 = r2 instanceof java.util.Map     // Catch: Exception -> 0x0038
            if (r1 == 0) goto L_0x0018
            java.util.Map r2 = (java.util.Map) r2     // Catch: Exception -> 0x0038
            java.lang.Object r2 = r2.get(r3)     // Catch: Exception -> 0x0038
            goto L_0x000b
        L_0x0018:
            boolean r1 = r2 instanceof android.os.Bundle     // Catch: Exception -> 0x0038
            if (r1 == 0) goto L_0x0023
            android.os.Bundle r2 = (android.os.Bundle) r2     // Catch: Exception -> 0x0038
            java.lang.Object r2 = r2.get(r3)     // Catch: Exception -> 0x0038
            goto L_0x000b
        L_0x0023:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: Exception -> 0x0038
            r3.<init>()     // Catch: Exception -> 0x0038
            java.lang.String r1 = "not support get value from classType:"
            r3.append(r1)     // Catch: Exception -> 0x0038
            r3.append(r2)     // Catch: Exception -> 0x0038
            java.lang.String r2 = r3.toString()     // Catch: Exception -> 0x0038
            com.xiaomi.channel.commonutils.logger.b.m1a(r2)     // Catch: Exception -> 0x0038
            goto L_0x004d
        L_0x0038:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r1 = "get value error "
            r3.append(r1)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            com.xiaomi.channel.commonutils.logger.b.m1a(r2)
        L_0x004d:
            if (r0 != 0) goto L_0x0050
            goto L_0x0051
        L_0x0050:
            r4 = r0
        L_0x0051:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.av.a(java.lang.Object, java.lang.String, java.lang.Object):java.lang.Object");
    }

    public static String a(Notification notification) {
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

    public static String a(Object obj) {
        return (String) a(obj, "msg_busi_type", "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Notification notification, int i) {
        try {
            if (notification.extras != null) {
                notification.extras.putInt("miui.messageCount", i);
            }
            Object a2 = bj.a(notification, "extraNotification");
            if (a2 != null) {
                bj.a(a2, "setMessageCount", Integer.valueOf(i));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Notification notification, int i, int i2) {
        if (notification != null) {
            if (notification.extras == null) {
                notification.extras = new Bundle();
            }
            notification.extras.putInt("is_priority", i);
            notification.extras.putInt("mipush_class", i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public static void m606a(Notification notification, String str) {
        try {
            if (notification.extras != null) {
                notification.extras.putString("target_package", str);
            }
            Object a2 = bj.a(notification, "extraNotification");
            if (a2 != null) {
                bj.a(a2, "setTargetPkg", str);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Notification notification, boolean z) {
        try {
            if (notification.extras != null) {
                notification.extras.putBoolean("miui.enableFloat", z);
            }
            Object a2 = bj.a(notification, "extraNotification");
            if (a2 != null) {
                bj.a(a2, "setEnableFloat", Boolean.valueOf(z));
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, Intent intent) {
        String str;
        int i = -1;
        while (true) {
            str = i < 0 ? f930a : f931a[i];
            if (!TextUtils.isEmpty(str)) {
                intent.setPackage(str);
                try {
                    if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
                        break;
                    }
                } catch (Exception e2) {
                    b.m1a("not found xm browser:" + e2);
                }
            }
            i++;
            if (i >= f931a.length) {
                str = null;
                break;
            }
        }
        intent.setPackage(str);
        f930a = str;
    }

    public static void a(Map<String, String> map, Bundle bundle, String str) {
        if (map == null || bundle == null || TextUtils.isEmpty(str)) {
            b.m1a("cp map to b fail:" + str);
        } else if (TextUtils.isEmpty(map.get(str))) {
            bundle.remove(str);
        } else {
            bundle.putString(str, map.get(str));
        }
    }

    public static boolean a(Notification.Builder builder, boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            builder.setGroupAlertBehavior(z ? 2 : 1);
            return true;
        }
        b.b("not support setGroupAlertBehavior");
        return false;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m607a(ContentResolver contentResolver) {
        int a2 = a(contentResolver);
        return a2 == 1 || a2 == 2;
    }

    public static boolean a(Context context, String str, String str2, a<String, String, String> aVar, boolean z) {
        if (aVar != null) {
            try {
                Bundle bundle = new Bundle();
                bundle.putBoolean(aVar.f9258c, z);
                a(context, aVar.f9256a, str, str2, bundle);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean a(Map<String, String> map) {
        return Boolean.parseBoolean((String) a(map, "not_suppress", "true"));
    }

    /* renamed from: a  reason: collision with other method in class */
    public static Notification.Action[] m608a(Notification notification) {
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

    public static String b(Notification notification) {
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

    public static void b(Notification notification, boolean z) {
        try {
            if (notification.extras != null) {
                notification.extras.putBoolean("miui.enableKeyguard", z);
            }
            Object a2 = bj.a(notification, "extraNotification");
            if (a2 != null) {
                bj.a(a2, "setEnableKeyguard", Boolean.valueOf(z));
            }
        } catch (Exception unused) {
        }
    }

    public static String c(Notification notification) {
        Object a2;
        String str = null;
        try {
            if (notification.extras != null) {
                str = notification.extras.getString("target_package");
            }
            return (!TextUtils.isEmpty(str) || (a2 = bj.a(notification, "extraNotification")) == null) ? str : (String) bj.a(a2, "getTargetPkg", new Object[0]);
        } catch (Exception unused) {
            return str;
        }
    }
}

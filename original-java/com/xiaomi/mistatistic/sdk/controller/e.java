package com.xiaomi.mistatistic.sdk.controller;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ifengyu.im.account.UserInfo;

/* compiled from: DeviceIdHolder */
public class e {
    /* access modifiers changed from: private */
    public static String a = null;
    private static String b = null;

    /* compiled from: DeviceIdHolder */
    private static class a implements com.xiaomi.mistatistic.sdk.controller.d.a {
        private Context a;

        public a(Context context) {
            this.a = context;
        }

        public void a() {
            String a2 = k.a(this.a, "device_id", "");
            if (TextUtils.isEmpty(a2)) {
                e.a = e.a(this.a);
                k.b(this.a, "device_id", e.a);
                h.b("DeviceIdHolder", "persisted deviceId " + e.a);
                return;
            }
            e.a = a2;
        }
    }

    public String a() {
        if (a != null) {
            return a;
        }
        d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new a(c.a()));
        return null;
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(a)) {
            String b2 = b(context);
            String c = q.c(context);
            String a2 = q.a();
            String c2 = q.c(b2 + c + a2);
            h.b("DeviceIdHolder", String.format("deviceId %s, %s, %s, %s", new Object[]{c2, b2, c, a2}));
            return c2;
        }
        String str = a;
        h.b("DeviceIdHolder", String.format("cached deviceId %s", new Object[]{str}));
        return str;
    }

    @TargetApi(9)
    public static String b(Context context) {
        try {
            if (TextUtils.isEmpty(b)) {
                b = k.a(context, "imei", "");
                if (TextUtils.isEmpty(b)) {
                    if (context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0) {
                        b = ((TelephonyManager) context.getSystemService(UserInfo.TYPE_PHONE)).getDeviceId();
                        k.b(context, "imei", b);
                    } else {
                        h.d("cannot get READ_PHONE_STATE permission");
                    }
                }
            }
        } catch (Throwable th) {
            h.a("getImei exception:", th);
        }
        if (TextUtils.isEmpty(b)) {
            h.c("Imei is empty");
        }
        return b;
    }
}

package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.xiaomi.channel.commonutils.misc.g;
import com.xiaomi.push.service.aj;
import com.xiaomi.xmpush.thrift.f;
import java.util.ArrayList;

public class a {
    public static StackTraceElement[] a;

    public static void a() {
        try {
            a = (StackTraceElement[]) Thread.getAllStackTraces().get(Thread.currentThread());
        } catch (Throwable th) {
        }
    }

    public static void a(Context context) {
        g.a(context).a((Runnable) new b(context), 20);
    }

    /* access modifiers changed from: private */
    public static String b(int i) {
        int i2 = 4;
        if (a == null || a.length <= 4) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        while (i2 < a.length && i2 < i + 4) {
            try {
                arrayList.add(a[i2].toString());
                i2++;
            } catch (Exception e) {
                return "";
            }
        }
        return arrayList.toString();
    }

    /* access modifiers changed from: private */
    public static boolean d(Context context) {
        aj a2 = aj.a(context);
        if (!a2.a(f.AggregationSdkMonitorSwitch.a(), false)) {
            return false;
        }
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences(MiPushClient.PREF_EXTRA, 0).getLong("last_upload_call_stack_timestamp", 0)) >= ((long) Math.max(60, a2.a(f.AggregationSdkMonitorFrequency.a(), 86400)));
    }

    /* access modifiers changed from: private */
    public static void e(Context context) {
        Editor edit = context.getSharedPreferences(MiPushClient.PREF_EXTRA, 0).edit();
        edit.putLong("last_upload_call_stack_timestamp", System.currentTimeMillis());
        edit.commit();
    }
}

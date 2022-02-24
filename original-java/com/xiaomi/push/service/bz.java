package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ak;
import com.xiaomi.push.bj;
import com.xiaomi.push.fd;
import com.xiaomi.push.l;
import com.xiaomi.push.v;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class bz {
    private static int a(Map<String, String> map) {
        return Math.max(0, v.a(map.get("notification_top_period"), 0));
    }

    @TargetApi(19)
    private static Notification a(Notification notification, int i, String str, au auVar) {
        if (notification != null) {
            if (!str.equals(notification.extras.getString("message_id"))) {
                notification = null;
            }
            return notification;
        }
        List<StatusBarNotification> b2 = auVar.m605b();
        if (b2 == null) {
            return null;
        }
        for (StatusBarNotification statusBarNotification : b2) {
            Notification notification2 = statusBarNotification.getNotification();
            String string = notification2.extras.getString("message_id");
            if (i == statusBarNotification.getId() && str.equals(string)) {
                return notification2;
            }
        }
        return null;
    }

    private static ak.a a(Context context, String str, int i, String str2, Notification notification) {
        return new ca(i, str2, context, str, notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    /* renamed from: a  reason: collision with other method in class */
    public static void m629a(Context context, String str, int i, String str2, Notification notification) {
        if (l.m528a(context) && notification != null && notification.extras.getBoolean("mipush_n_top_flag", false)) {
            c(context, str, i, str2, notification);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, Map<String, String> map, fd fdVar, long j) {
        if (map != null && fdVar != null && l.m528a(context) && m630a(map)) {
            int a2 = a(map);
            int b2 = b(map);
            if (a2 <= 0 || b2 > a2) {
                b.d("set top notification failed - period:" + a2 + " frequency:" + b2);
                return;
            }
            fdVar.setPriority(2);
            Bundle bundle = new Bundle();
            bundle.putLong("mipush_org_when", j);
            bundle.putBoolean("mipush_n_top_flag", true);
            if (b2 > 0) {
                bundle.putInt("mipush_n_top_fre", b2);
            }
            bundle.putInt("mipush_n_top_prd", a2);
            fdVar.addExtras(bundle);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private static boolean m630a(Map<String, String> map) {
        String str = map.get("notification_top_repeat");
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean parseBoolean = Boolean.parseBoolean(str);
        b.c("top notification' repeat is " + parseBoolean);
        return parseBoolean;
    }

    private static int b(Map<String, String> map) {
        return Math.max(0, v.a(map.get("notification_top_frequency"), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i, String str) {
        return "n_top_update_" + i + "_" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(19)
    public static void c(Context context, String str, int i, String str2, Notification notification) {
        au a2;
        Notification a3;
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && Build.VERSION.SDK_INT >= 26 && (a3 = a(notification, i, str2, (a2 = au.a(context, str)))) != null) {
            boolean z = notification != null;
            if (a3.getGroupAlertBehavior() != 1) {
                bj.a((Object) a3, "mGroupAlertBehavior", (Object) 1);
            }
            long currentTimeMillis = System.currentTimeMillis();
            long j = a3.extras.getLong("mipush_org_when", 0L);
            int i2 = a3.extras.getInt("mipush_n_top_fre", 0);
            int i3 = a3.extras.getInt("mipush_n_top_prd", 0);
            if (i3 > 0 && i3 >= i2) {
                long j2 = (i3 * 1000) + j;
                int min = (j >= currentTimeMillis || currentTimeMillis >= j2) ? 0 : i2 > 0 ? (int) Math.min((j2 - currentTimeMillis) / 1000, i2) : i3;
                if (!z) {
                    if (min > 0) {
                        a3.when = currentTimeMillis;
                        b.m1a("update top notification: " + str2);
                        a2.a(i, a3);
                    } else {
                        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(context, a3);
                        recoverBuilder.setPriority(0);
                        recoverBuilder.setWhen(currentTimeMillis);
                        Bundle extras = recoverBuilder.getExtras();
                        if (extras != null) {
                            extras.remove("mipush_n_top_flag");
                            extras.remove("mipush_org_when");
                            extras.remove("mipush_n_top_fre");
                            extras.remove("mipush_n_top_prd");
                            recoverBuilder.setExtras(extras);
                        }
                        b.m1a("update top notification to common: " + str2);
                        a2.a(i, recoverBuilder.build());
                    }
                }
                if (min > 0) {
                    b.m1a("schedule top notification next update delay: " + min);
                    ak.a(context).m69a(b(i, str2));
                    ak.a(context).b(a(context, str, i, str2, (Notification) null), min);
                }
            }
        }
    }
}

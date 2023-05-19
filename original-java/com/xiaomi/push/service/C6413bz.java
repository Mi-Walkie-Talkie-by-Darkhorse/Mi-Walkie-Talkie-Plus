package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.C6470v;
import com.xiaomi.push.Notification$BuilderC6148fd;
import java.util.List;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.bz */
/* loaded from: classes2.dex */
public class C6413bz {
    /* renamed from: a */
    private static int m1403a(Map<String, String> map) {
        return Math.max(0, C6470v.m1229a(map.get("notification_top_period"), 0));
    }

    @TargetApi(19)
    /* renamed from: a */
    private static Notification m1407a(Notification notification, int i, String str, C6368au c6368au) {
        if (notification != null) {
            if (!str.equals(notification.extras.getString("message_id"))) {
                notification = null;
            }
            return notification;
        }
        List<StatusBarNotification> m1561b = c6368au.m1561b();
        if (m1561b != null) {
            for (StatusBarNotification statusBarNotification : m1561b) {
                Notification notification2 = statusBarNotification.getNotification();
                String string = notification2.extras.getString("message_id");
                if (i == statusBarNotification.getId() && str.equals(string)) {
                    return notification2;
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    private static C5978ak.AbstractRunnableC5979a m1406a(Context context, String str, int i, String str2, Notification notification) {
        return new C6415ca(i, str2, context, str, notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    /* renamed from: a */
    public static void m1405a(Context context, String str, int i, String str2, Notification notification) {
        if (C6306l.m1851a(context) && notification != null && notification.extras.getBoolean("mipush_n_top_flag", false)) {
            m1398c(context, str, i, str2, notification);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1404a(Context context, Map<String, String> map, Notification$BuilderC6148fd notification$BuilderC6148fd, long j) {
        if (map == null || notification$BuilderC6148fd == null || !C6306l.m1851a(context) || !m1402a(map)) {
            return;
        }
        int m1403a = m1403a(map);
        int m1399b = m1399b(map);
        if (m1403a <= 0 || m1399b > m1403a) {
            AbstractC5876b.m4138d("set top notification failed - period:" + m1403a + " frequency:" + m1399b);
            return;
        }
        notification$BuilderC6148fd.setPriority(2);
        Bundle bundle = new Bundle();
        bundle.putLong("mipush_org_when", j);
        bundle.putBoolean("mipush_n_top_flag", true);
        if (m1399b > 0) {
            bundle.putInt("mipush_n_top_fre", m1399b);
        }
        bundle.putInt("mipush_n_top_prd", m1403a);
        notification$BuilderC6148fd.addExtras(bundle);
    }

    /* renamed from: a */
    private static boolean m1402a(Map<String, String> map) {
        String str = map.get("notification_top_repeat");
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean parseBoolean = Boolean.parseBoolean(str);
        AbstractC5876b.m4139c("top notification' repeat is " + parseBoolean);
        return parseBoolean;
    }

    /* renamed from: b */
    private static int m1399b(Map<String, String> map) {
        return Math.max(0, C6470v.m1229a(map.get("notification_top_frequency"), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static String m1401b(int i, String str) {
        return "n_top_update_" + i + "_" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(19)
    /* renamed from: c */
    public static void m1398c(Context context, String str, int i, String str2, Notification notification) {
        C6368au m1572a;
        Notification m1407a;
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || Build.VERSION.SDK_INT < 26 || (m1407a = m1407a(notification, i, str2, (m1572a = C6368au.m1572a(context, str)))) == null) {
            return;
        }
        boolean z = notification != null;
        if (m1407a.getGroupAlertBehavior() != 1) {
            C6016bj.m3649a((Object) m1407a, "mGroupAlertBehavior", (Object) 1);
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = m1407a.extras.getLong("mipush_org_when", 0L);
        int i2 = m1407a.extras.getInt("mipush_n_top_fre", 0);
        int i3 = m1407a.extras.getInt("mipush_n_top_prd", 0);
        if (i3 <= 0 || i3 < i2) {
            return;
        }
        long j2 = (i3 * XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER) + j;
        int min = (j >= currentTimeMillis || currentTimeMillis >= j2) ? 0 : i2 > 0 ? (int) Math.min((j2 - currentTimeMillis) / 1000, i2) : i3;
        if (!z) {
            if (min > 0) {
                m1407a.when = currentTimeMillis;
                AbstractC5876b.m4147a("update top notification: " + str2);
                m1572a.m1577a(i, m1407a);
            } else {
                Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(context, m1407a);
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
                AbstractC5876b.m4147a("update top notification to common: " + str2);
                m1572a.m1577a(i, recoverBuilder.build());
            }
        }
        if (min > 0) {
            AbstractC5876b.m4147a("schedule top notification next update delay: " + min);
            C5978ak.m3784a(context).m3772a(m1401b(i, str2));
            C5978ak.m3784a(context).m3771b(m1406a(context, str, i, str2, (Notification) null), min);
        }
    }
}

package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6243ia;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(24)
/* renamed from: com.xiaomi.push.service.ar */
/* loaded from: classes2.dex */
public class C6361ar {

    /* renamed from: a */
    private static C6361ar f22979a = new C6361ar();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.service.ar$a */
    /* loaded from: classes2.dex */
    public class C6362a {

        /* renamed from: a */
        List<C6363b> f22981a;

        /* renamed from: b */
        List<C6363b> f22982b;

        private C6362a() {
            this.f22981a = new ArrayList();
            this.f22982b = new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.service.ar$b */
    /* loaded from: classes2.dex */
    public class C6363b {

        /* renamed from: a */
        int f22983a;

        /* renamed from: a */
        Notification f22984a;

        public C6363b(int i, Notification notification) {
            this.f22983a = i;
            this.f22984a = notification;
        }

        public String toString() {
            return "id:" + this.f22983a;
        }
    }

    private C6361ar() {
    }

    /* renamed from: a */
    private int m1597a(String str, String str2) {
        return ("GroupSummary" + str + str2).hashCode();
    }

    /* renamed from: a */
    public static C6361ar m1608a() {
        return f22979a;
    }

    /* renamed from: a */
    private String m1606a(Notification notification) {
        Bundle bundle;
        if (notification == null || (bundle = notification.extras) == null) {
            return null;
        }
        return bundle.getString("push_src_group_name");
    }

    /* renamed from: a */
    private List<StatusBarNotification> m1598a(C6368au c6368au) {
        List<StatusBarNotification> m1561b = c6368au != null ? c6368au.m1561b() : null;
        if (m1561b == null || m1561b.size() == 0) {
            return null;
        }
        return m1561b;
    }

    /* renamed from: a */
    private void m1602a(Context context, int i, Notification notification, boolean z) {
        String str;
        String m1537c = C6369av.m1537c(notification);
        if (TextUtils.isEmpty(m1537c)) {
            str = "group auto not extract pkg from notification:" + i;
        } else {
            List<StatusBarNotification> m1598a = m1598a(C6368au.m1572a(context, m1537c));
            if (m1598a != null) {
                String m1595b = m1595b(notification);
                HashMap hashMap = new HashMap();
                for (StatusBarNotification statusBarNotification : m1598a) {
                    if (statusBarNotification.getNotification() != null && statusBarNotification.getId() != i) {
                        m1596a(hashMap, statusBarNotification);
                    }
                }
                for (Map.Entry<String, C6362a> entry : hashMap.entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        C6362a value = entry.getValue();
                        if (z && key.equals(m1595b) && !m1594b(notification)) {
                            (m1605a(notification) ? value.f22982b : value.f22981a).add(new C6363b(i, notification));
                        }
                        int size = value.f22981a.size();
                        if (value.f22982b.size() <= 0) {
                            if (z && size >= 2) {
                                m1599a(context, m1537c, key, value.f22981a.get(0).f22984a);
                            }
                        } else if (size <= 0) {
                            m1600a(context, m1537c, key);
                        }
                    }
                }
                return;
            }
            str = "group auto not get notifications";
        }
        AbstractC5876b.m4147a(str);
    }

    /* renamed from: a */
    private void m1600a(Context context, String str, String str2) {
        AbstractC5876b.m4141b("group cancel summary:" + str2);
        C6368au.m1572a(context, str).m1578a(m1597a(str, str2));
    }

    /* renamed from: a */
    private void m1599a(Context context, String str, String str2, Notification notification) {
        Notification.Builder defaults;
        try {
            if (TextUtils.isEmpty(str2)) {
                AbstractC5876b.m4147a("group show summary group is null");
                return;
            }
            int m1547a = C6369av.m1547a(context, str);
            if (m1547a == 0) {
                AbstractC5876b.m4147a("group show summary not get icon from " + str);
                return;
            }
            C6368au m1572a = C6368au.m1572a(context, str);
            if (Build.VERSION.SDK_INT >= 26) {
                String m1559b = m1572a.m1559b(notification.getChannelId(), "groupSummary");
                NotificationChannel m1569a = m1572a.m1569a(m1559b);
                if ("groupSummary".equals(m1559b) && m1569a == null) {
                    m1572a.m1576a(new NotificationChannel(m1559b, "group_summary", 3));
                }
                defaults = new Notification.Builder(context, m1559b);
            } else {
                defaults = new Notification.Builder(context).setPriority(0).setDefaults(-1);
            }
            C6369av.m1558a(defaults, true);
            Notification build = defaults.setContentTitle("GroupSummary").setContentText("GroupSummary").setSmallIcon(Icon.createWithResource(str, m1547a)).setAutoCancel(true).setGroup(str2).setGroupSummary(true).build();
            if (!C6306l.m1839c() && "com.xiaomi.xmsf".equals(context.getPackageName())) {
                C6369av.m1552a(build, str);
            }
            int m1597a = m1597a(str, str2);
            m1572a.m1577a(m1597a, build);
            AbstractC5876b.m4141b("group show summary notify:" + m1597a);
        } catch (Exception e) {
            AbstractC5876b.m4147a("group show summary error " + e);
        }
    }

    /* renamed from: a */
    private void m1596a(Map<String, C6362a> map, StatusBarNotification statusBarNotification) {
        String m1595b = m1595b(statusBarNotification.getNotification());
        C6362a c6362a = map.get(m1595b);
        if (c6362a == null) {
            c6362a = new C6362a();
            map.put(m1595b, c6362a);
        }
        (m1605a(statusBarNotification.getNotification()) ? c6362a.f22982b : c6362a.f22981a).add(new C6363b(statusBarNotification.getId(), statusBarNotification.getNotification()));
    }

    /* renamed from: a */
    private boolean m1607a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: a */
    private boolean m1605a(Notification notification) {
        if (notification != null) {
            Object m3648a = C6016bj.m3648a((Object) notification, "isGroupSummary", (Object[]) null);
            if (m3648a instanceof Boolean) {
                return ((Boolean) m3648a).booleanValue();
            }
            return false;
        }
        return false;
    }

    /* renamed from: a */
    private boolean m1604a(Context context) {
        if (m1593b(context) && C6368au.m1573a(context)) {
            return C6372ax.m1530a(context).m1531a(EnumC6243ia.LatestNotificationNotIntoGroupSwitch.m2484a(), false);
        }
        return false;
    }

    /* renamed from: b */
    private String m1595b(Notification notification) {
        if (notification == null) {
            return null;
        }
        return m1594b(notification) ? m1606a(notification) : notification.getGroup();
    }

    /* renamed from: b */
    private void m1592b(Context context, int i, Notification notification) {
        String str;
        String m1537c = C6369av.m1537c(notification);
        if (TextUtils.isEmpty(m1537c)) {
            str = "group restore not extract pkg from notification:" + i;
        } else {
            C6368au m1572a = C6368au.m1572a(context, m1537c);
            List<StatusBarNotification> m1598a = m1598a(m1572a);
            if (m1598a != null) {
                for (StatusBarNotification statusBarNotification : m1598a) {
                    Notification notification2 = statusBarNotification.getNotification();
                    if (notification2 != null && m1594b(notification2) && statusBarNotification.getId() != i) {
                        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(context, statusBarNotification.getNotification());
                        recoverBuilder.setGroup(m1606a(notification2));
                        C6369av.m1558a(recoverBuilder, m1605a(notification2));
                        m1572a.m1577a(statusBarNotification.getId(), recoverBuilder.build());
                        AbstractC5876b.m4141b("group restore notification:" + statusBarNotification.getId());
                    }
                }
                return;
            }
            str = "group restore not get notifications";
        }
        AbstractC5876b.m4147a(str);
    }

    /* renamed from: b */
    private boolean m1594b(Notification notification) {
        Bundle bundle;
        if (notification == null || notification.getGroup() == null || (bundle = notification.extras) == null) {
            return false;
        }
        return notification.getGroup().equals(String.format("pushmask_%s_%s", Long.valueOf(bundle.getLong("push_src_group_time")), m1606a(notification)));
    }

    /* renamed from: b */
    private boolean m1593b(Context context) {
        return C6372ax.m1530a(context).m1531a(EnumC6243ia.NotificationAutoGroupSwitch.m2484a(), true);
    }

    /* renamed from: a */
    public String m1601a(Context context, Notification.Builder builder, String str) {
        if (m1607a() && m1604a(context)) {
            long currentTimeMillis = System.currentTimeMillis();
            Bundle extras = builder.getExtras();
            extras.putString("push_src_group_name", str);
            extras.putLong("push_src_group_time", currentTimeMillis);
            return String.format("pushmask_%s_%s", Long.valueOf(currentTimeMillis), str);
        }
        return str;
    }

    /* renamed from: a */
    public void m1603a(Context context, int i, Notification notification) {
        if (m1607a()) {
            if (m1604a(context)) {
                try {
                    m1592b(context, i, notification);
                } catch (Exception e) {
                    AbstractC5876b.m4147a("group notify handle restore error " + e);
                }
            }
            if (m1593b(context)) {
                try {
                    m1602a(context, i, notification, true);
                } catch (Exception e2) {
                    AbstractC5876b.m4147a("group notify handle auto error " + e2);
                }
            }
        }
    }
}

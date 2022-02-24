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
import com.xiaomi.push.bj;
import com.xiaomi.push.ia;
import com.xiaomi.push.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(24)
/* loaded from: classes2.dex */
public class ar {

    /* renamed from: a  reason: collision with root package name */
    private static ar f9244a = new ar();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a  reason: collision with other field name */
        List<b> f921a;

        /* renamed from: b  reason: collision with root package name */
        List<b> f9246b;

        private a() {
            this.f921a = new ArrayList();
            this.f9246b = new ArrayList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        int f9247a;

        /* renamed from: a  reason: collision with other field name */
        Notification f922a;

        public b(int i, Notification notification) {
            this.f9247a = i;
            this.f922a = notification;
        }

        public String toString() {
            return "id:" + this.f9247a;
        }
    }

    private ar() {
    }

    private int a(String str, String str2) {
        return ("GroupSummary" + str + str2).hashCode();
    }

    public static ar a() {
        return f9244a;
    }

    private String a(Notification notification) {
        Bundle bundle;
        if (notification == null || (bundle = notification.extras) == null) {
            return null;
        }
        return bundle.getString("push_src_group_name");
    }

    private List<StatusBarNotification> a(au auVar) {
        List<StatusBarNotification> b2 = auVar != null ? auVar.m605b() : null;
        if (b2 == null || b2.size() == 0) {
            return null;
        }
        return b2;
    }

    private void a(Context context, int i, Notification notification, boolean z) {
        String str;
        String c2 = av.c(notification);
        if (TextUtils.isEmpty(c2)) {
            str = "group auto not extract pkg from notification:" + i;
        } else {
            List<StatusBarNotification> a2 = a(au.a(context, c2));
            if (a2 == null) {
                str = "group auto not get notifications";
            } else {
                String b2 = b(notification);
                HashMap hashMap = new HashMap();
                for (StatusBarNotification statusBarNotification : a2) {
                    if (!(statusBarNotification.getNotification() == null || statusBarNotification.getId() == i)) {
                        a(hashMap, statusBarNotification);
                    }
                }
                for (Map.Entry<String, a> entry : hashMap.entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        a value = entry.getValue();
                        if (z && key.equals(b2) && !m594b(notification)) {
                            (m593a(notification) ? value.f9246b : value.f921a).add(new b(i, notification));
                        }
                        int size = value.f921a.size();
                        if (value.f9246b.size() <= 0) {
                            if (z && size >= 2) {
                                a(context, c2, key, value.f921a.get(0).f922a);
                            }
                        } else if (size <= 0) {
                            a(context, c2, key);
                        }
                    }
                }
                return;
            }
        }
        com.xiaomi.channel.commonutils.logger.b.m1a(str);
    }

    private void a(Context context, String str, String str2) {
        com.xiaomi.channel.commonutils.logger.b.b("group cancel summary:" + str2);
        au.a(context, str).a(a(str, str2));
    }

    private void a(Context context, String str, String str2, Notification notification) {
        Notification.Builder builder;
        try {
            if (TextUtils.isEmpty(str2)) {
                com.xiaomi.channel.commonutils.logger.b.m1a("group show summary group is null");
                return;
            }
            int a2 = av.a(context, str);
            if (a2 == 0) {
                com.xiaomi.channel.commonutils.logger.b.m1a("group show summary not get icon from " + str);
                return;
            }
            au a3 = au.a(context, str);
            if (Build.VERSION.SDK_INT >= 26) {
                String b2 = a3.b(notification.getChannelId(), "groupSummary");
                NotificationChannel a4 = a3.m599a(b2);
                if ("groupSummary".equals(b2) && a4 == null) {
                    a3.a(new NotificationChannel(b2, "group_summary", 3));
                }
                builder = new Notification.Builder(context, b2);
            } else {
                builder = new Notification.Builder(context).setPriority(0).setDefaults(-1);
            }
            av.a(builder, true);
            Notification build = builder.setContentTitle("GroupSummary").setContentText("GroupSummary").setSmallIcon(Icon.createWithResource(str, a2)).setAutoCancel(true).setGroup(str2).setGroupSummary(true).build();
            if (!l.m532c() && "com.xiaomi.xmsf".equals(context.getPackageName())) {
                av.m606a(build, str);
            }
            int a5 = a(str, str2);
            a3.a(a5, build);
            com.xiaomi.channel.commonutils.logger.b.b("group show summary notify:" + a5);
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.m1a("group show summary error " + e);
        }
    }

    private void a(Map<String, a> map, StatusBarNotification statusBarNotification) {
        String b2 = b(statusBarNotification.getNotification());
        a aVar = map.get(b2);
        if (aVar == null) {
            aVar = new a();
            map.put(b2, aVar);
        }
        (m593a(statusBarNotification.getNotification()) ? aVar.f9246b : aVar.f921a).add(new b(statusBarNotification.getId(), statusBarNotification.getNotification()));
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m592a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m593a(Notification notification) {
        if (notification == null) {
            return false;
        }
        Object a2 = bj.a((Object) notification, "isGroupSummary", (Object[]) null);
        if (a2 instanceof Boolean) {
            return ((Boolean) a2).booleanValue();
        }
        return false;
    }

    private boolean a(Context context) {
        if (b(context) && au.m597a(context)) {
            return ax.a(context).a(ia.LatestNotificationNotIntoGroupSwitch.a(), false);
        }
        return false;
    }

    private String b(Notification notification) {
        if (notification == null) {
            return null;
        }
        return m594b(notification) ? a(notification) : notification.getGroup();
    }

    private void b(Context context, int i, Notification notification) {
        String str;
        String c2 = av.c(notification);
        if (TextUtils.isEmpty(c2)) {
            str = "group restore not extract pkg from notification:" + i;
        } else {
            au a2 = au.a(context, c2);
            List<StatusBarNotification> a3 = a(a2);
            if (a3 == null) {
                str = "group restore not get notifications";
            } else {
                for (StatusBarNotification statusBarNotification : a3) {
                    Notification notification2 = statusBarNotification.getNotification();
                    if (!(notification2 == null || !m594b(notification2) || statusBarNotification.getId() == i)) {
                        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(context, statusBarNotification.getNotification());
                        recoverBuilder.setGroup(a(notification2));
                        av.a(recoverBuilder, m593a(notification2));
                        a2.a(statusBarNotification.getId(), recoverBuilder.build());
                        com.xiaomi.channel.commonutils.logger.b.b("group restore notification:" + statusBarNotification.getId());
                    }
                }
                return;
            }
        }
        com.xiaomi.channel.commonutils.logger.b.m1a(str);
    }

    /* renamed from: b  reason: collision with other method in class */
    private boolean m594b(Notification notification) {
        Bundle bundle;
        if (notification == null || notification.getGroup() == null || (bundle = notification.extras) == null) {
            return false;
        }
        return notification.getGroup().equals(String.format("pushmask_%s_%s", Long.valueOf(bundle.getLong("push_src_group_time")), a(notification)));
    }

    private boolean b(Context context) {
        return ax.a(context).a(ia.NotificationAutoGroupSwitch.a(), true);
    }

    public String a(Context context, Notification.Builder builder, String str) {
        if (!m592a() || !a(context)) {
            return str;
        }
        long currentTimeMillis = System.currentTimeMillis();
        Bundle extras = builder.getExtras();
        extras.putString("push_src_group_name", str);
        extras.putLong("push_src_group_time", currentTimeMillis);
        return String.format("pushmask_%s_%s", Long.valueOf(currentTimeMillis), str);
    }

    public void a(Context context, int i, Notification notification) {
        if (m592a()) {
            if (a(context)) {
                try {
                    b(context, i, notification);
                } catch (Exception e) {
                    com.xiaomi.channel.commonutils.logger.b.m1a("group notify handle restore error " + e);
                }
            }
            if (b(context)) {
                try {
                    a(context, i, notification, true);
                } catch (Exception e2) {
                    com.xiaomi.channel.commonutils.logger.b.m1a("group notify handle auto error " + e2);
                }
            }
        }
    }
}

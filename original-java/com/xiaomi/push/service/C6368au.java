package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6243ia;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;

/* renamed from: com.xiaomi.push.service.au */
/* loaded from: classes2.dex */
public class C6368au {

    /* renamed from: a */
    private static Context f22991a;

    /* renamed from: a */
    private static Object f22992a;

    /* renamed from: a */
    private static WeakHashMap<Integer, C6368au> f22993a = new WeakHashMap<>();

    /* renamed from: a */
    private static boolean f22994a;

    /* renamed from: a */
    private String f22995a;

    /* renamed from: b */
    private String f22996b;

    private C6368au(String str) {
        this.f22995a = str;
    }

    /* renamed from: a */
    private static int m1570a(String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                return f22991a.getPackageManager().getPackageUid(str, 0);
            } catch (Exception unused) {
                return -1;
            }
        }
        return -1;
    }

    /* renamed from: a */
    private static NotificationManager m1584a() {
        return (NotificationManager) f22991a.getSystemService("notification");
    }

    /* renamed from: a */
    public static C6368au m1572a(Context context, String str) {
        m1574a(context);
        int hashCode = str.hashCode();
        C6368au c6368au = f22993a.get(Integer.valueOf(hashCode));
        if (c6368au == null) {
            C6368au c6368au2 = new C6368au(str);
            f22993a.put(Integer.valueOf(hashCode), c6368au2);
            return c6368au2;
        }
        return c6368au;
    }

    /* renamed from: a */
    private static <T> T m1571a(Object obj) {
        if (obj != null) {
            try {
                return (T) obj.getClass().getMethod("getList", new Class[0]).invoke(obj, new Object[0]);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    private static Object m1563a(List list) {
        return Class.forName("android.content.pm.ParceledListSlice").getConstructor(List.class).newInstance(list);
    }

    /* renamed from: a */
    public static String m1565a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String m1564a = m1564a("mipush|%s|%s", str2, "");
        return str.startsWith(m1564a) ? m1564a("mipush_%s_%s", str2, str.replace(m1564a, "")) : str;
    }

    /* renamed from: a */
    private static String m1564a(String str, String str2, String str3) {
        return TextUtils.isEmpty(str) ? "" : String.format(str, str2, str3);
    }

    /* renamed from: a */
    private static void m1574a(Context context) {
        if (f22991a == null) {
            f22991a = context.getApplicationContext();
            NotificationManager m1584a = m1584a();
            Boolean bool = (Boolean) C6016bj.m3648a((Object) m1584a, "isSystemConditionProviderEnabled", "xmsf_fake_condition_provider_path");
            m1567a("fwk is support.init:" + bool);
            boolean booleanValue = bool != null ? bool.booleanValue() : false;
            f22994a = booleanValue;
            if (booleanValue) {
                f22992a = C6016bj.m3648a((Object) m1584a, "getService", new Object[0]);
            }
        }
    }

    /* renamed from: a */
    static void m1567a(String str) {
        AbstractC5876b.m4147a("NMHelper:" + str);
    }

    /* renamed from: a */
    private static boolean m1580a() {
        if (C6306l.m1853a() && C6372ax.m1530a(f22991a).m1531a(EnumC6243ia.NotificationBelongToAppSwitch.m2484a(), true)) {
            return f22994a;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m1573a(Context context) {
        m1574a(context);
        return m1580a();
    }

    /* renamed from: a */
    private StatusBarNotification[] m1579a() {
        if (C6306l.m1851a(m1583a())) {
            try {
                Object m3648a = C6016bj.m3648a(f22992a, "getActiveNotifications", m1583a().getPackageName());
                if (m3648a instanceof StatusBarNotification[]) {
                    return (StatusBarNotification[]) m3648a;
                }
                return null;
            } catch (Throwable th) {
                m1567a("getAllNotifications error " + th);
                return null;
            }
        }
        return null;
    }

    /* renamed from: b */
    private String m1560b(String str) {
        return m1564a(m1580a() ? "mipush|%s|%s" : "mipush_%s_%s", this.f22995a, str);
    }

    @TargetApi(26)
    /* renamed from: a */
    public NotificationChannel m1569a(String str) {
        NotificationChannel notificationChannel = null;
        try {
            if (m1580a()) {
                List<NotificationChannel> m1581a = m1581a();
                if (m1581a != null) {
                    for (NotificationChannel notificationChannel2 : m1581a) {
                        if (str.equals(notificationChannel2.getId())) {
                            notificationChannel = notificationChannel2;
                            break;
                        }
                    }
                }
            } else {
                notificationChannel = m1584a().getNotificationChannel(str);
            }
        } catch (Exception e) {
            m1567a("getNotificationChannel error" + e);
        }
        return notificationChannel;
    }

    /* renamed from: a */
    public Context m1583a() {
        return f22991a;
    }

    /* renamed from: a */
    public String m1582a() {
        return this.f22995a;
    }

    /* renamed from: a */
    public String m1568a(String str) {
        return TextUtils.isEmpty(str) ? m1562b() : C6306l.m1851a(m1583a()) ? m1560b(str) : str;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:10:0x0036
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @android.annotation.TargetApi(26)
    /* renamed from: a */
    java.util.List<android.app.NotificationChannel> m1581a() {
        /*
            r8 = this;
            java.lang.String r0 = r8.f22995a
            r1 = 0
            boolean r2 = m1580a()     // Catch: java.lang.Exception -> L78
            if (r2 == 0) goto L3b
            int r2 = m1570a(r0)     // Catch: java.lang.Exception -> L78
            r3 = -1
            if (r2 == r3) goto L39
            java.lang.Object r3 = com.xiaomi.push.service.C6368au.f22992a     // Catch: java.lang.Exception -> L78
            java.lang.String r4 = "getNotificationChannelsForPackage"
            r5 = 3
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Exception -> L78
            r6 = 0
            r5[r6] = r0     // Catch: java.lang.Exception -> L78
            r6 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L78
            r5[r6] = r2     // Catch: java.lang.Exception -> L78
            r2 = 2
            java.lang.Boolean r6 = java.lang.Boolean.FALSE     // Catch: java.lang.Exception -> L78
            r5[r2] = r6     // Catch: java.lang.Exception -> L78
            java.lang.Object r2 = com.xiaomi.push.C6016bj.m3648a(r3, r4, r5)     // Catch: java.lang.Exception -> L78
            java.lang.Object r2 = m1571a(r2)     // Catch: java.lang.Exception -> L78
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Exception -> L78
            java.lang.String r1 = "mipush|%s|%s"
            r7 = r2
            r2 = r1
            r1 = r7
            goto L45
        L36:
            r0 = move-exception
            r1 = r2
            goto L79
        L39:
            r2 = r1
            goto L45
        L3b:
            android.app.NotificationManager r2 = m1584a()     // Catch: java.lang.Exception -> L78
            java.util.List r1 = r2.getNotificationChannels()     // Catch: java.lang.Exception -> L78
            java.lang.String r2 = "mipush_%s_%s"
        L45:
            boolean r3 = com.xiaomi.push.C6306l.m1853a()     // Catch: java.lang.Exception -> L78
            if (r3 == 0) goto L8d
            if (r1 == 0) goto L8d
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Exception -> L78
            r3.<init>()     // Catch: java.lang.Exception -> L78
            java.lang.String r4 = ""
            java.lang.String r0 = m1564a(r2, r0, r4)     // Catch: java.lang.Exception -> L78
            java.util.Iterator r2 = r1.iterator()     // Catch: java.lang.Exception -> L78
        L5c:
            boolean r4 = r2.hasNext()     // Catch: java.lang.Exception -> L78
            if (r4 == 0) goto L76
            java.lang.Object r4 = r2.next()     // Catch: java.lang.Exception -> L78
            android.app.NotificationChannel r4 = (android.app.NotificationChannel) r4     // Catch: java.lang.Exception -> L78
            java.lang.String r5 = r4.getId()     // Catch: java.lang.Exception -> L78
            boolean r5 = r5.startsWith(r0)     // Catch: java.lang.Exception -> L78
            if (r5 == 0) goto L5c
            r3.add(r4)     // Catch: java.lang.Exception -> L78
            goto L5c
        L76:
            r1 = r3
            goto L8d
        L78:
            r0 = move-exception
        L79:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "getNotificationChannels error "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            m1567a(r0)
        L8d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.C6368au.m1581a():java.util.List");
    }

    /* renamed from: a */
    public void m1578a(int i) {
        String str = this.f22995a;
        try {
            if (!m1580a()) {
                m1584a().cancel(i);
                return;
            }
            int m2516a = C6242i.m2516a();
            String packageName = m1583a().getPackageName();
            if (Build.VERSION.SDK_INT >= 30) {
                C6016bj.m3640b(f22992a, "cancelNotificationWithTag", str, packageName, null, Integer.valueOf(i), Integer.valueOf(m2516a));
            } else {
                C6016bj.m3640b(f22992a, "cancelNotificationWithTag", str, null, Integer.valueOf(i), Integer.valueOf(m2516a));
            }
            m1567a("cancel succ:" + i);
        } catch (Exception e) {
            m1567a("cancel error" + e);
        }
    }

    /* renamed from: a */
    public void m1577a(int i, Notification notification) {
        String str = this.f22995a;
        NotificationManager m1584a = m1584a();
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (m1580a()) {
                if (i2 >= 19) {
                    notification.extras.putString("xmsf_target_package", str);
                }
                if (i2 >= 29) {
                    m1584a.notifyAsPackage(str, null, i, notification);
                    return;
                }
            }
            m1584a.notify(i, notification);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(26)
    /* renamed from: a */
    public void m1576a(NotificationChannel notificationChannel) {
        String str = this.f22995a;
        try {
            if (m1580a()) {
                int m1570a = m1570a(str);
                if (m1570a != -1) {
                    C6016bj.m3640b(f22992a, "createNotificationChannelsForPackage", str, Integer.valueOf(m1570a), m1563a(Arrays.asList(notificationChannel)));
                }
            } else {
                m1584a().createNotificationChannel(notificationChannel);
            }
        } catch (Exception e) {
            m1567a("createNotificationChannel error" + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1575a(NotificationChannel notificationChannel, boolean z) {
        String str = this.f22995a;
        try {
            if (z) {
                int m1570a = m1570a(str);
                if (m1570a != -1) {
                    C6016bj.m3640b(f22992a, "updateNotificationChannelForPackage", str, Integer.valueOf(m1570a), notificationChannel);
                }
            } else {
                m1576a(notificationChannel);
            }
        } catch (Exception e) {
            m1567a("updateNotificationChannel error " + e);
        }
    }

    /* renamed from: a */
    public boolean m1566a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(m1560b(""));
    }

    /* renamed from: b */
    String m1562b() {
        if (TextUtils.isEmpty(this.f22996b)) {
            this.f22996b = m1560b("default");
        }
        return this.f22996b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public String m1559b(String str, String str2) {
        return m1580a() ? str : str2;
    }

    /* renamed from: b */
    public List<StatusBarNotification> m1561b() {
        String str = this.f22995a;
        NotificationManager m1584a = m1584a();
        ArrayList arrayList = null;
        try {
            if (m1580a()) {
                int m2516a = C6242i.m2516a();
                if (m2516a != -1) {
                    return (List) m1571a(C6016bj.m3648a(f22992a, "getAppActiveNotifications", str, Integer.valueOf(m2516a)));
                }
                return null;
            }
            StatusBarNotification[] activeNotifications = Build.VERSION.SDK_INT >= 23 ? m1584a.getActiveNotifications() : m1579a();
            boolean m1853a = C6306l.m1853a();
            if (activeNotifications == null || activeNotifications.length <= 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                for (StatusBarNotification statusBarNotification : activeNotifications) {
                    if (!m1853a || str.equals(C6369av.m1537c(statusBarNotification.getNotification()))) {
                        arrayList2.add(statusBarNotification);
                    }
                }
                return arrayList2;
            } catch (Throwable th) {
                th = th;
                arrayList = arrayList2;
                m1567a("getActiveNotifications error " + th);
                return arrayList;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public String toString() {
        return "NotificationManagerHelper{" + this.f22995a + "}";
    }
}

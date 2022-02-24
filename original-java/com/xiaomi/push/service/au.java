package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bj;
import com.xiaomi.push.i;
import com.xiaomi.push.ia;
import com.xiaomi.push.l;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public class au {

    /* renamed from: a  reason: collision with root package name */
    private static Context f9251a;

    /* renamed from: a  reason: collision with other field name */
    private static Object f926a;

    /* renamed from: a  reason: collision with other field name */
    private static WeakHashMap<Integer, au> f927a = new WeakHashMap<>();

    /* renamed from: a  reason: collision with other field name */
    private static boolean f928a;

    /* renamed from: a  reason: collision with other field name */
    private String f929a;

    /* renamed from: b  reason: collision with root package name */
    private String f9252b;

    private au(String str) {
        this.f929a = str;
    }

    private static int a(String str) {
        if (Build.VERSION.SDK_INT < 24) {
            return -1;
        }
        try {
            return f9251a.getPackageManager().getPackageUid(str, 0);
        } catch (Exception unused) {
            return -1;
        }
    }

    private static NotificationManager a() {
        return (NotificationManager) f9251a.getSystemService("notification");
    }

    public static au a(Context context, String str) {
        a(context);
        int hashCode = str.hashCode();
        au auVar = f927a.get(Integer.valueOf(hashCode));
        if (auVar != null) {
            return auVar;
        }
        au auVar2 = new au(str);
        f927a.put(Integer.valueOf(hashCode), auVar2);
        return auVar2;
    }

    private static <T> T a(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            return (T) obj.getClass().getMethod("getList", new Class[0]).invoke(obj, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Object a(List list) {
        return Class.forName("android.content.pm.ParceledListSlice").getConstructor(List.class).newInstance(list);
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String a2 = a("mipush|%s|%s", str2, "");
        return str.startsWith(a2) ? a("mipush_%s_%s", str2, str.replace(a2, "")) : str;
    }

    private static String a(String str, String str2, String str3) {
        return TextUtils.isEmpty(str) ? "" : String.format(str, str2, str3);
    }

    private static void a(Context context) {
        if (f9251a == null) {
            f9251a = context.getApplicationContext();
            NotificationManager a2 = a();
            Boolean bool = (Boolean) bj.a((Object) a2, "isSystemConditionProviderEnabled", "xmsf_fake_condition_provider_path");
            m595a("fwk is support.init:" + bool);
            boolean booleanValue = bool != null ? bool.booleanValue() : false;
            f928a = booleanValue;
            if (booleanValue) {
                f926a = bj.a((Object) a2, "getService", new Object[0]);
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    static void m595a(String str) {
        b.m1a("NMHelper:" + str);
    }

    /* renamed from: a  reason: collision with other method in class */
    private static boolean m596a() {
        if (l.m527a() && ax.a(f9251a).a(ia.NotificationBelongToAppSwitch.a(), true)) {
            return f928a;
        }
        return false;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m597a(Context context) {
        a(context);
        return m596a();
    }

    /* renamed from: a  reason: collision with other method in class */
    private StatusBarNotification[] m598a() {
        if (!l.m528a(m600a())) {
            return null;
        }
        try {
            Object a2 = bj.a(f926a, "getActiveNotifications", m600a().getPackageName());
            if (a2 instanceof StatusBarNotification[]) {
                return (StatusBarNotification[]) a2;
            }
            return null;
        } catch (Throwable th) {
            m595a("getAllNotifications error " + th);
            return null;
        }
    }

    private String b(String str) {
        return a(m596a() ? "mipush|%s|%s" : "mipush_%s_%s", this.f929a, str);
    }

    @TargetApi(26)
    /* renamed from: a  reason: collision with other method in class */
    public NotificationChannel m599a(String str) {
        NotificationChannel notificationChannel = null;
        try {
            if (m596a()) {
                List<NotificationChannel> a2 = m603a();
                if (a2 != null) {
                    for (NotificationChannel notificationChannel2 : a2) {
                        if (str.equals(notificationChannel2.getId())) {
                            notificationChannel = notificationChannel2;
                            break;
                        }
                    }
                }
            } else {
                notificationChannel = a().getNotificationChannel(str);
            }
        } catch (Exception e) {
            m595a("getNotificationChannel error" + e);
        }
        return notificationChannel;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Context m600a() {
        return f9251a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m601a() {
        return this.f929a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m602a(String str) {
        return TextUtils.isEmpty(str) ? b() : l.m528a(m600a()) ? b(str) : str;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:10:0x0038
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:90)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @android.annotation.TargetApi(26)
    /* renamed from: a  reason: collision with other method in class */
    java.util.List<android.app.NotificationChannel> m603a() {
        /*
            r9 = this;
            java.lang.String r0 = r9.f929a
            r1 = 0
            boolean r2 = m596a()     // Catch: Exception -> 0x007a
            if (r2 == 0) goto L_0x003d
            int r2 = a(r0)     // Catch: Exception -> 0x007a
            r3 = -1
            if (r2 == r3) goto L_0x003b
            java.lang.Object r3 = com.xiaomi.push.service.au.f926a     // Catch: Exception -> 0x007a
            java.lang.String r4 = "getNotificationChannelsForPackage"
            r5 = 3
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: Exception -> 0x007a
            r6 = 0
            r5[r6] = r0     // Catch: Exception -> 0x007a
            r7 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: Exception -> 0x007a
            r5[r7] = r2     // Catch: Exception -> 0x007a
            r2 = 2
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)     // Catch: Exception -> 0x007a
            r5[r2] = r6     // Catch: Exception -> 0x007a
            java.lang.Object r2 = com.xiaomi.push.bj.a(r3, r4, r5)     // Catch: Exception -> 0x007a
            java.lang.Object r2 = a(r2)     // Catch: Exception -> 0x007a
            java.util.List r2 = (java.util.List) r2     // Catch: Exception -> 0x007a
            java.lang.String r1 = "mipush|%s|%s"
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x0047
        L_0x0038:
            r0 = move-exception
            r1 = r2
            goto L_0x007b
        L_0x003b:
            r2 = r1
            goto L_0x0047
        L_0x003d:
            android.app.NotificationManager r2 = a()     // Catch: Exception -> 0x007a
            java.util.List r1 = r2.getNotificationChannels()     // Catch: Exception -> 0x007a
            java.lang.String r2 = "mipush_%s_%s"
        L_0x0047:
            boolean r3 = com.xiaomi.push.l.m527a()     // Catch: Exception -> 0x007a
            if (r3 == 0) goto L_0x008f
            if (r1 == 0) goto L_0x008f
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: Exception -> 0x007a
            r3.<init>()     // Catch: Exception -> 0x007a
            java.lang.String r4 = ""
            java.lang.String r0 = a(r2, r0, r4)     // Catch: Exception -> 0x007a
            java.util.Iterator r2 = r1.iterator()     // Catch: Exception -> 0x007a
        L_0x005e:
            boolean r4 = r2.hasNext()     // Catch: Exception -> 0x007a
            if (r4 == 0) goto L_0x0078
            java.lang.Object r4 = r2.next()     // Catch: Exception -> 0x007a
            android.app.NotificationChannel r4 = (android.app.NotificationChannel) r4     // Catch: Exception -> 0x007a
            java.lang.String r5 = r4.getId()     // Catch: Exception -> 0x007a
            boolean r5 = r5.startsWith(r0)     // Catch: Exception -> 0x007a
            if (r5 == 0) goto L_0x005e
            r3.add(r4)     // Catch: Exception -> 0x007a
            goto L_0x005e
        L_0x0078:
            r1 = r3
            goto L_0x008f
        L_0x007a:
            r0 = move-exception
        L_0x007b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "getNotificationChannels error "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            m595a(r0)
        L_0x008f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.au.m603a():java.util.List");
    }

    public void a(int i) {
        String str = this.f929a;
        try {
            if (m596a()) {
                int a2 = i.a();
                String packageName = m600a().getPackageName();
                if (Build.VERSION.SDK_INT >= 30) {
                    bj.b(f926a, "cancelNotificationWithTag", str, packageName, null, Integer.valueOf(i), Integer.valueOf(a2));
                } else {
                    bj.b(f926a, "cancelNotificationWithTag", str, null, Integer.valueOf(i), Integer.valueOf(a2));
                }
                m595a("cancel succ:" + i);
                return;
            }
            a().cancel(i);
        } catch (Exception e) {
            m595a("cancel error" + e);
        }
    }

    public void a(int i, Notification notification) {
        String str = this.f929a;
        NotificationManager a2 = a();
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (m596a()) {
                if (i2 >= 19) {
                    notification.extras.putString("xmsf_target_package", str);
                }
                if (i2 >= 29) {
                    a2.notifyAsPackage(str, null, i, notification);
                    return;
                }
            }
            a2.notify(i, notification);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(26)
    public void a(NotificationChannel notificationChannel) {
        String str = this.f929a;
        try {
            if (m596a()) {
                int a2 = a(str);
                if (a2 != -1) {
                    bj.b(f926a, "createNotificationChannelsForPackage", str, Integer.valueOf(a2), a(Arrays.asList(notificationChannel)));
                }
            } else {
                a().createNotificationChannel(notificationChannel);
            }
        } catch (Exception e) {
            m595a("createNotificationChannel error" + e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(NotificationChannel notificationChannel, boolean z) {
        String str = this.f929a;
        try {
            if (z) {
                int a2 = a(str);
                if (a2 != -1) {
                    bj.b(f926a, "updateNotificationChannelForPackage", str, Integer.valueOf(a2), notificationChannel);
                }
            } else {
                a(notificationChannel);
            }
        } catch (Exception e) {
            m595a("updateNotificationChannel error " + e);
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m604a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str.startsWith(b(""));
        }
        return false;
    }

    String b() {
        if (TextUtils.isEmpty(this.f9252b)) {
            this.f9252b = b("default");
        }
        return this.f9252b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b(String str, String str2) {
        return m596a() ? str : str2;
    }

    /* renamed from: b  reason: collision with other method in class */
    public List<StatusBarNotification> m605b() {
        Object th;
        String str = this.f929a;
        NotificationManager a2 = a();
        ArrayList arrayList = null;
        try {
            if (m596a()) {
                int a3 = i.a();
                if (a3 != -1) {
                    return (List) a(bj.a(f926a, "getAppActiveNotifications", str, Integer.valueOf(a3)));
                }
                return null;
            }
            StatusBarNotification[] activeNotifications = Build.VERSION.SDK_INT >= 23 ? a2.getActiveNotifications() : m598a();
            boolean a4 = l.m527a();
            if (activeNotifications == null || activeNotifications.length <= 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            try {
                for (StatusBarNotification statusBarNotification : activeNotifications) {
                    if (!a4 || str.equals(av.c(statusBarNotification.getNotification()))) {
                        arrayList2.add(statusBarNotification);
                    }
                }
                return arrayList2;
            } catch (Throwable th2) {
                th = th2;
                arrayList = arrayList2;
                m595a("getActiveNotifications error " + th);
                return arrayList;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public String toString() {
        return "NotificationManagerHelper{" + this.f929a + "}";
    }
}

package com.xiaomi.push.service;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Pair;
import android.widget.RemoteViews;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.xiaomi.channel.commonutils.android.g;
import com.xiaomi.xmpush.thrift.ac;
import com.xiaomi.xmpush.thrift.s;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.bouncycastle.i18n.TextBundle;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;
import org.json.JSONException;
import org.json.JSONObject;

public class ae {
    public static long a = 0;
    private static final LinkedList<Pair<Integer, ac>> b = new LinkedList<>();

    public static class a {
        Notification a;
        long b = 0;
    }

    public static class b {
        public String a;
        public long b = 0;
    }

    private static int a(Context context, String str, String str2) {
        if (str.equals(context.getPackageName())) {
            return context.getResources().getIdentifier(str2, "drawable", str);
        }
        return 0;
    }

    private static Notification a(Notification notification) {
        Object a2 = com.xiaomi.channel.commonutils.reflect.a.a((Object) notification, "extraNotification");
        if (a2 != null) {
            com.xiaomi.channel.commonutils.reflect.a.a(a2, "setCustomizedIcon", Boolean.valueOf(true));
        }
        return notification;
    }

    private static Notification a(Notification notification, String str) {
        try {
            Field declaredField = Notification.class.getDeclaredField("extraNotification");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(notification);
            Method declaredMethod = obj.getClass().getDeclaredMethod("setTargetPkg", new Class[]{CharSequence.class});
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(obj, new Object[]{str});
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
        }
        return notification;
    }

    private static PendingIntent a(Context context, ac acVar, s sVar, byte[] bArr) {
        if (sVar != null && !TextUtils.isEmpty(sVar.g)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(sVar.g));
            intent.addFlags(268435456);
            return PendingIntent.getActivity(context, 0, intent, 134217728);
        } else if (b(acVar)) {
            Intent intent2 = new Intent();
            intent2.setComponent(new ComponentName("com.xiaomi.xmsf", "com.xiaomi.mipush.sdk.PushMessageHandler"));
            intent2.putExtra("mipush_payload", bArr);
            intent2.putExtra("mipush_notified", true);
            intent2.addCategory(String.valueOf(sVar.q()));
            return PendingIntent.getService(context, 0, intent2, 134217728);
        } else {
            Intent intent3 = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
            intent3.setComponent(new ComponentName(acVar.f, "com.xiaomi.mipush.sdk.PushMessageHandler"));
            intent3.putExtra("mipush_payload", bArr);
            intent3.putExtra("mipush_notified", true);
            intent3.addCategory(String.valueOf(sVar.q()));
            return PendingIntent.getService(context, 0, intent3, 134217728);
        }
    }

    private static Bitmap a(Context context, int i) {
        return a(context.getResources().getDrawable(i));
    }

    public static Bitmap a(Drawable drawable) {
        int i = 1;
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (intrinsicWidth <= 0) {
            intrinsicWidth = 1;
        }
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicHeight > 0) {
            i = intrinsicHeight;
        }
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* JADX WARNING: Removed duplicated region for block: B:46:0x0102  */
    @android.annotation.SuppressLint({"NewApi"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.xiaomi.push.service.ae.a a(android.content.Context r14, com.xiaomi.xmpush.thrift.ac r15, byte[] r16, android.widget.RemoteViews r17, android.app.PendingIntent r18) {
        /*
            com.xiaomi.push.service.ae$a r5 = new com.xiaomi.push.service.ae$a
            r5.<init>()
            com.xiaomi.xmpush.thrift.s r6 = r15.m()
            java.lang.String r7 = a(r15)
            java.util.Map r8 = r6.s()
            android.app.Notification$Builder r9 = new android.app.Notification$Builder
            r9.<init>(r14)
            java.lang.String[] r2 = a(r14, r6)
            r3 = 0
            r3 = r2[r3]
            r9.setContentTitle(r3)
            r3 = 1
            r3 = r2[r3]
            r9.setContentText(r3)
            if (r17 == 0) goto L_0x015f
            r0 = r17
            r9.setContent(r0)
        L_0x002d:
            long r2 = java.lang.System.currentTimeMillis()
            r9.setWhen(r2)
            if (r8 != 0) goto L_0x0176
            r2 = 0
        L_0x0037:
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L_0x0180
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 24
            if (r2 < r3) goto L_0x0047
            r2 = 1
            r9.setShowWhen(r2)
        L_0x0047:
            r0 = r18
            r9.setContentIntent(r0)
            java.lang.String r2 = "mipush_notification"
            int r2 = a(r14, r7, r2)
            java.lang.String r3 = "mipush_small_notification"
            int r3 = a(r14, r7, r3)
            if (r2 <= 0) goto L_0x0189
            if (r3 <= 0) goto L_0x0189
            android.graphics.Bitmap r2 = a(r14, r2)
            r9.setLargeIcon(r2)
            r9.setSmallIcon(r3)
        L_0x0066:
            if (r8 != 0) goto L_0x0192
            r2 = 0
            r4 = r2
        L_0x006a:
            if (r8 == 0) goto L_0x019d
            java.lang.String r2 = "__adiom"
            java.lang.Object r2 = r8.get(r2)
            java.lang.String r2 = (java.lang.String) r2
            boolean r2 = java.lang.Boolean.parseBoolean(r2)
            if (r2 == 0) goto L_0x019d
            r2 = 1
        L_0x007b:
            if (r2 != 0) goto L_0x0083
            boolean r2 = com.xiaomi.channel.commonutils.android.g.b()
            if (r2 == 0) goto L_0x01a0
        L_0x0083:
            r2 = 1
        L_0x0084:
            r3 = 0
            if (r4 == 0) goto L_0x01ac
            if (r2 == 0) goto L_0x01ac
            r2 = 0
            java.lang.String r10 = "http"
            boolean r10 = r4.startsWith(r10)
            if (r10 == 0) goto L_0x01a3
            com.xiaomi.push.service.ai$b r4 = com.xiaomi.push.service.ai.a(r14, r4)
            if (r4 == 0) goto L_0x009e
            android.graphics.Bitmap r2 = r4.a
            long r10 = r4.b
            r5.b = r10
        L_0x009e:
            if (r2 == 0) goto L_0x01ac
            r9.setLargeIcon(r2)
            r2 = 1
            r4 = r2
        L_0x00a5:
            if (r8 == 0) goto L_0x00db
            int r2 = android.os.Build.VERSION.SDK_INT
            r3 = 24
            if (r2 < r3) goto L_0x00db
            java.lang.String r2 = "notification_group"
            java.lang.Object r2 = r8.get(r2)
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r3 = "notification_is_summary"
            java.lang.Object r3 = r8.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r3 = java.lang.Boolean.parseBoolean(r3)
            java.lang.String r10 = "setGroup"
            r11 = 1
            java.lang.Object[] r11 = new java.lang.Object[r11]
            r12 = 0
            r11[r12] = r2
            com.xiaomi.channel.commonutils.reflect.a.a(r9, r10, r11)
            java.lang.String r2 = "setGroupSummary"
            r10 = 1
            java.lang.Object[] r10 = new java.lang.Object[r10]
            r11 = 0
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r10[r11] = r3
            com.xiaomi.channel.commonutils.reflect.a.a(r9, r2, r10)
        L_0x00db:
            r2 = 1
            r9.setAutoCancel(r2)
            long r10 = java.lang.System.currentTimeMillis()
            if (r8 == 0) goto L_0x00f8
            java.lang.String r2 = "ticker"
            boolean r2 = r8.containsKey(r2)
            if (r2 == 0) goto L_0x00f8
            java.lang.String r2 = "ticker"
            java.lang.Object r2 = r8.get(r2)
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            r9.setTicker(r2)
        L_0x00f8:
            long r2 = a
            long r2 = r10 - r2
            r12 = 10000(0x2710, double:4.9407E-320)
            int r2 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1))
            if (r2 <= 0) goto L_0x014d
            a = r10
            int r2 = r6.f
            boolean r3 = e(r14, r7)
            if (r3 == 0) goto L_0x01a9
            int r2 = c(r14, r7)
            r3 = r2
        L_0x0111:
            r9.setDefaults(r3)
            if (r8 == 0) goto L_0x014d
            r2 = r3 & 1
            if (r2 == 0) goto L_0x014d
            java.lang.String r2 = "sound_uri"
            java.lang.Object r2 = r8.get(r2)
            java.lang.String r2 = (java.lang.String) r2
            boolean r6 = android.text.TextUtils.isEmpty(r2)
            if (r6 != 0) goto L_0x014d
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r8 = "android.resource://"
            java.lang.StringBuilder r6 = r6.append(r8)
            java.lang.StringBuilder r6 = r6.append(r7)
            java.lang.String r6 = r6.toString()
            boolean r6 = r2.startsWith(r6)
            if (r6 == 0) goto L_0x014d
            r3 = r3 ^ 1
            r9.setDefaults(r3)
            android.net.Uri r2 = android.net.Uri.parse(r2)
            r9.setSound(r2)
        L_0x014d:
            android.app.Notification r2 = r9.getNotification()
            if (r4 == 0) goto L_0x015c
            boolean r3 = com.xiaomi.channel.commonutils.android.g.a()
            if (r3 == 0) goto L_0x015c
            a(r2)
        L_0x015c:
            r5.a = r2
            return r5
        L_0x015f:
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 16
            if (r3 < r4) goto L_0x002d
            android.app.Notification$BigTextStyle r3 = new android.app.Notification$BigTextStyle
            r3.<init>()
            r4 = 1
            r2 = r2[r4]
            android.app.Notification$BigTextStyle r2 = r3.bigText(r2)
            r9.setStyle(r2)
            goto L_0x002d
        L_0x0176:
            java.lang.String r2 = "notification_show_when"
            java.lang.Object r2 = r8.get(r2)
            java.lang.String r2 = (java.lang.String) r2
            goto L_0x0037
        L_0x0180:
            boolean r2 = java.lang.Boolean.parseBoolean(r2)
            r9.setShowWhen(r2)
            goto L_0x0047
        L_0x0189:
            int r2 = f(r14, r7)
            r9.setSmallIcon(r2)
            goto L_0x0066
        L_0x0192:
            java.lang.String r2 = "__dynamic_icon_uri"
            java.lang.Object r2 = r8.get(r2)
            java.lang.String r2 = (java.lang.String) r2
            r4 = r2
            goto L_0x006a
        L_0x019d:
            r2 = 0
            goto L_0x007b
        L_0x01a0:
            r2 = 0
            goto L_0x0084
        L_0x01a3:
            android.graphics.Bitmap r2 = com.xiaomi.push.service.ai.b(r14, r4)
            goto L_0x009e
        L_0x01a9:
            r3 = r2
            goto L_0x0111
        L_0x01ac:
            r4 = r3
            goto L_0x00a5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.ae.a(android.content.Context, com.xiaomi.xmpush.thrift.ac, byte[], android.widget.RemoteViews, android.app.PendingIntent):com.xiaomi.push.service.ae$a");
    }

    public static b a(Context context, ac acVar, byte[] bArr) {
        Notification notification;
        b bVar = new b();
        if (com.xiaomi.channel.commonutils.android.b.d(context, a(acVar)) == com.xiaomi.channel.commonutils.android.b.a.NOT_ALLOWED) {
            com.xiaomi.channel.commonutils.logger.b.a("Do not notify because user block " + a(acVar) + "‘s notification");
            return bVar;
        } else if (az.a(context, acVar)) {
            com.xiaomi.channel.commonutils.logger.b.a("Do not notify because user block " + az.a(acVar) + "‘s notification");
            return bVar;
        } else {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            s m = acVar.m();
            RemoteViews b2 = b(context, acVar, bArr);
            PendingIntent a2 = a(context, acVar, m, bArr);
            if (a2 == null) {
                com.xiaomi.channel.commonutils.logger.b.a("The click PendingIntent is null. ");
                return bVar;
            }
            if (VERSION.SDK_INT >= 11) {
                a a3 = a(context, acVar, bArr, b2, a2);
                bVar.b = a3.b;
                bVar.a = a(acVar);
                notification = a3.a;
            } else {
                Notification notification2 = new Notification(f(context, a(acVar)), null, System.currentTimeMillis());
                String[] a4 = a(context, m);
                try {
                    notification2.getClass().getMethod("setLatestEventInfo", new Class[]{Context.class, CharSequence.class, CharSequence.class, PendingIntent.class}).invoke(notification2, new Object[]{context, a4[0], a4[1], a2});
                } catch (NoSuchMethodException e) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
                } catch (IllegalAccessException e2) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e2);
                } catch (IllegalArgumentException e3) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e3);
                } catch (InvocationTargetException e4) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e4);
                }
                Map s = m.s();
                if (s != null && s.containsKey("ticker")) {
                    notification2.tickerText = (CharSequence) s.get("ticker");
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - a > FileTracerConfig.DEF_FLUSH_INTERVAL) {
                    a = currentTimeMillis;
                    int i = e(context, a(acVar)) ? c(context, a(acVar)) : m.f;
                    notification2.defaults = i;
                    if (!(s == null || (i & 1) == 0)) {
                        String str = (String) s.get("sound_uri");
                        if (!TextUtils.isEmpty(str) && str.startsWith("android.resource://" + a(acVar))) {
                            notification2.defaults = i ^ 1;
                            notification2.sound = Uri.parse(str);
                        }
                    }
                }
                notification2.flags |= 16;
                if (b2 != null) {
                    notification2.contentView = b2;
                }
                notification = notification2;
            }
            if (g.a() && VERSION.SDK_INT >= 19) {
                if (!TextUtils.isEmpty(m.b())) {
                    notification.extras.putString("message_id", m.b());
                }
                String str2 = m.u() == null ? null : (String) m.u().get("score_info");
                if (!TextUtils.isEmpty(str2)) {
                    notification.extras.putString("score_info", str2);
                }
            }
            String str3 = m.s() == null ? null : (String) m.s().get("message_count");
            if (g.a() && str3 != null) {
                try {
                    a(notification, Integer.parseInt(str3));
                } catch (NumberFormatException e5) {
                    com.xiaomi.channel.commonutils.logger.b.a((Throwable) e5);
                }
            }
            if ("com.xiaomi.xmsf".equals(context.getPackageName())) {
                a(notification, a(acVar));
            }
            if ("com.xiaomi.xmsf".equals(a(acVar))) {
                az.a(context, acVar, notification);
            }
            int q = m.q() + ((a(acVar).hashCode() / 10) * 10);
            notificationManager.notify(q, notification);
            Pair pair = new Pair(Integer.valueOf(q), acVar);
            synchronized (b) {
                b.add(pair);
                if (b.size() > 100) {
                    b.remove();
                }
            }
            return bVar;
        }
    }

    static String a(ac acVar) {
        if ("com.xiaomi.xmsf".equals(acVar.f)) {
            s m = acVar.m();
            if (!(m == null || m.s() == null)) {
                String str = (String) m.s().get("miui_package_name");
                if (!TextUtils.isEmpty(str)) {
                    return str;
                }
            }
        }
        return acVar.f;
    }

    private static void a(Notification notification, int i) {
        Object a2 = com.xiaomi.channel.commonutils.reflect.a.a((Object) notification, "extraNotification");
        if (a2 != null) {
            com.xiaomi.channel.commonutils.reflect.a.a(a2, "setMessageCount", Integer.valueOf(i));
        }
    }

    public static void a(Context context, String str, int i) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        int hashCode = ((str.hashCode() / 10) * 10) + i;
        LinkedList linkedList = new LinkedList();
        if (i >= 0) {
            notificationManager.cancel(hashCode);
        }
        synchronized (b) {
            Iterator it = b.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                ac acVar = (ac) pair.second;
                if (acVar != null) {
                    String a2 = a(acVar);
                    if (i >= 0) {
                        if (hashCode == ((Integer) pair.first).intValue() && TextUtils.equals(a2, str)) {
                            linkedList.add(pair);
                        }
                    } else if (i != -1) {
                        continue;
                    } else if (TextUtils.equals(a2, str)) {
                        notificationManager.cancel(((Integer) pair.first).intValue());
                        linkedList.add(pair);
                    }
                }
            }
            if (b != null) {
                b.removeAll(linkedList);
                a(context, linkedList);
            }
        }
    }

    public static void a(Context context, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            LinkedList linkedList = new LinkedList();
            synchronized (b) {
                Iterator it = b.iterator();
                while (it.hasNext()) {
                    Pair pair = (Pair) it.next();
                    ac acVar = (ac) pair.second;
                    if (acVar != null) {
                        String a2 = a(acVar);
                        s m = acVar.m();
                        if (m != null && TextUtils.equals(a2, str)) {
                            String h = m.h();
                            String j = m.j();
                            if (!TextUtils.isEmpty(h) && !TextUtils.isEmpty(j) && a(str2, h) && a(str3, j)) {
                                notificationManager.cancel(((Integer) pair.first).intValue());
                                linkedList.add(pair);
                            }
                        }
                    }
                }
                if (b != null) {
                    b.removeAll(linkedList);
                    a(context, linkedList);
                }
            }
        }
    }

    public static void a(Context context, LinkedList<? extends Object> linkedList) {
        if (linkedList != null && linkedList.size() > 0) {
            ay.a(context, "category_clear_notification", "clear_notification", (long) linkedList.size(), "");
        }
    }

    public static boolean a(Context context, String str) {
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100 && Arrays.asList(runningAppProcessInfo.pkgList).contains(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean a(String str, String str2) {
        return TextUtils.isEmpty(str) || str2.contains(str);
    }

    public static boolean a(Map<String, String> map) {
        if (map == null || !map.containsKey("notify_foreground")) {
            return true;
        }
        return "1".equals((String) map.get("notify_foreground"));
    }

    private static String[] a(Context context, s sVar) {
        String h = sVar.h();
        String j = sVar.j();
        Map s = sVar.s();
        if (s != null) {
            int intValue = Float.valueOf((((float) context.getResources().getDisplayMetrics().widthPixels) / context.getResources().getDisplayMetrics().density) + 0.5f).intValue();
            if (intValue <= 320) {
                String str = (String) s.get("title_short");
                if (!TextUtils.isEmpty(str)) {
                    h = str;
                }
                String str2 = (String) s.get("description_short");
                if (TextUtils.isEmpty(str2)) {
                    str2 = j;
                }
                j = str2;
            } else if (intValue > 360) {
                String str3 = (String) s.get("title_long");
                if (!TextUtils.isEmpty(str3)) {
                    h = str3;
                }
                String str4 = (String) s.get("description_long");
                if (!TextUtils.isEmpty(str4)) {
                    j = str4;
                }
            }
        }
        return new String[]{h, j};
    }

    private static RemoteViews b(Context context, ac acVar, byte[] bArr) {
        s m = acVar.m();
        String a2 = a(acVar);
        Map s = m.s();
        if (s == null) {
            return null;
        }
        String str = (String) s.get("layout_name");
        String str2 = (String) s.get("layout_value");
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(a2);
            int identifier = resourcesForApplication.getIdentifier(str, "layout", a2);
            if (identifier == 0) {
                return null;
            }
            RemoteViews remoteViews = new RemoteViews(a2, identifier);
            try {
                JSONObject jSONObject = new JSONObject(str2);
                if (jSONObject.has(TextBundle.TEXT_ENTRY)) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(TextBundle.TEXT_ENTRY);
                    Iterator keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String str3 = (String) keys.next();
                        String string = jSONObject2.getString(str3);
                        int identifier2 = resourcesForApplication.getIdentifier(str3, "id", a2);
                        if (identifier2 > 0) {
                            remoteViews.setTextViewText(identifier2, string);
                        }
                    }
                }
                if (jSONObject.has("image")) {
                    JSONObject jSONObject3 = jSONObject.getJSONObject("image");
                    Iterator keys2 = jSONObject3.keys();
                    while (keys2.hasNext()) {
                        String str4 = (String) keys2.next();
                        String string2 = jSONObject3.getString(str4);
                        int identifier3 = resourcesForApplication.getIdentifier(str4, "id", a2);
                        int identifier4 = resourcesForApplication.getIdentifier(string2, "drawable", a2);
                        if (identifier3 > 0) {
                            remoteViews.setImageViewResource(identifier3, identifier4);
                        }
                    }
                }
                if (jSONObject.has(Values.TIME)) {
                    JSONObject jSONObject4 = jSONObject.getJSONObject(Values.TIME);
                    Iterator keys3 = jSONObject4.keys();
                    while (keys3.hasNext()) {
                        String str5 = (String) keys3.next();
                        String string3 = jSONObject4.getString(str5);
                        if (string3.length() == 0) {
                            string3 = "yy-MM-dd hh:mm";
                        }
                        int identifier5 = resourcesForApplication.getIdentifier(str5, "id", a2);
                        if (identifier5 > 0) {
                            remoteViews.setTextViewText(identifier5, new SimpleDateFormat(string3).format(new Date(System.currentTimeMillis())));
                        }
                    }
                }
                return remoteViews;
            } catch (JSONException e) {
                com.xiaomi.channel.commonutils.logger.b.a((Throwable) e);
                return null;
            }
        } catch (NameNotFoundException e2) {
            com.xiaomi.channel.commonutils.logger.b.a((Throwable) e2);
            return null;
        }
    }

    public static void b(Context context, String str) {
        a(context, str, -1);
    }

    static void b(Context context, String str, int i) {
        context.getSharedPreferences("pref_notify_type", 0).edit().putInt(str, i).commit();
    }

    public static boolean b(ac acVar) {
        s m = acVar.m();
        return m != null && m.w();
    }

    static int c(Context context, String str) {
        return context.getSharedPreferences("pref_notify_type", 0).getInt(str, Integer.MAX_VALUE);
    }

    static void d(Context context, String str) {
        context.getSharedPreferences("pref_notify_type", 0).edit().remove(str).commit();
    }

    static boolean e(Context context, String str) {
        return context.getSharedPreferences("pref_notify_type", 0).contains(str);
    }

    private static int f(Context context, String str) {
        int a2 = a(context, str, "mipush_notification");
        int a3 = a(context, str, "mipush_small_notification");
        if (a2 <= 0) {
            a2 = a3 > 0 ? a3 : context.getApplicationInfo().icon;
        }
        return (a2 != 0 || VERSION.SDK_INT < 9) ? a2 : context.getApplicationInfo().logo;
    }
}

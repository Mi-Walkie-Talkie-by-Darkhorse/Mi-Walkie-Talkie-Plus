package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Pair;
import android.widget.RemoteViews;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.tencent.connect.common.Constants;
import com.xiaomi.push.ak;
import com.xiaomi.push.bj;
import com.xiaomi.push.en;
import com.xiaomi.push.fc;
import com.xiaomi.push.fd;
import com.xiaomi.push.fe;
import com.xiaomi.push.g;
import com.xiaomi.push.hv;
import com.xiaomi.push.ii;
import com.xiaomi.push.ir;
import com.xiaomi.push.l;
import com.xiaomi.push.service.at;
import com.xiaomi.push.v;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.bouncycastle.i18n.TextBundle;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class aj {

    /* renamed from: a  reason: collision with root package name */
    public static long f9235a;

    /* renamed from: a  reason: collision with other field name */
    private static volatile ap f907a;

    /* renamed from: a  reason: collision with other field name */
    private static final LinkedList<Pair<Integer, ir>> f908a = new LinkedList<>();

    /* renamed from: a  reason: collision with other field name */
    private static ExecutorService f909a = Executors.newCachedThreadPool();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a implements Callable<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private Context f9236a;

        /* renamed from: a  reason: collision with other field name */
        private String f910a;

        /* renamed from: a  reason: collision with other field name */
        private boolean f911a;

        public a(String str, Context context, boolean z) {
            this.f9236a = context;
            this.f910a = str;
            this.f911a = z;
        }

        /* renamed from: a */
        public Bitmap call() {
            Bitmap bitmap = null;
            if (!TextUtils.isEmpty(this.f910a)) {
                if (this.f910a.startsWith("http")) {
                    at.b a2 = at.a(this.f9236a, this.f910a, this.f911a);
                    if (a2 != null) {
                        return a2.f925a;
                    }
                } else {
                    bitmap = at.a(this.f9236a, this.f910a);
                    if (bitmap != null) {
                        return bitmap;
                    }
                }
                com.xiaomi.channel.commonutils.logger.b.m1a("Failed get online picture/icon resource");
                return bitmap;
            }
            com.xiaomi.channel.commonutils.logger.b.m1a("Failed get online picture/icon resource cause picUrl is empty");
            return null;
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        long f9237a = 0;

        /* renamed from: a  reason: collision with other field name */
        Notification f912a;
    }

    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with other field name */
        public String f913a;

        /* renamed from: a  reason: collision with root package name */
        public long f9238a = 0;

        /* renamed from: a  reason: collision with other field name */
        public boolean f914a = false;
    }

    static int a(Context context, String str) {
        return context.getSharedPreferences("pref_notify_type", 0).getInt(str, Integer.MAX_VALUE);
    }

    private static int a(Context context, String str, String str2) {
        if (str.equals(context.getPackageName())) {
            return context.getResources().getIdentifier(str2, "drawable", str);
        }
        return 0;
    }

    private static int a(Context context, String str, Map<String, String> map, int i) {
        ComponentName a2;
        Intent b2 = b(context, str, map, i);
        if (b2 == null || (a2 = l.a(context, b2)) == null) {
            return 0;
        }
        return a2.hashCode();
    }

    private static int a(Map<String, String> map) {
        String str = map == null ? null : map.get("timeout");
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return 0;
        }
    }

    private static Notification a(Notification notification) {
        Object a2 = bj.a(notification, "extraNotification");
        if (a2 != null) {
            bj.a(a2, "setCustomizedIcon", true);
        }
        return notification;
    }

    private static PendingIntent a(Context context, ir irVar, String str, byte[] bArr, int i) {
        return a(context, irVar, str, bArr, i, 0, a(context, irVar, str));
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.app.PendingIntent a(android.content.Context r16, com.xiaomi.push.ir r17, java.lang.String r18, byte[] r19, int r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.aj.a(android.content.Context, com.xiaomi.push.ir, java.lang.String, byte[], int, int, boolean):android.app.PendingIntent");
    }

    private static PendingIntent a(Context context, String str, ir irVar, byte[] bArr, int i, int i2) {
        Map<String, String> a2 = irVar.m430a().m397a();
        if (a2 == null) {
            return null;
        }
        boolean a3 = a(context, irVar, str);
        if (a3) {
            return a(context, irVar, str, bArr, i, i2, a3);
        }
        Intent a4 = m580a(context, str, a2, i2);
        if (a4 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, 0, a4, Build.VERSION.SDK_INT >= 31 ? 33554432 : 134217728);
    }

    public static ComponentName a(String str) {
        return new ComponentName(str, "com.xiaomi.mipush.sdk.NotificationClickedActivity");
    }

    /* renamed from: a  reason: collision with other method in class */
    public static Intent m580a(Context context, String str, Map<String, String> map, int i) {
        if (m589b(map)) {
            return a(context, str, map, String.format("cust_btn_%s_ne", Integer.valueOf(i)), String.format("cust_btn_%s_iu", Integer.valueOf(i)), String.format("cust_btn_%s_ic", Integer.valueOf(i)), String.format("cust_btn_%s_wu", Integer.valueOf(i)));
        }
        if (i == 1) {
            return a(context, str, map, "notification_style_button_left_notify_effect", "notification_style_button_left_intent_uri", "notification_style_button_left_intent_class", "notification_style_button_left_web_uri");
        }
        if (i == 2) {
            return a(context, str, map, "notification_style_button_mid_notify_effect", "notification_style_button_mid_intent_uri", "notification_style_button_mid_intent_class", "notification_style_button_mid_web_uri");
        }
        if (i == 3) {
            return a(context, str, map, "notification_style_button_right_notify_effect", "notification_style_button_right_intent_uri", "notification_style_button_right_intent_class", "notification_style_button_right_web_uri");
        }
        if (i != 4) {
            return null;
        }
        return a(context, str, map, "notification_colorful_button_notify_effect", "notification_colorful_button_intent_uri", "notification_colorful_button_intent_class", "notification_colorful_button_web_uri");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.content.Intent a(android.content.Context r3, java.lang.String r4, java.util.Map<java.lang.String, java.lang.String> r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.aj.a(android.content.Context, java.lang.String, java.util.Map, java.lang.String, java.lang.String, java.lang.String, java.lang.String):android.content.Intent");
    }

    private static Bitmap a(Context context, int i) {
        return a(context.getResources().getDrawable(i));
    }

    private static Bitmap a(Context context, String str, boolean z) {
        Future submit = f909a.submit(new a(str, context, z));
        try {
            try {
                Bitmap bitmap = (Bitmap) submit.get(180L, TimeUnit.SECONDS);
                return bitmap == null ? bitmap : bitmap;
            } finally {
                submit.cancel(true);
            }
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            com.xiaomi.channel.commonutils.logger.b.a(e);
            submit.cancel(true);
            return null;
        }
    }

    public static Bitmap a(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int i = 1;
        if (intrinsicWidth <= 0) {
            intrinsicWidth = 1;
        }
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicHeight > 0) {
            i = intrinsicHeight;
        }
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    private static RemoteViews a(Context context, ir irVar, byte[] bArr) {
        ii a2 = irVar.m430a();
        String a3 = a(irVar);
        if (!(a2 == null || a2.m397a() == null)) {
            Map<String, String> a4 = a2.m397a();
            String str = a4.get("layout_name");
            String str2 = a4.get("layout_value");
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                try {
                    Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(a3);
                    int identifier = resourcesForApplication.getIdentifier(str, "layout", a3);
                    if (identifier == 0) {
                        return null;
                    }
                    RemoteViews remoteViews = new RemoteViews(a3, identifier);
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        if (jSONObject.has(TextBundle.TEXT_ENTRY)) {
                            JSONObject jSONObject2 = jSONObject.getJSONObject(TextBundle.TEXT_ENTRY);
                            Iterator<String> keys = jSONObject2.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                String string = jSONObject2.getString(next);
                                int identifier2 = resourcesForApplication.getIdentifier(next, "id", a3);
                                if (identifier2 > 0) {
                                    remoteViews.setTextViewText(identifier2, string);
                                }
                            }
                        }
                        if (jSONObject.has("image")) {
                            JSONObject jSONObject3 = jSONObject.getJSONObject("image");
                            Iterator<String> keys2 = jSONObject3.keys();
                            while (keys2.hasNext()) {
                                String next2 = keys2.next();
                                String string2 = jSONObject3.getString(next2);
                                int identifier3 = resourcesForApplication.getIdentifier(next2, "id", a3);
                                int identifier4 = resourcesForApplication.getIdentifier(string2, "drawable", a3);
                                if (identifier3 > 0) {
                                    remoteViews.setImageViewResource(identifier3, identifier4);
                                }
                            }
                        }
                        if (jSONObject.has("time")) {
                            JSONObject jSONObject4 = jSONObject.getJSONObject("time");
                            Iterator<String> keys3 = jSONObject4.keys();
                            while (keys3.hasNext()) {
                                String next3 = keys3.next();
                                String string3 = jSONObject4.getString(next3);
                                if (string3.length() == 0) {
                                    string3 = "yy-MM-dd hh:mm";
                                }
                                int identifier5 = resourcesForApplication.getIdentifier(next3, "id", a3);
                                if (identifier5 > 0) {
                                    remoteViews.setTextViewText(identifier5, new SimpleDateFormat(string3).format(new Date(System.currentTimeMillis())));
                                }
                            }
                        }
                        return remoteViews;
                    } catch (JSONException e) {
                        com.xiaomi.channel.commonutils.logger.b.a(e);
                        return null;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    com.xiaomi.channel.commonutils.logger.b.a(e2);
                }
            }
        }
        return null;
    }

    @TargetApi(16)
    private static fd a(Context context, ir irVar, byte[] bArr, String str, int i) {
        PendingIntent a2;
        String a3 = a(irVar);
        Map<String, String> a4 = irVar.m430a().m397a();
        String str2 = a4.get("notification_style_type");
        fd a5 = (!l.m528a(context) || f907a == null) ? null : f907a.a(context, i, a3, a4);
        if (a5 != null) {
            a5.a(a4);
            return a5;
        } else if ("2".equals(str2)) {
            fd fdVar = new fd(context);
            Bitmap a6 = TextUtils.isEmpty(a4.get("notification_bigPic_uri")) ? null : a(context, a4.get("notification_bigPic_uri"), false);
            if (a6 == null) {
                com.xiaomi.channel.commonutils.logger.b.m1a("can not get big picture.");
                return fdVar;
            }
            Notification.BigPictureStyle bigPictureStyle = new Notification.BigPictureStyle(fdVar);
            bigPictureStyle.bigPicture(a6);
            bigPictureStyle.setSummaryText(str);
            bigPictureStyle.bigLargeIcon((Bitmap) null);
            fdVar.setStyle(bigPictureStyle);
            return fdVar;
        } else if ("1".equals(str2)) {
            fd fdVar2 = new fd(context);
            fdVar2.setStyle(new Notification.BigTextStyle().bigText(str));
            return fdVar2;
        } else if ("4".equals(str2) && l.m527a()) {
            fc fcVar = new fc(context, a3);
            if (!TextUtils.isEmpty(a4.get("notification_banner_image_uri"))) {
                fcVar.mo261a(a(context, a4.get("notification_banner_image_uri"), false));
            }
            if (!TextUtils.isEmpty(a4.get("notification_banner_icon_uri"))) {
                fcVar.b(a(context, a4.get("notification_banner_icon_uri"), false));
            }
            fcVar.a(a4);
            return fcVar;
        } else if (!"3".equals(str2) || !l.m527a()) {
            return new fd(context);
        } else {
            fe feVar = new fe(context, i, a3);
            if (!TextUtils.isEmpty(a4.get("notification_colorful_button_text")) && (a2 = a(context, a3, irVar, bArr, i, 4)) != null) {
                feVar.a(a4.get("notification_colorful_button_text"), a2).a(a4.get("notification_colorful_button_bg_color"));
            }
            if (!TextUtils.isEmpty(a4.get("notification_colorful_bg_color"))) {
                feVar.b(a4.get("notification_colorful_bg_color"));
            } else if (!TextUtils.isEmpty(a4.get("notification_colorful_bg_image_uri"))) {
                feVar.mo261a(a(context, a4.get("notification_colorful_bg_image_uri"), false));
            }
            feVar.a(a4);
            return feVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01c2  */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.xiaomi.push.service.aj.b a(android.content.Context r28, com.xiaomi.push.ir r29, byte[] r30, android.widget.RemoteViews r31, android.app.PendingIntent r32, int r33) {
        /*
            Method dump skipped, instructions count: 1227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.aj.a(android.content.Context, com.xiaomi.push.ir, byte[], android.widget.RemoteViews, android.app.PendingIntent, int):com.xiaomi.push.service.aj$b");
    }

    /* renamed from: a  reason: collision with other method in class */
    public static c m581a(Context context, ir irVar, byte[] bArr) {
        Map<String, String> map;
        int i;
        String str;
        c cVar = new c();
        g.a a2 = g.a(context, a(irVar), true);
        ii a3 = irVar.m430a();
        String str2 = null;
        if (a3 != null) {
            i = a3.c();
            map = a3.m397a();
        } else {
            i = 0;
            map = null;
        }
        int b2 = v.b(a(irVar), i);
        if (l.m528a(context) && a2 == g.a.NOT_ALLOWED) {
            if (a3 != null) {
                en.a(context.getApplicationContext()).a(irVar.b(), b(irVar), a3.m396a(), "10:" + a(irVar));
            }
            str = "Do not notify because user block " + a(irVar) + "‘s notification";
        } else if (!l.m528a(context) || f907a == null || !f907a.m590a(context, b2, a(irVar), map)) {
            RemoteViews a4 = a(context, irVar, bArr);
            PendingIntent a5 = a(context, irVar, irVar.b(), bArr, b2);
            if (a5 == null) {
                if (a3 != null) {
                    en.a(context.getApplicationContext()).a(irVar.b(), b(irVar), a3.m396a(), Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE);
                }
                str = "The click PendingIntent is null. ";
            } else {
                b a6 = a(context, irVar, bArr, a4, a5, b2);
                cVar.f9238a = a6.f9237a;
                cVar.f913a = a(irVar);
                Notification notification = a6.f912a;
                if (l.m527a()) {
                    if (!TextUtils.isEmpty(a3.m396a())) {
                        notification.extras.putString("message_id", a3.m396a());
                    }
                    notification.extras.putString("local_paid", irVar.m431a());
                    av.a(map, notification.extras, "msg_busi_type");
                    av.a(map, notification.extras, "disable_notification_flags");
                    String str3 = a3.m402b() == null ? null : a3.m402b().get("score_info");
                    if (!TextUtils.isEmpty(str3)) {
                        notification.extras.putString("score_info", str3);
                    }
                    notification.extras.putString("pushUid", a(a3.f562a, "n_stats_expose"));
                    int i2 = -1;
                    if (c(irVar)) {
                        i2 = 1000;
                    } else if (m584a(irVar)) {
                        i2 = 3000;
                    }
                    notification.extras.putString("eventMessageType", String.valueOf(i2));
                    notification.extras.putString("target_package", a(irVar));
                }
                String str4 = a3.m397a() == null ? null : a3.m397a().get("message_count");
                if (l.m527a() && str4 != null) {
                    try {
                        av.a(notification, Integer.parseInt(str4));
                    } catch (NumberFormatException e) {
                        if (a3 != null) {
                            en.a(context.getApplicationContext()).b(irVar.b(), b(irVar), a3.m396a(), Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
                        }
                        com.xiaomi.channel.commonutils.logger.b.d("fail to set message count. " + e);
                    }
                }
                String a7 = a(irVar);
                if (!l.m532c() && l.m528a(context)) {
                    av.m606a(notification, a7);
                }
                au a8 = au.a(context, a7);
                if (l.m528a(context) && f907a != null) {
                    f907a.a(irVar, a3.m397a(), b2, notification);
                }
                if (!l.m528a(context) || f907a == null || !f907a.a(a3.m397a(), b2, notification)) {
                    a8.a(b2, notification);
                    cVar.f914a = true;
                    com.xiaomi.channel.commonutils.logger.b.m1a("notification: " + a3.m396a() + " is notifyied");
                } else {
                    com.xiaomi.channel.commonutils.logger.b.b("consume this notificaiton by agent");
                }
                if (l.m527a() && l.m528a(context)) {
                    ar.a().a(context, b2, notification);
                    bz.m629a(context, a7, b2, a3.m396a(), notification);
                }
                if (m584a(irVar)) {
                    en.a(context.getApplicationContext()).a(irVar.b(), b(irVar), a3.m396a(), GLMapStaticValue.AM_PARAMETERNAME_REALCITY_3DLINEVALID, null);
                }
                if (c(irVar)) {
                    en.a(context.getApplicationContext()).a(irVar.b(), b(irVar), a3.m396a(), 1002, null);
                }
                if (Build.VERSION.SDK_INT < 26) {
                    if (a3 != null) {
                        str2 = a3.m396a();
                    }
                    ak a9 = ak.a(context);
                    int a10 = a(a3.m397a());
                    if (a10 > 0 && !TextUtils.isEmpty(str2)) {
                        String str5 = "n_timeout_" + str2;
                        a9.m69a(str5);
                        a9.b(new ak(str5, a8, b2), a10);
                    }
                }
                Pair<Integer, ir> pair = new Pair<>(Integer.valueOf(b2), irVar);
                synchronized (f908a) {
                    f908a.add(pair);
                    if (f908a.size() > 100) {
                        f908a.remove();
                    }
                }
                return cVar;
            }
        } else {
            if (a3 != null) {
                en.a(context.getApplicationContext()).a(irVar.b(), b(irVar), a3.m396a(), "14:" + a(irVar));
            }
            str = "Do not notify because card notification is canceled or sequence incorrect";
        }
        com.xiaomi.channel.commonutils.logger.b.m1a(str);
        return cVar;
    }

    private static String a(Context context, String str, Map<String, String> map) {
        return (map == null || TextUtils.isEmpty(map.get("channel_name"))) ? g.m305b(context, str) : map.get("channel_name");
    }

    public static String a(ir irVar) {
        ii a2;
        if (!(!"com.xiaomi.xmsf".equals(irVar.f654b) || (a2 = irVar.m430a()) == null || a2.m397a() == null)) {
            String str = a2.m397a().get("miui_package_name");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return irVar.f654b;
    }

    public static String a(Map<String, String> map, int i) {
        String format = i == 0 ? "notify_effect" : m589b(map) ? String.format("cust_btn_%s_ne", Integer.valueOf(i)) : i == 1 ? "notification_style_button_left_notify_effect" : i == 2 ? "notification_style_button_mid_notify_effect" : i == 3 ? "notification_style_button_right_notify_effect" : i == 4 ? "notification_colorful_button_notify_effect" : null;
        if (map == null || format == null) {
            return null;
        }
        return map.get(format);
    }

    private static String a(Map<String, String> map, String str) {
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    private static void a(Context context, Intent intent, ir irVar, ii iiVar, String str, int i) {
        if (irVar != null && iiVar != null && !TextUtils.isEmpty(str)) {
            String a2 = a(iiVar.m397a(), i);
            if (TextUtils.isEmpty(a2)) {
                return;
            }
            if (bh.f9282a.equals(a2) || bh.f9283b.equals(a2) || bh.f9284c.equals(a2)) {
                intent.putExtra("messageId", str);
                intent.putExtra("local_paid", irVar.f650a);
                if (!TextUtils.isEmpty(irVar.f654b)) {
                    intent.putExtra("target_package", irVar.f654b);
                }
                intent.putExtra("job_key", a(iiVar.m397a(), "jobkey"));
                intent.putExtra(i + "_target_component", a(context, irVar.f654b, iiVar.m397a(), i));
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m582a(Context context, String str) {
        a(context, str, -1);
    }

    public static void a(Context context, String str, int i) {
        a(context, str, i, -1);
    }

    public static void a(Context context, String str, int i, int i2) {
        int i3;
        if (context != null && !TextUtils.isEmpty(str) && i >= -1) {
            au a2 = au.a(context, str);
            List<StatusBarNotification> b2 = a2.m605b();
            if (!v.a(b2)) {
                LinkedList linkedList = new LinkedList();
                boolean z = false;
                if (i == -1) {
                    i3 = 0;
                    z = true;
                } else {
                    i3 = ((str.hashCode() / 10) * 10) + i;
                }
                Iterator<StatusBarNotification> it = b2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    StatusBarNotification next = it.next();
                    if (!TextUtils.isEmpty(String.valueOf(next.getId()))) {
                        int id = next.getId();
                        if (z) {
                            linkedList.add(next);
                            a2.a(id);
                        } else if (i3 == id) {
                            d.a(context, next, i2);
                            linkedList.add(next);
                            a2.a(id);
                            break;
                        }
                    }
                }
                a(context, linkedList);
            }
        }
    }

    public static void a(Context context, String str, String str2, String str3) {
        if (!(context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3))) {
            au a2 = au.a(context, str);
            List<StatusBarNotification> b2 = a2.m605b();
            if (!v.a(b2)) {
                LinkedList linkedList = new LinkedList();
                for (StatusBarNotification statusBarNotification : b2) {
                    Notification notification = statusBarNotification.getNotification();
                    if (notification != null && !TextUtils.isEmpty(String.valueOf(statusBarNotification.getId()))) {
                        int id = statusBarNotification.getId();
                        String a3 = av.a(notification);
                        String b3 = av.b(notification);
                        if (!TextUtils.isEmpty(a3) && !TextUtils.isEmpty(b3) && a(a3, str2) && a(b3, str3)) {
                            linkedList.add(statusBarNotification);
                            a2.a(id);
                        }
                    }
                }
                a(context, linkedList);
            }
        }
    }

    public static void a(Context context, LinkedList<? extends Object> linkedList) {
        if (linkedList != null && linkedList.size() > 0) {
            bw.a(context, "category_clear_notification", "clear_notification", linkedList.size(), "");
        }
    }

    private static void a(Intent intent) {
        try {
            Method declaredMethod = intent.getClass().getDeclaredMethod("addMiuiFlags", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(intent, 2);
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.b("insert flags error " + e);
        }
    }

    @TargetApi(16)
    private static void a(fd fdVar, Context context, String str, ir irVar, byte[] bArr, int i) {
        PendingIntent a2;
        PendingIntent a3;
        PendingIntent a4;
        PendingIntent a5;
        Map<String, String> a6 = irVar.m430a().m397a();
        if (!(TextUtils.equals("3", a6.get("notification_style_type")) || TextUtils.equals("4", a6.get("notification_style_type")))) {
            if (m589b(a6)) {
                for (int i2 = 1; i2 <= 3; i2++) {
                    String str2 = a6.get(String.format("cust_btn_%s_n", Integer.valueOf(i2)));
                    if (!TextUtils.isEmpty(str2) && (a5 = a(context, str, irVar, bArr, i, i2)) != null) {
                        fdVar.addAction(0, str2, a5);
                    }
                }
                return;
            }
            if (!TextUtils.isEmpty(a6.get("notification_style_button_left_name")) && (a4 = a(context, str, irVar, bArr, i, 1)) != null) {
                fdVar.addAction(0, a6.get("notification_style_button_left_name"), a4);
            }
            if (!TextUtils.isEmpty(a6.get("notification_style_button_mid_name")) && (a3 = a(context, str, irVar, bArr, i, 2)) != null) {
                fdVar.addAction(0, a6.get("notification_style_button_mid_name"), a3);
            }
            if (!(TextUtils.isEmpty(a6.get("notification_style_button_right_name")) || (a2 = a(context, str, irVar, bArr, i, 3)) == null)) {
                fdVar.addAction(0, a6.get("notification_style_button_right_name"), a2);
            }
        }
    }

    private static boolean a(Context context, ir irVar, String str) {
        if (irVar != null && irVar.m430a() != null && irVar.m430a().m397a() != null && !TextUtils.isEmpty(str)) {
            return Boolean.parseBoolean(irVar.m430a().m397a().get("use_clicked_activity")) && l.a(context, a(str));
        }
        com.xiaomi.channel.commonutils.logger.b.m1a("should clicked activity params are null.");
        return false;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m583a(Context context, String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && Arrays.asList(runningAppProcessInfo.pkgList).contains(str)) {
                return true;
            }
        }
        return false;
    }

    private static boolean a(ii iiVar) {
        if (iiVar == null) {
            return false;
        }
        String a2 = iiVar.m396a();
        return !TextUtils.isEmpty(a2) && a2.length() == 22 && "satuigmo".indexOf(a2.charAt(0)) >= 0;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m584a(ir irVar) {
        ii a2 = irVar.m430a();
        return a(a2) && a2.l();
    }

    private static boolean a(String str, String str2) {
        return TextUtils.isEmpty(str) || str2.contains(str);
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m585a(Map<String, String> map) {
        if (map == null || !map.containsKey("notify_foreground")) {
            return true;
        }
        return "1".equals(map.get("notify_foreground"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004e, code lost:
        if (android.text.TextUtils.isEmpty(r3) == false) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0070, code lost:
        if (android.text.TextUtils.isEmpty(r3) == false) goto L_0x0072;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String[] a(android.content.Context r3, com.xiaomi.push.ii r4) {
        /*
            java.lang.String r0 = r4.m404c()
            java.lang.String r1 = r4.d()
            java.util.Map r4 = r4.m397a()
            if (r4 == 0) goto L_0x0073
            android.content.res.Resources r2 = r3.getResources()
            android.util.DisplayMetrics r2 = r2.getDisplayMetrics()
            int r2 = r2.widthPixels
            android.content.res.Resources r3 = r3.getResources()
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()
            float r3 = r3.density
            float r2 = (float) r2
            float r2 = r2 / r3
            r3 = 1056964608(0x3f000000, float:0.5)
            float r2 = r2 + r3
            java.lang.Float r3 = java.lang.Float.valueOf(r2)
            int r3 = r3.intValue()
            r2 = 320(0x140, float:4.48E-43)
            if (r3 > r2) goto L_0x0051
            java.lang.String r3 = "title_short"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r2 = android.text.TextUtils.isEmpty(r3)
            if (r2 != 0) goto L_0x0042
            r0 = r3
        L_0x0042:
            java.lang.String r3 = "description_short"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L_0x0073
            goto L_0x0072
        L_0x0051:
            r2 = 360(0x168, float:5.04E-43)
            if (r3 <= r2) goto L_0x0073
            java.lang.String r3 = "title_long"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r2 = android.text.TextUtils.isEmpty(r3)
            if (r2 != 0) goto L_0x0064
            r0 = r3
        L_0x0064:
            java.lang.String r3 = "description_long"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L_0x0073
        L_0x0072:
            r1 = r3
        L_0x0073:
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]
            r4 = 0
            r3[r4] = r0
            r4 = 1
            r3[r4] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.aj.a(android.content.Context, com.xiaomi.push.ii):java.lang.String[]");
    }

    private static int b(Context context, String str) {
        int a2 = a(context, str, "mipush_notification");
        int a3 = a(context, str, "mipush_small_notification");
        if (a2 <= 0) {
            a2 = a3 > 0 ? a3 : context.getApplicationInfo().icon;
        }
        return a2 == 0 ? context.getApplicationInfo().logo : a2;
    }

    private static int b(Map<String, String> map) {
        if (map == null) {
            return 3;
        }
        String str = map.get("channel_importance");
        if (TextUtils.isEmpty(str)) {
            return 3;
        }
        try {
            com.xiaomi.channel.commonutils.logger.b.c("importance=" + str);
            return Integer.parseInt(str);
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.d("parsing channel importance error: " + e);
            return 3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.Intent b(android.content.Context r5, java.lang.String r6, java.util.Map<java.lang.String, java.lang.String> r7, int r8) {
        /*
            Method dump skipped, instructions count: 414
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.aj.b(android.content.Context, java.lang.String, java.util.Map, int):android.content.Intent");
    }

    public static String b(ir irVar) {
        return m584a(irVar) ? "E100002" : c(irVar) ? "E100000" : m588b(irVar) ? "E100001" : d(irVar) ? "E100003" : "";
    }

    /* renamed from: b  reason: collision with other method in class */
    public static void m586b(Context context, String str) {
        if (l.m528a(context) && f907a != null && !TextUtils.isEmpty(str)) {
            f907a.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Context context, String str, int i) {
        context.getSharedPreferences("pref_notify_type", 0).edit().putInt(str, i).commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b  reason: collision with other method in class */
    public static boolean m587b(Context context, String str) {
        return context.getSharedPreferences("pref_notify_type", 0).contains(str);
    }

    /* renamed from: b  reason: collision with other method in class */
    public static boolean m588b(ir irVar) {
        ii a2 = irVar.m430a();
        return a(a2) && a2.f564b == 1 && !m584a(irVar);
    }

    /* renamed from: b  reason: collision with other method in class */
    private static boolean m589b(Map<String, String> map) {
        if (map != null) {
            return Constants.VIA_SHARE_TYPE_INFO.equals(map.get("notification_style_type"));
        }
        com.xiaomi.channel.commonutils.logger.b.m1a("meta extra is null");
        return false;
    }

    private static int c(Map<String, String> map) {
        if (map == null) {
            return 0;
        }
        String str = map.get("notification_priority");
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            com.xiaomi.channel.commonutils.logger.b.c("priority=" + str);
            return Integer.parseInt(str);
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.d("parsing notification priority error: " + e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Context context, String str) {
        context.getSharedPreferences("pref_notify_type", 0).edit().remove(str).commit();
    }

    public static boolean c(ir irVar) {
        ii a2 = irVar.m430a();
        return a(a2) && a2.f564b == 0 && !m584a(irVar);
    }

    public static boolean d(ir irVar) {
        return irVar.a() == hv.Registration;
    }

    public static boolean e(ir irVar) {
        return m584a(irVar) || c(irVar) || m588b(irVar);
    }
}

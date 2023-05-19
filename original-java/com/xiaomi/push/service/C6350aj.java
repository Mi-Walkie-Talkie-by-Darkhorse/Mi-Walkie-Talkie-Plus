package com.xiaomi.push.service;

import android.annotation.SuppressLint;
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
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Pair;
import android.widget.RemoteViews;
import com.autonavi.p090ae.gmap.utils.GLMapStaticValue;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.just.agentweb.DefaultWebClient;
import com.tencent.connect.common.Constants;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6129en;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.C6470v;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.Notification$BuilderC6147fc;
import com.xiaomi.push.Notification$BuilderC6148fd;
import com.xiaomi.push.Notification$BuilderC6149fe;
import com.xiaomi.push.service.C6365at;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
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

/* renamed from: com.xiaomi.push.service.aj */
/* loaded from: classes2.dex */
public class C6350aj {

    /* renamed from: a */
    public static long f22956a;

    /* renamed from: a */
    private static volatile AbstractC6359ap f22957a;

    /* renamed from: a */
    private static final LinkedList<Pair<Integer, C6260ir>> f22958a = new LinkedList<>();

    /* renamed from: a */
    private static ExecutorService f22959a = Executors.newCachedThreadPool();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.service.aj$a */
    /* loaded from: classes2.dex */
    public static class CallableC6351a implements Callable<Bitmap> {

        /* renamed from: a */
        private Context f22960a;

        /* renamed from: a */
        private String f22961a;

        /* renamed from: a */
        private boolean f22962a;

        public CallableC6351a(String str, Context context, boolean z) {
            this.f22960a = context;
            this.f22961a = str;
            this.f22962a = z;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Bitmap call() {
            Bitmap bitmap = null;
            if (TextUtils.isEmpty(this.f22961a)) {
                AbstractC5876b.m4147a("Failed get online picture/icon resource cause picUrl is empty");
                return null;
            }
            if (this.f22961a.startsWith("http")) {
                C6365at.C6367b m1588a = C6365at.m1588a(this.f22960a, this.f22961a, this.f22962a);
                if (m1588a != null) {
                    return m1588a.f22990a;
                }
            } else {
                bitmap = C6365at.m1589a(this.f22960a, this.f22961a);
                if (bitmap != null) {
                    return bitmap;
                }
            }
            AbstractC5876b.m4147a("Failed get online picture/icon resource");
            return bitmap;
        }
    }

    /* renamed from: com.xiaomi.push.service.aj$b */
    /* loaded from: classes2.dex */
    public static class C6352b {

        /* renamed from: a */
        long f22963a = 0;

        /* renamed from: a */
        Notification f22964a;
    }

    /* renamed from: com.xiaomi.push.service.aj$c */
    /* loaded from: classes2.dex */
    public static class C6353c {

        /* renamed from: a */
        public String f22966a;

        /* renamed from: a */
        public long f22965a = 0;

        /* renamed from: a */
        public boolean f22967a = false;
    }

    /* renamed from: a */
    static int m1675a(Context context, String str) {
        return context.getSharedPreferences("pref_notify_type", 0).getInt(str, Integer.MAX_VALUE);
    }

    /* renamed from: a */
    private static int m1669a(Context context, String str, String str2) {
        if (str.equals(context.getPackageName())) {
            return context.getResources().getIdentifier(str2, "drawable", str);
        }
        return 0;
    }

    /* renamed from: a */
    private static int m1666a(Context context, String str, Map<String, String> map, int i) {
        ComponentName m1352a;
        Intent m1645b = m1645b(context, str, map, i);
        if (m1645b == null || (m1352a = C6446l.m1352a(context, m1645b)) == null) {
            return 0;
        }
        return m1352a.hashCode();
    }

    /* renamed from: a */
    private static int m1653a(Map<String, String> map) {
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

    /* renamed from: a */
    private static Notification m1686a(Notification notification) {
        Object m3650a = C6016bj.m3650a(notification, "extraNotification");
        if (m3650a != null) {
            C6016bj.m3648a(m3650a, "setCustomizedIcon", Boolean.TRUE);
        }
        return notification;
    }

    /* renamed from: a */
    private static PendingIntent m1681a(Context context, C6260ir c6260ir, String str, byte[] bArr, int i) {
        return m1680a(context, c6260ir, str, bArr, i, 0, m1682a(context, c6260ir, str));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static PendingIntent m1680a(Context context, C6260ir c6260ir, String str, byte[] bArr, int i, int i2, boolean z) {
        Intent intent;
        String protocol;
        int i3 = m1639c(c6260ir) ? XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER : m1656a(c6260ir) ? 3000 : -1;
        C6251ii m2233a = c6260ir.m2233a();
        String m2402a = m2233a != null ? m2233a.m2402a() : "";
        boolean m1656a = m1656a(c6260ir);
        if (m2233a == null || TextUtils.isEmpty(m2233a.f22318e)) {
            if (m1656a) {
                intent = new Intent();
                intent.setComponent(new ComponentName("com.xiaomi.xmsf", "com.xiaomi.mipush.sdk.PushMessageHandler"));
            } else {
                intent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
                intent.setComponent(new ComponentName(str, "com.xiaomi.mipush.sdk.PushMessageHandler"));
            }
            intent.putExtra("mipush_payload", bArr);
            intent.putExtra("mipush_notified", true);
            intent.addCategory(String.valueOf(i));
            intent.addCategory(String.valueOf(m2402a));
            intent.putExtra("notification_click_button", i2);
            intent.putExtra("messageId", m2402a);
            intent.putExtra("eventMessageType", i3);
            if (m1656a || !z) {
                m1684a(context, intent, c6260ir, m2233a, m2402a, i2);
                return Build.VERSION.SDK_INT >= 31 ? PendingIntent.getService(context, 0, intent, 33554432) : PendingIntent.getService(context, 0, intent, 134217728);
            }
            Intent intent2 = new Intent();
            intent2.setComponent(m1655a(str));
            intent2.addFlags(276824064);
            intent2.putExtra("mipush_serviceIntent", intent);
            intent2.addCategory(String.valueOf(i));
            intent2.addCategory(String.valueOf(m2402a));
            intent2.addCategory(String.valueOf(i2));
            m1684a(context, intent2, c6260ir, m2233a, m2402a, i2);
            m1661a(intent2);
            return Build.VERSION.SDK_INT >= 31 ? PendingIntent.getActivity(context, 0, intent2, 33554432) : PendingIntent.getActivity(context, 0, intent2, 134217728);
        }
        Intent intent3 = new Intent("android.intent.action.VIEW");
        intent3.setData(Uri.parse(m2233a.f22318e));
        try {
            protocol = new URL(m2233a.f22318e).getProtocol();
        } catch (MalformedURLException unused) {
            AbstractC5876b.m4147a("meet URL exception : " + m2233a.f22318e);
            intent3.setPackage(str);
        }
        if (!"http".equals(protocol) && !"https".equals(protocol)) {
            intent3.setPackage(str);
            intent3.addFlags(268435456);
            intent3.putExtra("messageId", m2402a);
            intent3.putExtra("eventMessageType", i3);
            return Build.VERSION.SDK_INT < 31 ? PendingIntent.getActivity(context, 0, intent3, 33554432) : PendingIntent.getActivity(context, 0, intent3, 134217728);
        }
        C6369av.m1548a(context, intent3);
        intent3.addFlags(268435456);
        intent3.putExtra("messageId", m2402a);
        intent3.putExtra("eventMessageType", i3);
        if (Build.VERSION.SDK_INT < 31) {
        }
    }

    /* renamed from: a */
    private static PendingIntent m1670a(Context context, String str, C6260ir c6260ir, byte[] bArr, int i, int i2) {
        Map<String, String> m2401a = c6260ir.m2233a().m2401a();
        if (m2401a == null) {
            return null;
        }
        boolean m1682a = m1682a(context, c6260ir, str);
        if (m1682a) {
            return m1680a(context, c6260ir, str, bArr, i, i2, m1682a);
        }
        Intent m1665a = m1665a(context, str, m2401a, i2);
        if (m1665a != null) {
            return PendingIntent.getActivity(context, 0, m1665a, Build.VERSION.SDK_INT >= 31 ? 33554432 : 134217728);
        }
        return null;
    }

    /* renamed from: a */
    public static ComponentName m1655a(String str) {
        return new ComponentName(str, "com.xiaomi.mipush.sdk.NotificationClickedActivity");
    }

    /* renamed from: a */
    public static Intent m1665a(Context context, String str, Map<String, String> map, int i) {
        if (m1641b(map)) {
            return m1664a(context, str, map, String.format("cust_btn_%s_ne", Integer.valueOf(i)), String.format("cust_btn_%s_iu", Integer.valueOf(i)), String.format("cust_btn_%s_ic", Integer.valueOf(i)), String.format("cust_btn_%s_wu", Integer.valueOf(i)));
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return null;
                    }
                    return m1664a(context, str, map, "notification_colorful_button_notify_effect", "notification_colorful_button_intent_uri", "notification_colorful_button_intent_class", "notification_colorful_button_web_uri");
                }
                return m1664a(context, str, map, "notification_style_button_right_notify_effect", "notification_style_button_right_intent_uri", "notification_style_button_right_intent_class", "notification_style_button_right_web_uri");
            }
            return m1664a(context, str, map, "notification_style_button_mid_notify_effect", "notification_style_button_mid_intent_uri", "notification_style_button_mid_intent_class", "notification_style_button_mid_web_uri");
        }
        return m1664a(context, str, map, "notification_style_button_left_notify_effect", "notification_style_button_left_intent_uri", "notification_style_button_left_intent_class", "notification_style_button_left_web_uri");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x010a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Intent m1664a(Context context, String str, Map<String, String> map, String str2, String str3, String str4, String str5) {
        Intent launchIntentForPackage;
        Intent intent;
        StringBuilder sb;
        String message;
        String protocol;
        String str6 = map.get(str2);
        if (TextUtils.isEmpty(str6)) {
            return null;
        }
        if (AbstractC6391bh.f23075a.equals(str6)) {
            try {
                launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            } catch (Exception e) {
                AbstractC5876b.m4138d("Cause: " + e.getMessage());
            }
        } else if (AbstractC6391bh.f23076b.equals(str6)) {
            if (map.containsKey(str3)) {
                String str7 = map.get(str3);
                if (str7 != null) {
                    try {
                        intent = Intent.parseUri(str7, 1);
                    } catch (URISyntaxException e2) {
                        e = e2;
                        intent = null;
                    }
                    try {
                        intent.setPackage(str);
                    } catch (URISyntaxException e3) {
                        e = e3;
                        sb = new StringBuilder();
                        sb.append("Cause: ");
                        message = e.getMessage();
                        sb.append(message);
                        AbstractC5876b.m4138d(sb.toString());
                        launchIntentForPackage = intent;
                        if (launchIntentForPackage != null) {
                        }
                        return null;
                    }
                    launchIntentForPackage = intent;
                }
            } else if (map.containsKey(str4)) {
                Intent intent2 = new Intent();
                intent2.setComponent(new ComponentName(str, map.get(str4)));
                launchIntentForPackage = intent2;
            }
            launchIntentForPackage = null;
        } else {
            if (AbstractC6391bh.f23077c.equals(str6)) {
                String str8 = map.get(str5);
                if (!TextUtils.isEmpty(str8)) {
                    String trim = str8.trim();
                    if (!trim.startsWith(DefaultWebClient.HTTP_SCHEME) && !trim.startsWith(DefaultWebClient.HTTPS_SCHEME)) {
                        trim = DefaultWebClient.HTTP_SCHEME + trim;
                    }
                    try {
                        protocol = new URL(trim).getProtocol();
                    } catch (MalformedURLException e4) {
                        e = e4;
                        intent = null;
                    }
                    if ("http".equals(protocol) || "https".equals(protocol)) {
                        intent = new Intent("android.intent.action.VIEW");
                        try {
                            intent.setData(Uri.parse(trim));
                            C6369av.m1548a(context, intent);
                        } catch (MalformedURLException e5) {
                            e = e5;
                            sb = new StringBuilder();
                            sb.append("Cause: ");
                            message = e.getMessage();
                            sb.append(message);
                            AbstractC5876b.m4138d(sb.toString());
                            launchIntentForPackage = intent;
                            if (launchIntentForPackage != null) {
                            }
                            return null;
                        }
                        launchIntentForPackage = intent;
                    }
                }
            }
            launchIntentForPackage = null;
        }
        if (launchIntentForPackage != null) {
            launchIntentForPackage.addFlags(268435456);
            try {
                if (context.getPackageManager().resolveActivity(launchIntentForPackage, 65536) != null) {
                    return launchIntentForPackage;
                }
                if (Build.VERSION.SDK_INT >= 30 && !C6306l.m1851a(context) && AbstractC6391bh.f23077c.equals(str6)) {
                    return launchIntentForPackage;
                }
                AbstractC5876b.m4147a("not resolve activity:" + launchIntentForPackage + "for buttons");
            } catch (Exception e6) {
                AbstractC5876b.m4138d("Cause: " + e6.getMessage());
            }
        }
        return null;
    }

    /* renamed from: a */
    private static Bitmap m1685a(Context context, int i) {
        return m1660a(context.getResources().getDrawable(i));
    }

    /* renamed from: a */
    private static Bitmap m1663a(Context context, String str, boolean z) {
        Future submit = f22959a.submit(new CallableC6351a(str, context, z));
        try {
            try {
                Bitmap bitmap = (Bitmap) submit.get(180L, TimeUnit.SECONDS);
                return bitmap == null ? bitmap : bitmap;
            } catch (InterruptedException | ExecutionException | TimeoutException e) {
                AbstractC5876b.m4143a(e);
                submit.cancel(true);
                return null;
            }
        } finally {
            submit.cancel(true);
        }
    }

    /* renamed from: a */
    public static Bitmap m1660a(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (intrinsicWidth <= 0) {
            intrinsicWidth = 1;
        }
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight > 0 ? intrinsicHeight : 1, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* renamed from: a */
    private static RemoteViews m1679a(Context context, C6260ir c6260ir, byte[] bArr) {
        C6251ii m2233a = c6260ir.m2233a();
        String m1657a = m1657a(c6260ir);
        if (m2233a != null && m2233a.m2401a() != null) {
            Map<String, String> m2401a = m2233a.m2401a();
            String str = m2401a.get("layout_name");
            String str2 = m2401a.get("layout_value");
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                try {
                    Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(m1657a);
                    int identifier = resourcesForApplication.getIdentifier(str, "layout", m1657a);
                    if (identifier == 0) {
                        return null;
                    }
                    RemoteViews remoteViews = new RemoteViews(m1657a, identifier);
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        if (jSONObject.has(TextBundle.TEXT_ENTRY)) {
                            JSONObject jSONObject2 = jSONObject.getJSONObject(TextBundle.TEXT_ENTRY);
                            Iterator<String> keys = jSONObject2.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                String string = jSONObject2.getString(next);
                                int identifier2 = resourcesForApplication.getIdentifier(next, "id", m1657a);
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
                                int identifier3 = resourcesForApplication.getIdentifier(next2, "id", m1657a);
                                int identifier4 = resourcesForApplication.getIdentifier(string2, "drawable", m1657a);
                                if (identifier3 > 0) {
                                    remoteViews.setImageViewResource(identifier3, identifier4);
                                }
                            }
                        }
                        if (jSONObject.has(CrashHianalyticsData.TIME)) {
                            JSONObject jSONObject4 = jSONObject.getJSONObject(CrashHianalyticsData.TIME);
                            Iterator<String> keys3 = jSONObject4.keys();
                            while (keys3.hasNext()) {
                                String next3 = keys3.next();
                                String string3 = jSONObject4.getString(next3);
                                if (string3.length() == 0) {
                                    string3 = "yy-MM-dd hh:mm";
                                }
                                int identifier5 = resourcesForApplication.getIdentifier(next3, "id", m1657a);
                                if (identifier5 > 0) {
                                    remoteViews.setTextViewText(identifier5, new SimpleDateFormat(string3).format(new Date(System.currentTimeMillis())));
                                }
                            }
                        }
                        return remoteViews;
                    } catch (JSONException e) {
                        AbstractC5876b.m4143a(e);
                        return null;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    AbstractC5876b.m4143a(e2);
                }
            }
        }
        return null;
    }

    @TargetApi(16)
    /* renamed from: a */
    private static Notification$BuilderC6148fd m1676a(Context context, C6260ir c6260ir, byte[] bArr, String str, int i) {
        PendingIntent m1670a;
        String m1657a = m1657a(c6260ir);
        Map<String, String> m2401a = c6260ir.m2233a().m2401a();
        String str2 = m2401a.get("notification_style_type");
        Notification$BuilderC6148fd m1627a = (!C6306l.m1851a(context) || f22957a == null) ? null : f22957a.m1627a(context, i, m1657a, m2401a);
        if (m1627a != null) {
            m1627a.mo2948a(m2401a);
            return m1627a;
        } else if ("2".equals(str2)) {
            Notification$BuilderC6148fd notification$BuilderC6148fd = new Notification$BuilderC6148fd(context);
            Bitmap m1663a = TextUtils.isEmpty(m2401a.get("notification_bigPic_uri")) ? null : m1663a(context, m2401a.get("notification_bigPic_uri"), false);
            if (m1663a == null) {
                AbstractC5876b.m4147a("can not get big picture.");
                return notification$BuilderC6148fd;
            }
            Notification.BigPictureStyle bigPictureStyle = new Notification.BigPictureStyle(notification$BuilderC6148fd);
            bigPictureStyle.bigPicture(m1663a);
            bigPictureStyle.setSummaryText(str);
            bigPictureStyle.bigLargeIcon((Bitmap) null);
            notification$BuilderC6148fd.setStyle(bigPictureStyle);
            return notification$BuilderC6148fd;
        } else if ("1".equals(str2)) {
            Notification$BuilderC6148fd notification$BuilderC6148fd2 = new Notification$BuilderC6148fd(context);
            notification$BuilderC6148fd2.setStyle(new Notification.BigTextStyle().bigText(str));
            return notification$BuilderC6148fd2;
        } else if ("4".equals(str2) && C6306l.m1853a()) {
            Notification$BuilderC6147fc notification$BuilderC6147fc = new Notification$BuilderC6147fc(context, m1657a);
            if (!TextUtils.isEmpty(m2401a.get("notification_banner_image_uri"))) {
                notification$BuilderC6147fc.mo2951a(m1663a(context, m2401a.get("notification_banner_image_uri"), false));
            }
            if (!TextUtils.isEmpty(m2401a.get("notification_banner_icon_uri"))) {
                notification$BuilderC6147fc.m2974b(m1663a(context, m2401a.get("notification_banner_icon_uri"), false));
            }
            notification$BuilderC6147fc.mo2948a(m2401a);
            return notification$BuilderC6147fc;
        } else if ("3".equals(str2) && C6306l.m1853a()) {
            Notification$BuilderC6149fe notification$BuilderC6149fe = new Notification$BuilderC6149fe(context, i, m1657a);
            if (!TextUtils.isEmpty(m2401a.get("notification_colorful_button_text")) && (m1670a = m1670a(context, m1657a, c6260ir, bArr, i, 4)) != null) {
                notification$BuilderC6149fe.m2966a(m2401a.get("notification_colorful_button_text"), m1670a).mo2965a(m2401a.get("notification_colorful_button_bg_color"));
            }
            if (!TextUtils.isEmpty(m2401a.get("notification_colorful_bg_color"))) {
                notification$BuilderC6149fe.m2964b(m2401a.get("notification_colorful_bg_color"));
            } else if (!TextUtils.isEmpty(m2401a.get("notification_colorful_bg_image_uri"))) {
                notification$BuilderC6149fe.mo2951a(m1663a(context, m2401a.get("notification_colorful_bg_image_uri"), false));
            }
            notification$BuilderC6149fe.mo2948a(m2401a);
            return notification$BuilderC6149fe;
        } else {
            return new Notification$BuilderC6148fd(context);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02e2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:153:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0428  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0433  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x025c  */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v50 */
    @SuppressLint({"NewApi"})
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static C6352b m1677a(Context context, C6260ir c6260ir, byte[] bArr, RemoteViews remoteViews, PendingIntent pendingIntent, int i) {
        Notification$BuilderC6148fd notification$BuilderC6148fd;
        boolean z;
        int m1669a;
        boolean z2;
        Bitmap m1663a;
        String str;
        boolean z3;
        boolean z4;
        long currentTimeMillis;
        String str2;
        boolean z5;
        C6352b c6352b;
        int i2;
        String str3;
        Notification notification;
        int m1653a;
        Bitmap m1589a;
        int i3;
        Bitmap m1663a2;
        StringBuilder sb;
        String m1650a;
        C6352b c6352b2 = new C6352b();
        C6251ii m2233a = c6260ir.m2233a();
        String m1657a = m1657a(c6260ir);
        Map<String, String> m2401a = m2233a.m2401a();
        String[] m1683a = m1683a(context, m2233a);
        if (remoteViews != null) {
            notification$BuilderC6148fd = new Notification$BuilderC6148fd(context);
            notification$BuilderC6148fd.setCustomContentView(remoteViews);
        } else {
            notification$BuilderC6148fd = (m2401a == null || !m2401a.containsKey("notification_style_type")) ? new Notification$BuilderC6148fd(context) : m1676a(context, c6260ir, bArr, m1683a[1], i);
        }
        Notification$BuilderC6148fd notification$BuilderC6148fd2 = notification$BuilderC6148fd;
        m1659a(notification$BuilderC6148fd2, context, c6260ir.m2219b(), c6260ir, bArr, i);
        notification$BuilderC6148fd2.setContentTitle(m1683a[0]);
        notification$BuilderC6148fd2.setContentText(m1683a[1]);
        long currentTimeMillis2 = System.currentTimeMillis();
        notification$BuilderC6148fd2.setWhen(currentTimeMillis2);
        String m1650a2 = m1650a(m2401a, "notification_show_when");
        if (!TextUtils.isEmpty(m1650a2)) {
            notification$BuilderC6148fd2.setShowWhen(Boolean.parseBoolean(m1650a2));
        } else if (Build.VERSION.SDK_INT >= 24) {
            notification$BuilderC6148fd2.setShowWhen(true);
        }
        notification$BuilderC6148fd2.setContentIntent(pendingIntent);
        int m1669a2 = m1669a(context, m1657a, "mipush_notification");
        int m1669a3 = m1669a(context, m1657a, "mipush_small_notification");
        if (m1669a2 <= 0 || m1669a3 <= 0) {
            if (!C6306l.m1851a(context)) {
                String m1650a3 = m1650a(m2401a, "fcm_icon_uri");
                String m1650a4 = m1650a(m2401a, "fcm_icon_color");
                if (!TextUtils.isEmpty(m1650a3) && !TextUtils.isEmpty(m1650a4) && (m1669a = m1669a(context, m1657a, m1650a3)) > 0) {
                    notification$BuilderC6148fd2.setSmallIcon(m1669a);
                    notification$BuilderC6148fd2.mo2965a(m1650a4);
                    z = true;
                    if (!z) {
                        if (Build.VERSION.SDK_INT >= 23) {
                            notification$BuilderC6148fd2.setSmallIcon(Icon.createWithResource(m1657a, C6369av.m1547a(context, m1657a)));
                        } else {
                            notification$BuilderC6148fd2.setSmallIcon(m1649b(context, m1657a));
                        }
                    }
                }
            }
            z = false;
            if (!z) {
            }
        } else {
            notification$BuilderC6148fd2.setLargeIcon(m1685a(context, m1669a2));
            notification$BuilderC6148fd2.setSmallIcon(m1669a3);
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23) {
            if (m2401a == null) {
                i3 = 1;
                m1663a2 = null;
            } else {
                i3 = 1;
                m1663a2 = m1663a(context, m2401a.get("notification_small_icon_uri"), true);
            }
            if (m1663a2 != null) {
                Object[] objArr = new Object[i3];
                objArr[0] = m1663a2;
                Object m3646a = C6016bj.m3646a("android.graphics.drawable.Icon", "createWithBitmap", objArr);
                if (m3646a != null) {
                    Object[] objArr2 = new Object[i3];
                    objArr2[0] = m3646a;
                    C6016bj.m3648a((Object) notification$BuilderC6148fd2, "setSmallIcon", objArr2);
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("miui.isGrayscaleIcon", i3);
                    notification$BuilderC6148fd2.addExtras(bundle);
                    notification$BuilderC6148fd2.mo2965a(m1650a(m2401a, "notification_small_icon_color"));
                } else {
                    sb = new StringBuilder();
                    sb.append("failed te get small icon with url:");
                    m1650a = m2401a.get("notification_small_icon_uri");
                }
            } else {
                sb = new StringBuilder();
                sb.append("failed to get small icon url:");
                m1650a = m1650a(m2401a, "notification_small_icon_uri");
            }
            sb.append(m1650a);
            AbstractC5876b.m4147a(sb.toString());
            notification$BuilderC6148fd2.mo2965a(m1650a(m2401a, "notification_small_icon_color"));
        }
        String m1650a5 = m1650a(m2401a, "__dynamic_icon_uri");
        boolean z6 = Boolean.parseBoolean(m1650a(m2401a, "__adiom")) || !C6306l.m1853a();
        if (!TextUtils.isEmpty(m1650a5) && z6) {
            if (m1650a5.startsWith("http")) {
                C6365at.C6367b m1588a = C6365at.m1588a(context, m1650a5, true);
                if (m1588a != null) {
                    m1589a = m1588a.f22990a;
                    c6352b2.f22963a = m1588a.f22989a;
                } else {
                    m1589a = null;
                }
            } else {
                m1589a = C6365at.m1589a(context, m1650a5);
            }
            if (m1589a != null) {
                notification$BuilderC6148fd2.setLargeIcon(m1589a);
                z2 = true;
                m1663a = m2401a != null ? null : m1663a(context, m2401a.get("notification_large_icon_uri"), true);
                if (m1663a != null) {
                    notification$BuilderC6148fd2.setLargeIcon(m1663a);
                }
                if (m2401a != null || i4 < 24) {
                    str = null;
                    z3 = false;
                } else {
                    String str4 = m2401a.get("notification_group");
                    z3 = Boolean.parseBoolean(m2401a.get("notification_is_summary"));
                    boolean parseBoolean = Boolean.parseBoolean(m2401a.get("notification_group_disable_default"));
                    if (TextUtils.isEmpty(str4) && (C6306l.m1853a() || !parseBoolean)) {
                        str4 = m1657a(c6260ir);
                    }
                    String str5 = str4;
                    C6016bj.m3648a((Object) notification$BuilderC6148fd2, "setGroupSummary", Boolean.valueOf(z3));
                    String str6 = m2401a.get("notification_style_type");
                    if ("com.xiaomi.xmsf".equals(context.getPackageName()) && ("4".equals(str6) || "3".equals(str6))) {
                        str = m1657a(c6260ir) + "_custom_" + currentTimeMillis2;
                        z4 = true;
                        notification$BuilderC6148fd2.setAutoCancel(true);
                        currentTimeMillis = System.currentTimeMillis();
                        if (m2401a != null && m2401a.containsKey("ticker")) {
                            notification$BuilderC6148fd2.setTicker(m2401a.get("ticker"));
                        }
                        if (currentTimeMillis - f22956a > 10000) {
                            f22956a = currentTimeMillis;
                            i2 = m2233a.f22305a;
                            if (m1647b(context, m1657a)) {
                                i2 = m1675a(context, m1657a);
                            }
                            notification$BuilderC6148fd2.setDefaults(i2);
                            if (m2401a == null || (i2 & 1) == 0) {
                                str2 = "com.xiaomi.xmsf";
                                z5 = z2;
                                c6352b = c6352b2;
                            } else {
                                c6352b = c6352b2;
                                String str7 = m2401a.get("sound_uri");
                                if (TextUtils.isEmpty(str7)) {
                                    str2 = "com.xiaomi.xmsf";
                                    z5 = z2;
                                } else {
                                    z5 = z2;
                                    StringBuilder sb2 = new StringBuilder();
                                    str2 = "com.xiaomi.xmsf";
                                    sb2.append("android.resource://");
                                    sb2.append(m1657a);
                                    if (str7.startsWith(sb2.toString())) {
                                        notification$BuilderC6148fd2.setDefaults(i2 ^ 1);
                                        notification$BuilderC6148fd2.setSound(Uri.parse(str7));
                                    }
                                }
                            }
                        } else {
                            str2 = "com.xiaomi.xmsf";
                            z5 = z2;
                            c6352b = c6352b2;
                            i2 = -100;
                        }
                        if (m2401a != null || i4 < 26) {
                            str3 = "0";
                            if (m2401a != null && i4 < 26) {
                                C6016bj.m3648a((Object) notification$BuilderC6148fd2, "setPriority", Integer.valueOf(m1638c(m2401a)));
                            }
                        } else {
                            C6368au m1572a = C6368au.m1572a(context, m1657a);
                            if (m1653a(m2401a) > 0) {
                                str3 = "0";
                                C6016bj.m3648a((Object) notification$BuilderC6148fd2, "setTimeoutAfter", Long.valueOf(m1653a * XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER));
                            } else {
                                str3 = "0";
                            }
                            C6360aq.m1615a(m2233a);
                            String str8 = m2401a.get("channel_id");
                            if (!TextUtils.isEmpty(str8) || context.getApplicationInfo().targetSdkVersion >= 26) {
                                String m1667a = m1667a(context, m1657a, m2401a);
                                int m1642b = m1642b(m2401a);
                                int i5 = m2233a.f22305a;
                                C6413bz.m1404a(context, m2401a, notification$BuilderC6148fd2, currentTimeMillis2);
                                C6016bj.m3648a((Object) notification$BuilderC6148fd2, "setChannelId", C6360aq.m1613a(m1572a, str8, m1667a, m2401a.get("channel_description"), i5, m1642b, m2401a.get("sound_uri"), m2401a.get("channel_perm")));
                                if (i2 == -100 && C6369av.m1541a(m2401a)) {
                                    C6369av.m1558a(notification$BuilderC6148fd2, z3);
                                }
                                if ("pulldown".equals(C6369av.m1543a((Object) m2401a)) && C6369av.m1541a(m2401a) && Objects.equals(m2401a.get("pull_down_pop_type"), str3)) {
                                    C6369av.m1558a(notification$BuilderC6148fd2, z3);
                                }
                                if ("tts".equals(C6369av.m1543a((Object) m2401a)) && C6369av.m1541a(m2401a)) {
                                    C6369av.m1558a(notification$BuilderC6148fd2, z3);
                                }
                            }
                            String str9 = m2401a.get("background_color");
                            if (!TextUtils.isEmpty(str9)) {
                                try {
                                    int parseInt = Integer.parseInt(str9);
                                    notification$BuilderC6148fd2.setOngoing(true);
                                    notification$BuilderC6148fd2.setColor(parseInt);
                                    C6016bj.m3648a((Object) notification$BuilderC6148fd2, "setColorized", Boolean.TRUE);
                                } catch (Exception e) {
                                    AbstractC5876b.m4143a(e);
                                }
                            }
                        }
                        if (str != null) {
                            if (!z4) {
                                str = C6361ar.m1608a().m1601a(context, notification$BuilderC6148fd2, str);
                            }
                            C6016bj.m3648a((Object) notification$BuilderC6148fd2, "setGroup", str);
                        }
                        if (C6306l.m1839c() && str2.equals(context.getPackageName())) {
                            C6016bj.m3646a("miui.util.NotificationHelper", "setTargetPkg", context, notification$BuilderC6148fd2, m1657a(c6260ir));
                        }
                        notification = notification$BuilderC6148fd2.getNotification();
                        if (z5 && C6306l.m1853a()) {
                            m1686a(notification);
                        }
                        if (m2401a != null) {
                            if (notification.extras == null) {
                                notification.extras = new Bundle();
                            }
                            if (!TextUtils.isEmpty(m2401a.get("enable_keyguard"))) {
                                C6369av.m1538b(notification, Boolean.parseBoolean(m2401a.get("enable_keyguard")));
                            }
                            if (!TextUtils.isEmpty(m2401a.get("enable_float"))) {
                                C6369av.m1551a(notification, Boolean.parseBoolean(m2401a.get("enable_float")));
                            }
                            if (!TextUtils.isEmpty(m2401a.get("float_small_win")) && str3.equals(m2401a.get("float_small_win")) && C6175g.m2803d(context, m1657a)) {
                                C6369av.m1551a(notification, false);
                            }
                            int m1229a = C6470v.m1229a(m2401a.get("section_is_prr"), -1);
                            int m1229a2 = C6470v.m1229a(m2401a.get("section_prr_cl"), -1);
                            if (m1229a >= 0 && m1229a2 >= 0) {
                                C6369av.m1554a(notification, m1229a, m1229a2);
                            }
                        }
                        C6352b c6352b3 = c6352b;
                        c6352b3.f22964a = notification;
                        return c6352b3;
                    }
                    str = str5;
                }
                z4 = false;
                notification$BuilderC6148fd2.setAutoCancel(true);
                currentTimeMillis = System.currentTimeMillis();
                if (m2401a != null) {
                    notification$BuilderC6148fd2.setTicker(m2401a.get("ticker"));
                }
                if (currentTimeMillis - f22956a > 10000) {
                }
                if (m2401a != null) {
                }
                str3 = "0";
                if (m2401a != null) {
                    C6016bj.m3648a((Object) notification$BuilderC6148fd2, "setPriority", Integer.valueOf(m1638c(m2401a)));
                }
                if (str != null) {
                }
                if (C6306l.m1839c()) {
                    C6016bj.m3646a("miui.util.NotificationHelper", "setTargetPkg", context, notification$BuilderC6148fd2, m1657a(c6260ir));
                }
                notification = notification$BuilderC6148fd2.getNotification();
                if (z5) {
                    m1686a(notification);
                }
                if (m2401a != null) {
                }
                C6352b c6352b32 = c6352b;
                c6352b32.f22964a = notification;
                return c6352b32;
            }
        }
        z2 = false;
        if (m2401a != null) {
        }
        if (m1663a != null) {
        }
        if (m2401a != null) {
        }
        str = null;
        z3 = false;
        z4 = false;
        notification$BuilderC6148fd2.setAutoCancel(true);
        currentTimeMillis = System.currentTimeMillis();
        if (m2401a != null) {
        }
        if (currentTimeMillis - f22956a > 10000) {
        }
        if (m2401a != null) {
        }
        str3 = "0";
        if (m2401a != null) {
        }
        if (str != null) {
        }
        if (C6306l.m1839c()) {
        }
        notification = notification$BuilderC6148fd2.getNotification();
        if (z5) {
        }
        if (m2401a != null) {
        }
        C6352b c6352b322 = c6352b;
        c6352b322.f22964a = notification;
        return c6352b322;
    }

    /* renamed from: a */
    public static C6353c m1678a(Context context, C6260ir c6260ir, byte[] bArr) {
        int i;
        Map<String, String> map;
        String str;
        C6353c c6353c = new C6353c();
        C6175g.EnumC6176a m2809a = C6175g.m2809a(context, m1657a(c6260ir), true);
        C6251ii m2233a = c6260ir.m2233a();
        if (m2233a != null) {
            i = m2233a.m2383c();
            map = m2233a.m2401a();
        } else {
            i = 0;
            map = null;
        }
        int m1227b = C6470v.m1227b(m1657a(c6260ir), i);
        if (C6306l.m1851a(context) && m2809a == C6175g.EnumC6176a.NOT_ALLOWED) {
            if (m2233a != null) {
                C6129en.m3082a(context.getApplicationContext()).m3075a(c6260ir.m2219b(), m1644b(c6260ir), m2233a.m2402a(), "10:" + m1657a(c6260ir));
            }
            str = "Do not notify because user block " + m1657a(c6260ir) + "‘s notification";
        } else if (C6306l.m1851a(context) && f22957a != null && f22957a.m1626a(context, m1227b, m1657a(c6260ir), map)) {
            if (m2233a != null) {
                C6129en.m3082a(context.getApplicationContext()).m3075a(c6260ir.m2219b(), m1644b(c6260ir), m2233a.m2402a(), "14:" + m1657a(c6260ir));
            }
            str = "Do not notify because card notification is canceled or sequence incorrect";
        } else {
            RemoteViews m1679a = m1679a(context, c6260ir, bArr);
            PendingIntent m1681a = m1681a(context, c6260ir, c6260ir.m2219b(), bArr, m1227b);
            if (m1681a != null) {
                C6352b m1677a = m1677a(context, c6260ir, bArr, m1679a, m1681a, m1227b);
                c6353c.f22965a = m1677a.f22963a;
                c6353c.f22966a = m1657a(c6260ir);
                Notification notification = m1677a.f22964a;
                if (C6306l.m1853a()) {
                    if (!TextUtils.isEmpty(m2233a.m2402a())) {
                        notification.extras.putString("message_id", m2233a.m2402a());
                    }
                    notification.extras.putString("local_paid", c6260ir.m2232a());
                    C6369av.m1540a(map, notification.extras, "msg_busi_type");
                    C6369av.m1540a(map, notification.extras, "disable_notification_flags");
                    String str2 = m2233a.m2389b() == null ? null : m2233a.m2389b().get("score_info");
                    if (!TextUtils.isEmpty(str2)) {
                        notification.extras.putString("score_info", str2);
                    }
                    notification.extras.putString("pushUid", m1650a(m2233a.f22309a, "n_stats_expose"));
                    int i2 = -1;
                    if (m1639c(c6260ir)) {
                        i2 = XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
                    } else if (m1656a(c6260ir)) {
                        i2 = 3000;
                    }
                    notification.extras.putString("eventMessageType", String.valueOf(i2));
                    notification.extras.putString("target_package", m1657a(c6260ir));
                }
                String str3 = m2233a.m2401a() == null ? null : m2233a.m2401a().get("message_count");
                if (C6306l.m1853a() && str3 != null) {
                    try {
                        C6369av.m1555a(notification, Integer.parseInt(str3));
                    } catch (NumberFormatException e) {
                        if (m2233a != null) {
                            C6129en.m3082a(context.getApplicationContext()).m3074b(c6260ir.m2219b(), m1644b(c6260ir), m2233a.m2402a(), Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
                        }
                        AbstractC5876b.m4138d("fail to set message count. " + e);
                    }
                }
                String m1657a = m1657a(c6260ir);
                if (!C6306l.m1839c() && C6306l.m1851a(context)) {
                    C6369av.m1552a(notification, m1657a);
                }
                C6368au m1572a = C6368au.m1572a(context, m1657a);
                if (C6306l.m1851a(context) && f22957a != null) {
                    f22957a.m1625a(c6260ir, m2233a.m2401a(), m1227b, notification);
                }
                if (C6306l.m1851a(context) && f22957a != null && f22957a.m1623a(m2233a.m2401a(), m1227b, notification)) {
                    AbstractC5876b.m4141b("consume this notificaiton by agent");
                } else {
                    m1572a.m1577a(m1227b, notification);
                    c6353c.f22967a = true;
                    AbstractC5876b.m4147a("notification: " + m2233a.m2402a() + " is notifyied");
                }
                if (C6306l.m1853a() && C6306l.m1851a(context)) {
                    C6361ar.m1608a().m1603a(context, m1227b, notification);
                    C6413bz.m1405a(context, m1657a, m1227b, m2233a.m2402a(), notification);
                }
                if (m1656a(c6260ir)) {
                    C6129en.m3082a(context.getApplicationContext()).m3076a(c6260ir.m2219b(), m1644b(c6260ir), m2233a.m2402a(), GLMapStaticValue.AM_PARAMETERNAME_REALCITY_3DLINEVALID, null);
                }
                if (m1639c(c6260ir)) {
                    C6129en.m3082a(context.getApplicationContext()).m3076a(c6260ir.m2219b(), m1644b(c6260ir), m2233a.m2402a(), 1002, null);
                }
                if (Build.VERSION.SDK_INT < 26) {
                    String m2402a = m2233a != null ? m2233a.m2402a() : null;
                    C5978ak m3784a = C5978ak.m3784a(context);
                    int m1653a = m1653a(m2233a.m2401a());
                    if (m1653a > 0 && !TextUtils.isEmpty(m2402a)) {
                        String str4 = "n_timeout_" + m2402a;
                        m3784a.m3772a(str4);
                        m3784a.m3771b(new C6354ak(str4, m1572a, m1227b), m1653a);
                    }
                }
                Pair<Integer, C6260ir> pair = new Pair<>(Integer.valueOf(m1227b), c6260ir);
                LinkedList<Pair<Integer, C6260ir>> linkedList = f22958a;
                synchronized (linkedList) {
                    linkedList.add(pair);
                    if (linkedList.size() > 100) {
                        linkedList.remove();
                    }
                }
                return c6353c;
            }
            if (m2233a != null) {
                C6129en.m3082a(context.getApplicationContext()).m3075a(c6260ir.m2219b(), m1644b(c6260ir), m2233a.m2402a(), Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE);
            }
            str = "The click PendingIntent is null. ";
        }
        AbstractC5876b.m4147a(str);
        return c6353c;
    }

    /* renamed from: a */
    private static String m1667a(Context context, String str, Map<String, String> map) {
        return (map == null || TextUtils.isEmpty(map.get("channel_name"))) ? C6175g.m2806b(context, str) : map.get("channel_name");
    }

    /* renamed from: a */
    public static String m1657a(C6260ir c6260ir) {
        C6251ii m2233a;
        if ("com.xiaomi.xmsf".equals(c6260ir.f22471b) && (m2233a = c6260ir.m2233a()) != null && m2233a.m2401a() != null) {
            String str = m2233a.m2401a().get("miui_package_name");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return c6260ir.f22471b;
    }

    /* renamed from: a */
    public static String m1651a(Map<String, String> map, int i) {
        String format = i == 0 ? "notify_effect" : m1641b(map) ? String.format("cust_btn_%s_ne", Integer.valueOf(i)) : i == 1 ? "notification_style_button_left_notify_effect" : i == 2 ? "notification_style_button_mid_notify_effect" : i == 3 ? "notification_style_button_right_notify_effect" : i == 4 ? "notification_colorful_button_notify_effect" : null;
        if (map == null || format == null) {
            return null;
        }
        return map.get(format);
    }

    /* renamed from: a */
    private static String m1650a(Map<String, String> map, String str) {
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* renamed from: a */
    private static void m1684a(Context context, Intent intent, C6260ir c6260ir, C6251ii c6251ii, String str, int i) {
        if (c6260ir == null || c6251ii == null || TextUtils.isEmpty(str)) {
            return;
        }
        String m1651a = m1651a(c6251ii.m2401a(), i);
        if (TextUtils.isEmpty(m1651a)) {
            return;
        }
        if (AbstractC6391bh.f23075a.equals(m1651a) || AbstractC6391bh.f23076b.equals(m1651a) || AbstractC6391bh.f23077c.equals(m1651a)) {
            intent.putExtra("messageId", str);
            intent.putExtra("local_paid", c6260ir.f22467a);
            if (!TextUtils.isEmpty(c6260ir.f22471b)) {
                intent.putExtra("target_package", c6260ir.f22471b);
            }
            intent.putExtra("job_key", m1650a(c6251ii.m2401a(), "jobkey"));
            intent.putExtra(i + "_target_component", m1666a(context, c6260ir.f22471b, c6251ii.m2401a(), i));
        }
    }

    /* renamed from: a */
    public static void m1674a(Context context, String str) {
        m1672a(context, str, -1);
    }

    /* renamed from: a */
    public static void m1672a(Context context, String str, int i) {
        m1671a(context, str, i, -1);
    }

    /* renamed from: a */
    public static void m1671a(Context context, String str, int i, int i2) {
        int hashCode;
        if (context == null || TextUtils.isEmpty(str) || i < -1) {
            return;
        }
        C6368au m1572a = C6368au.m1572a(context, str);
        List<StatusBarNotification> m1561b = m1572a.m1561b();
        if (C6470v.m1228a(m1561b)) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        boolean z = false;
        if (i == -1) {
            hashCode = 0;
            z = true;
        } else {
            hashCode = ((str.hashCode() / 10) * 10) + i;
        }
        Iterator<StatusBarNotification> it2 = m1561b.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            StatusBarNotification next = it2.next();
            if (!TextUtils.isEmpty(String.valueOf(next.getId()))) {
                int id = next.getId();
                if (z) {
                    linkedList.add(next);
                    m1572a.m1578a(id);
                } else if (hashCode == id) {
                    C6435d.m1383a(context, next, i2);
                    linkedList.add(next);
                    m1572a.m1578a(id);
                    break;
                }
            }
        }
        m1662a(context, linkedList);
    }

    /* renamed from: a */
    public static void m1668a(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        C6368au m1572a = C6368au.m1572a(context, str);
        List<StatusBarNotification> m1561b = m1572a.m1561b();
        if (C6470v.m1228a(m1561b)) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (StatusBarNotification statusBarNotification : m1561b) {
            Notification notification = statusBarNotification.getNotification();
            if (notification != null && !TextUtils.isEmpty(String.valueOf(statusBarNotification.getId()))) {
                int id = statusBarNotification.getId();
                String m1557a = C6369av.m1557a(notification);
                String m1539b = C6369av.m1539b(notification);
                if (!TextUtils.isEmpty(m1557a) && !TextUtils.isEmpty(m1539b) && m1654a(m1557a, str2) && m1654a(m1539b, str3)) {
                    linkedList.add(statusBarNotification);
                    m1572a.m1578a(id);
                }
            }
        }
        m1662a(context, linkedList);
    }

    /* renamed from: a */
    public static void m1662a(Context context, LinkedList<? extends Object> linkedList) {
        if (linkedList == null || linkedList.size() <= 0) {
            return;
        }
        C6410bw.m1418a(context, "category_clear_notification", "clear_notification", linkedList.size(), "");
    }

    /* renamed from: a */
    private static void m1661a(Intent intent) {
        try {
            Method declaredMethod = intent.getClass().getDeclaredMethod("addMiuiFlags", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(intent, 2);
        } catch (Exception e) {
            AbstractC5876b.m4141b("insert flags error " + e);
        }
    }

    @TargetApi(16)
    /* renamed from: a */
    private static void m1659a(Notification$BuilderC6148fd notification$BuilderC6148fd, Context context, String str, C6260ir c6260ir, byte[] bArr, int i) {
        PendingIntent m1670a;
        PendingIntent m1670a2;
        PendingIntent m1670a3;
        PendingIntent m1670a4;
        Map<String, String> m2401a = c6260ir.m2233a().m2401a();
        if (TextUtils.equals("3", m2401a.get("notification_style_type")) || TextUtils.equals("4", m2401a.get("notification_style_type"))) {
            return;
        }
        if (m1641b(m2401a)) {
            for (int i2 = 1; i2 <= 3; i2++) {
                String str2 = m2401a.get(String.format("cust_btn_%s_n", Integer.valueOf(i2)));
                if (!TextUtils.isEmpty(str2) && (m1670a4 = m1670a(context, str, c6260ir, bArr, i, i2)) != null) {
                    notification$BuilderC6148fd.addAction(0, str2, m1670a4);
                }
            }
            return;
        }
        if (!TextUtils.isEmpty(m2401a.get("notification_style_button_left_name")) && (m1670a3 = m1670a(context, str, c6260ir, bArr, i, 1)) != null) {
            notification$BuilderC6148fd.addAction(0, m2401a.get("notification_style_button_left_name"), m1670a3);
        }
        if (!TextUtils.isEmpty(m2401a.get("notification_style_button_mid_name")) && (m1670a2 = m1670a(context, str, c6260ir, bArr, i, 2)) != null) {
            notification$BuilderC6148fd.addAction(0, m2401a.get("notification_style_button_mid_name"), m1670a2);
        }
        if (TextUtils.isEmpty(m2401a.get("notification_style_button_right_name")) || (m1670a = m1670a(context, str, c6260ir, bArr, i, 3)) == null) {
            return;
        }
        notification$BuilderC6148fd.addAction(0, m2401a.get("notification_style_button_right_name"), m1670a);
    }

    /* renamed from: a */
    private static boolean m1682a(Context context, C6260ir c6260ir, String str) {
        if (c6260ir != null && c6260ir.m2233a() != null && c6260ir.m2233a().m2401a() != null && !TextUtils.isEmpty(str)) {
            return Boolean.parseBoolean(c6260ir.m2233a().m2401a().get("use_clicked_activity")) && C6446l.m1353a(context, m1655a(str));
        }
        AbstractC5876b.m4147a("should clicked activity params are null.");
        return false;
    }

    /* renamed from: a */
    public static boolean m1673a(Context context, String str) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100 && Arrays.asList(runningAppProcessInfo.pkgList).contains(str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m1658a(C6251ii c6251ii) {
        if (c6251ii != null) {
            String m2402a = c6251ii.m2402a();
            return !TextUtils.isEmpty(m2402a) && m2402a.length() == 22 && "satuigmo".indexOf(m2402a.charAt(0)) >= 0;
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m1656a(C6260ir c6260ir) {
        C6251ii m2233a = c6260ir.m2233a();
        return m1658a(m2233a) && m2233a.m2365l();
    }

    /* renamed from: a */
    private static boolean m1654a(String str, String str2) {
        return TextUtils.isEmpty(str) || str2.contains(str);
    }

    /* renamed from: a */
    public static boolean m1652a(Map<String, String> map) {
        if (map == null || !map.containsKey("notify_foreground")) {
            return true;
        }
        return "1".equals(map.get("notify_foreground"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004e, code lost:
        if (android.text.TextUtils.isEmpty(r3) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
        if (android.text.TextUtils.isEmpty(r3) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
        r1 = r3;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String[] m1683a(Context context, C6251ii c6251ii) {
        String str;
        String m2382c = c6251ii.m2382c();
        String m2377d = c6251ii.m2377d();
        Map<String, String> m2401a = c6251ii.m2401a();
        if (m2401a != null) {
            int intValue = Float.valueOf((context.getResources().getDisplayMetrics().widthPixels / context.getResources().getDisplayMetrics().density) + 0.5f).intValue();
            if (intValue <= 320) {
                String str2 = m2401a.get("title_short");
                if (!TextUtils.isEmpty(str2)) {
                    m2382c = str2;
                }
                str = m2401a.get("description_short");
            } else if (intValue > 360) {
                String str3 = m2401a.get("title_long");
                if (!TextUtils.isEmpty(str3)) {
                    m2382c = str3;
                }
                str = m2401a.get("description_long");
            }
        }
        return new String[]{m2382c, m2377d};
    }

    /* renamed from: b */
    private static int m1649b(Context context, String str) {
        int m1669a = m1669a(context, str, "mipush_notification");
        int m1669a2 = m1669a(context, str, "mipush_small_notification");
        if (m1669a <= 0) {
            m1669a = m1669a2 > 0 ? m1669a2 : context.getApplicationInfo().icon;
        }
        return m1669a == 0 ? context.getApplicationInfo().logo : m1669a;
    }

    /* renamed from: b */
    private static int m1642b(Map<String, String> map) {
        if (map != null) {
            String str = map.get("channel_importance");
            if (TextUtils.isEmpty(str)) {
                return 3;
            }
            try {
                AbstractC5876b.m4139c("importance=" + str);
                return Integer.parseInt(str);
            } catch (Exception e) {
                AbstractC5876b.m4138d("parsing channel importance error: " + e);
                return 3;
            }
        }
        return 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0145  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Intent m1645b(Context context, String str, Map<String, String> map, int i) {
        Intent launchIntentForPackage;
        String str2;
        Intent intent;
        StringBuilder sb;
        String message;
        String protocol;
        if (map == null) {
            return null;
        }
        if (i != 0) {
            return m1665a(context, str, map, i);
        }
        if (map.containsKey("notify_effect")) {
            String str3 = map.get("notify_effect");
            int i2 = -1;
            String str4 = map.get("intent_flag");
            try {
                if (!TextUtils.isEmpty(str4)) {
                    i2 = Integer.parseInt(str4);
                }
            } catch (NumberFormatException e) {
                AbstractC5876b.m4138d("Cause by intent_flag: " + e.getMessage());
            }
            if (AbstractC6391bh.f23075a.equals(str3)) {
                try {
                    launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
                } catch (Exception e2) {
                    AbstractC5876b.m4138d("Cause: " + e2.getMessage());
                }
            } else if (AbstractC6391bh.f23076b.equals(str3)) {
                if (map.containsKey("intent_uri")) {
                    String str5 = map.get("intent_uri");
                    if (str5 != null) {
                        try {
                            intent = Intent.parseUri(str5, 1);
                            try {
                                intent.setPackage(str);
                            } catch (URISyntaxException e3) {
                                e = e3;
                                sb = new StringBuilder();
                                sb.append("Cause: ");
                                message = e.getMessage();
                                sb.append(message);
                                AbstractC5876b.m4138d(sb.toString());
                                launchIntentForPackage = intent;
                                if (launchIntentForPackage != null) {
                                }
                                return null;
                            }
                        } catch (URISyntaxException e4) {
                            e = e4;
                            intent = null;
                        }
                        launchIntentForPackage = intent;
                    }
                } else if (map.containsKey("class_name")) {
                    Intent intent2 = new Intent();
                    intent2.setComponent(new ComponentName(str, map.get("class_name")));
                    launchIntentForPackage = intent2;
                }
                launchIntentForPackage = null;
            } else {
                if (AbstractC6391bh.f23077c.equals(str3) && (str2 = map.get("web_uri")) != null) {
                    String trim = str2.trim();
                    if (!trim.startsWith(DefaultWebClient.HTTP_SCHEME) && !trim.startsWith(DefaultWebClient.HTTPS_SCHEME)) {
                        trim = DefaultWebClient.HTTP_SCHEME + trim;
                    }
                    try {
                        protocol = new URL(trim).getProtocol();
                    } catch (MalformedURLException e5) {
                        e = e5;
                        intent = null;
                    }
                    if ("http".equals(protocol) || "https".equals(protocol)) {
                        intent = new Intent("android.intent.action.VIEW");
                        try {
                            intent.setData(Uri.parse(trim));
                            C6369av.m1548a(context, intent);
                        } catch (MalformedURLException e6) {
                            e = e6;
                            sb = new StringBuilder();
                            sb.append("Cause: ");
                            message = e.getMessage();
                            sb.append(message);
                            AbstractC5876b.m4138d(sb.toString());
                            launchIntentForPackage = intent;
                            if (launchIntentForPackage != null) {
                            }
                            return null;
                        }
                        launchIntentForPackage = intent;
                    }
                }
                launchIntentForPackage = null;
            }
            if (launchIntentForPackage != null) {
                if (i2 >= 0) {
                    launchIntentForPackage.setFlags(i2);
                }
                launchIntentForPackage.addFlags(268435456);
                try {
                    if (context.getPackageManager().resolveActivity(launchIntentForPackage, 65536) != null) {
                        return launchIntentForPackage;
                    }
                    if (Build.VERSION.SDK_INT >= 30 && !C6306l.m1851a(context) && AbstractC6391bh.f23077c.equals(str3)) {
                        return launchIntentForPackage;
                    }
                    AbstractC5876b.m4147a("not resolve activity:" + launchIntentForPackage);
                } catch (Exception e7) {
                    AbstractC5876b.m4138d("Cause: " + e7.getMessage());
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: b */
    public static String m1644b(C6260ir c6260ir) {
        return m1656a(c6260ir) ? "E100002" : m1639c(c6260ir) ? "E100000" : m1643b(c6260ir) ? "E100001" : m1637d(c6260ir) ? "E100003" : "";
    }

    /* renamed from: b */
    public static void m1648b(Context context, String str) {
        if (!C6306l.m1851a(context) || f22957a == null || TextUtils.isEmpty(str)) {
            return;
        }
        f22957a.m1624a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m1646b(Context context, String str, int i) {
        context.getSharedPreferences("pref_notify_type", 0).edit().putInt(str, i).commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m1647b(Context context, String str) {
        return context.getSharedPreferences("pref_notify_type", 0).contains(str);
    }

    /* renamed from: b */
    public static boolean m1643b(C6260ir c6260ir) {
        C6251ii m2233a = c6260ir.m2233a();
        return m1658a(m2233a) && m2233a.f22311b == 1 && !m1656a(c6260ir);
    }

    /* renamed from: b */
    private static boolean m1641b(Map<String, String> map) {
        if (map == null) {
            AbstractC5876b.m4147a("meta extra is null");
            return false;
        }
        return Constants.VIA_SHARE_TYPE_INFO.equals(map.get("notification_style_type"));
    }

    /* renamed from: c */
    private static int m1638c(Map<String, String> map) {
        if (map != null) {
            String str = map.get("notification_priority");
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            try {
                AbstractC5876b.m4139c("priority=" + str);
                return Integer.parseInt(str);
            } catch (Exception e) {
                AbstractC5876b.m4138d("parsing notification priority error: " + e);
                return 0;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m1640c(Context context, String str) {
        context.getSharedPreferences("pref_notify_type", 0).edit().remove(str).commit();
    }

    /* renamed from: c */
    public static boolean m1639c(C6260ir c6260ir) {
        C6251ii m2233a = c6260ir.m2233a();
        return m1658a(m2233a) && m2233a.f22311b == 0 && !m1656a(c6260ir);
    }

    /* renamed from: d */
    public static boolean m1637d(C6260ir c6260ir) {
        return c6260ir.m2234a() == EnumC6237hv.Registration;
    }

    /* renamed from: e */
    public static boolean m1636e(C6260ir c6260ir) {
        return m1656a(c6260ir) || m1639c(c6260ir) || m1643b(c6260ir);
    }
}

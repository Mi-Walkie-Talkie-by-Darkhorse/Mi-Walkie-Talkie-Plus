package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.data.Error;
import com.xiaomi.channel.commonutils.android.b;
import com.xiaomi.channel.commonutils.android.g;
import com.xiaomi.channel.commonutils.android.j;
import com.xiaomi.channel.commonutils.string.d;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.h;
import com.xiaomi.push.service.m;
import com.xiaomi.push.service.receivers.NetworkStatusReceiver;
import com.xiaomi.xmpush.thrift.a;
import com.xiaomi.xmpush.thrift.aa;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ag;
import com.xiaomi.xmpush.thrift.al;
import com.xiaomi.xmpush.thrift.an;
import com.xiaomi.xmpush.thrift.ap;
import com.xiaomi.xmpush.thrift.f;
import com.xiaomi.xmpush.thrift.s;
import com.xiaomi.xmpush.thrift.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

public abstract class MiPushClient {
    public static final String COMMAND_REGISTER = "register";
    public static final String COMMAND_SET_ACCEPT_TIME = "accept-time";
    public static final String COMMAND_SET_ACCOUNT = "set-account";
    public static final String COMMAND_SET_ALIAS = "set-alias";
    public static final String COMMAND_SUBSCRIBE_TOPIC = "subscribe-topic";
    public static final String COMMAND_UNREGISTER = "unregister";
    public static final String COMMAND_UNSET_ACCOUNT = "unset-account";
    public static final String COMMAND_UNSET_ALIAS = "unset-alias";
    public static final String COMMAND_UNSUBSCRIBE_TOPIC = "unsubscibe-topic";
    public static final String PREF_EXTRA = "mipush_extra";
    private static af mSyncMIIDHelper;
    /* access modifiers changed from: private */
    public static Context sContext;
    private static long sCurMsgId = System.currentTimeMillis();

    @Deprecated
    public static abstract class MiPushClientCallback {
        private String category;

        /* access modifiers changed from: protected */
        public String getCategory() {
            return this.category;
        }

        public void onCommandResult(String str, long j, String str2, List<String> list) {
        }

        public void onInitializeResult(long j, String str, String str2) {
        }

        public void onReceiveMessage(MiPushMessage miPushMessage) {
        }

        public void onReceiveMessage(String str, String str2, String str3, boolean z) {
        }

        public void onSubscribeResult(long j, String str, String str2) {
        }

        public void onUnsubscribeResult(long j, String str, String str2) {
        }

        /* access modifiers changed from: protected */
        public void setCategory(String str) {
            this.category = str;
        }
    }

    private static boolean acceptTimeSet(Context context, String str, String str2) {
        return TextUtils.equals(getAcceptTime(context), str + Constants.ACCEPT_TIME_SEPARATOR_SP + str2);
    }

    public static long accountSetTime(Context context, String str) {
        return context.getSharedPreferences(PREF_EXTRA, 0).getLong("account_" + str, -1);
    }

    static synchronized void addAcceptTime(Context context, String str, String str2) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences(PREF_EXTRA, 0).edit().putString(Constants.EXTRA_KEY_ACCEPT_TIME, str + Constants.ACCEPT_TIME_SEPARATOR_SP + str2).commit();
        }
    }

    static synchronized void addAccount(Context context, String str) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences(PREF_EXTRA, 0).edit().putLong("account_" + str, System.currentTimeMillis()).commit();
        }
    }

    static synchronized void addAlias(Context context, String str) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences(PREF_EXTRA, 0).edit().putLong("alias_" + str, System.currentTimeMillis()).commit();
        }
    }

    private static void addPullNotificationTime(Context context) {
        context.getSharedPreferences(PREF_EXTRA, 0).edit().putLong("last_pull_notification", System.currentTimeMillis()).commit();
    }

    private static void addRegRequestTime(Context context) {
        context.getSharedPreferences(PREF_EXTRA, 0).edit().putLong("last_reg_request", System.currentTimeMillis()).commit();
    }

    static synchronized void addTopic(Context context, String str) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences(PREF_EXTRA, 0).edit().putLong("topic_" + str, System.currentTimeMillis()).commit();
        }
    }

    public static long aliasSetTime(Context context, String str) {
        return context.getSharedPreferences(PREF_EXTRA, 0).getLong("alias_" + str, -1);
    }

    public static void awakeApps(Context context, String[] strArr) {
        new Thread(new o(strArr, context)).start();
    }

    /* access modifiers changed from: private */
    public static void awakePushServiceByPackageInfo(Context context, PackageInfo packageInfo) {
        ServiceInfo[] serviceInfoArr = packageInfo.services;
        if (serviceInfoArr != null) {
            int length = serviceInfoArr.length;
            int i = 0;
            while (i < length) {
                ServiceInfo serviceInfo = serviceInfoArr[i];
                if (!serviceInfo.exported || !serviceInfo.enabled || !"com.xiaomi.mipush.sdk.PushMessageHandler".equals(serviceInfo.name) || context.getPackageName().equals(serviceInfo.packageName)) {
                    i++;
                } else {
                    try {
                        Thread.sleep(((long) ((Math.random() * 2.0d) + 1.0d)) * 1000);
                        Intent intent = new Intent();
                        intent.setClassName(serviceInfo.packageName, serviceInfo.name);
                        intent.setAction("com.xiaomi.mipush.sdk.WAKEUP");
                        intent.putExtra("waker_pkgname", context.getPackageName());
                        context.startService(intent);
                        return;
                    } catch (Throwable th) {
                        return;
                    }
                }
            }
        }
    }

    private static void checkNotNull(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException("param " + str + " is not nullable");
        }
    }

    protected static void clearExtras(Context context) {
        Editor edit = context.getSharedPreferences(PREF_EXTRA, 0).edit();
        edit.clear();
        edit.commit();
    }

    public static void clearLocalNotificationType(Context context) {
        z.a(context).f();
    }

    public static void clearNotification(Context context) {
        z.a(context).a(-1);
    }

    public static void clearNotification(Context context, int i) {
        z.a(context).a(i);
    }

    public static void clearNotification(Context context, String str, String str2) {
        z.a(context).a(str, str2);
    }

    public static void disablePush(Context context) {
        z.a(context).a(true);
    }

    public static void enablePush(Context context) {
        z.a(context).a(false);
    }

    protected static synchronized String generatePacketID() {
        String str;
        synchronized (MiPushClient.class) {
            str = d.a(4) + sCurMsgId;
            sCurMsgId++;
        }
        return str;
    }

    protected static String getAcceptTime(Context context) {
        return context.getSharedPreferences(PREF_EXTRA, 0).getString(Constants.EXTRA_KEY_ACCEPT_TIME, "00:00-23:59");
    }

    public static List<String> getAllAlias(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences(PREF_EXTRA, 0).getAll().keySet()) {
            if (str.startsWith("alias_")) {
                arrayList.add(str.substring("alias_".length()));
            }
        }
        return arrayList;
    }

    public static List<String> getAllTopic(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences(PREF_EXTRA, 0).getAll().keySet()) {
            if (str.startsWith("topic_") && !str.contains("**ALL**")) {
                arrayList.add(str.substring("topic_".length()));
            }
        }
        return arrayList;
    }

    public static List<String> getAllUserAccount(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences(PREF_EXTRA, 0).getAll().keySet()) {
            if (str.startsWith("account_")) {
                arrayList.add(str.substring("account_".length()));
            }
        }
        return arrayList;
    }

    private static boolean getDefaultSwitch() {
        return g.b();
    }

    public static String getRegId(Context context) {
        if (c.a(context).i()) {
            return c.a(context).e();
        }
        return null;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    @java.lang.Deprecated
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void initialize(android.content.Context r6, java.lang.String r7, java.lang.String r8, com.xiaomi.mipush.sdk.MiPushClient.MiPushClientCallback r9) {
        /*
            r0 = 1
            r1 = 0
            java.lang.String r2 = "context"
            checkNotNull(r6, r2)
            java.lang.String r2 = "appID"
            checkNotNull(r7, r2)
            java.lang.String r2 = "appToken"
            checkNotNull(r8, r2)
            android.content.Context r2 = r6.getApplicationContext()     // Catch:{ Throwable -> 0x01e0 }
            sContext = r2     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            if (r2 != 0) goto L_0x001d
            sContext = r6     // Catch:{ Throwable -> 0x01e0 }
        L_0x001d:
            if (r9 == 0) goto L_0x0022
            com.xiaomi.mipush.sdk.PushMessageHandler.a(r9)     // Catch:{ Throwable -> 0x01e0 }
        L_0x0022:
            boolean r2 = com.xiaomi.channel.commonutils.android.j.b(r6)     // Catch:{ Throwable -> 0x01e0 }
            if (r2 == 0) goto L_0x002b
            com.xiaomi.mipush.sdk.i.a(r6)     // Catch:{ Throwable -> 0x01e0 }
        L_0x002b:
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r2 = com.xiaomi.mipush.sdk.c.a(r2)     // Catch:{ Throwable -> 0x01e0 }
            int r2 = r2.l()     // Catch:{ Throwable -> 0x01e0 }
            int r3 = com.xiaomi.mipush.sdk.Constants.a()     // Catch:{ Throwable -> 0x01e0 }
            if (r2 == r3) goto L_0x003c
            r1 = r0
        L_0x003c:
            if (r1 != 0) goto L_0x0053
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            boolean r2 = shouldSendRegRequest(r2)     // Catch:{ Throwable -> 0x01e0 }
            if (r2 != 0) goto L_0x0053
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r6)     // Catch:{ Throwable -> 0x01e0 }
            r0.a()     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = "Could not send  register message within 5s repeatly ."
            com.xiaomi.channel.commonutils.logger.b.a(r0)     // Catch:{ Throwable -> 0x01e0 }
        L_0x0052:
            return
        L_0x0053:
            if (r1 != 0) goto L_0x0207
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r2 = com.xiaomi.mipush.sdk.c.a(r2)     // Catch:{ Throwable -> 0x01e0 }
            boolean r2 = r2.a(r7, r8)     // Catch:{ Throwable -> 0x01e0 }
            if (r2 == 0) goto L_0x0207
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r2 = com.xiaomi.mipush.sdk.c.a(r2)     // Catch:{ Throwable -> 0x01e0 }
            boolean r2 = r2.m()     // Catch:{ Throwable -> 0x01e0 }
            if (r2 != 0) goto L_0x0207
            int r1 = com.xiaomi.mipush.sdk.PushMessageHelper.getPushMode(r6)     // Catch:{ Throwable -> 0x01e0 }
            if (r0 != r1) goto L_0x01e6
            java.lang.String r0 = "callback"
            checkNotNull(r9, r0)     // Catch:{ Throwable -> 0x01e0 }
            r0 = 0
            r2 = 0
            com.xiaomi.mipush.sdk.c r3 = com.xiaomi.mipush.sdk.c.a(r6)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = r3.e()     // Catch:{ Throwable -> 0x01e0 }
            r9.onInitializeResult(r0, r2, r3)     // Catch:{ Throwable -> 0x01e0 }
        L_0x0086:
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r6)     // Catch:{ Throwable -> 0x01e0 }
            r0.a()     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r0 = com.xiaomi.mipush.sdk.c.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            boolean r0 = r0.a()     // Catch:{ Throwable -> 0x01e0 }
            if (r0 == 0) goto L_0x0121
            com.xiaomi.xmpush.thrift.af r0 = new com.xiaomi.xmpush.thrift.af     // Catch:{ Throwable -> 0x01e0 }
            r0.<init>()     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r1 = com.xiaomi.mipush.sdk.c.a(r6)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r1 = r1.c()     // Catch:{ Throwable -> 0x01e0 }
            r0.b(r1)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r1 = "client_info_update"
            r0.c(r1)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r1 = generatePacketID()     // Catch:{ Throwable -> 0x01e0 }
            r0.a(r1)     // Catch:{ Throwable -> 0x01e0 }
            java.util.HashMap r1 = new java.util.HashMap     // Catch:{ Throwable -> 0x01e0 }
            r1.<init>()     // Catch:{ Throwable -> 0x01e0 }
            r0.h = r1     // Catch:{ Throwable -> 0x01e0 }
            java.util.Map<java.lang.String, java.lang.String> r1 = r0.h     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r2 = "app_version"
            android.content.Context r3 = sContext     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r4 = sContext     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r4 = r4.getPackageName()     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = com.xiaomi.channel.commonutils.android.b.a(r3, r4)     // Catch:{ Throwable -> 0x01e0 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x01e0 }
            java.util.Map<java.lang.String, java.lang.String> r1 = r0.h     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r2 = "app_version_code"
            android.content.Context r3 = sContext     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r4 = sContext     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r4 = r4.getPackageName()     // Catch:{ Throwable -> 0x01e0 }
            int r3 = com.xiaomi.channel.commonutils.android.b.b(r3, r4)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = java.lang.Integer.toString(r3)     // Catch:{ Throwable -> 0x01e0 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x01e0 }
            java.util.Map<java.lang.String, java.lang.String> r1 = r0.h     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r2 = "push_sdk_vn"
            java.lang.String r3 = "3_4_5"
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x01e0 }
            java.util.Map<java.lang.String, java.lang.String> r1 = r0.h     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r2 = "push_sdk_vc"
            r3 = 30405(0x76c5, float:4.2606E-41)
            java.lang.String r3 = java.lang.Integer.toString(r3)     // Catch:{ Throwable -> 0x01e0 }
            r1.put(r2, r3)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r1 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r1 = com.xiaomi.mipush.sdk.c.a(r1)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r1 = r1.g()     // Catch:{ Throwable -> 0x01e0 }
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch:{ Throwable -> 0x01e0 }
            if (r2 != 0) goto L_0x0113
            java.util.Map<java.lang.String, java.lang.String> r2 = r0.h     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = "deviceid"
            r2.put(r3, r1)     // Catch:{ Throwable -> 0x01e0 }
        L_0x0113:
            com.xiaomi.mipush.sdk.z r1 = com.xiaomi.mipush.sdk.z.a(r6)     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.xmpush.thrift.a r2 = com.xiaomi.xmpush.thrift.a.Notification     // Catch:{ Throwable -> 0x01e0 }
            r3 = 0
            r4 = 0
            r1.a(r0, r2, r3, r4)     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.a.a(r6)     // Catch:{ Throwable -> 0x01e0 }
        L_0x0121:
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r1 = "update_devId"
            r2 = 0
            boolean r0 = com.xiaomi.channel.commonutils.android.h.a(r0, r1, r2)     // Catch:{ Throwable -> 0x01e0 }
            if (r0 != 0) goto L_0x0137
            updateIMEI()     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r1 = "update_devId"
            r2 = 1
            com.xiaomi.channel.commonutils.android.h.b(r0, r1, r2)     // Catch:{ Throwable -> 0x01e0 }
        L_0x0137:
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            boolean r0 = shouldUseMIUIPush(r0)     // Catch:{ Throwable -> 0x01e0 }
            if (r0 == 0) goto L_0x017c
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            boolean r0 = shouldPullNotification(r0)     // Catch:{ Throwable -> 0x01e0 }
            if (r0 == 0) goto L_0x017c
            com.xiaomi.xmpush.thrift.af r1 = new com.xiaomi.xmpush.thrift.af     // Catch:{ Throwable -> 0x01e0 }
            r1.<init>()     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r0 = com.xiaomi.mipush.sdk.c.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = r0.c()     // Catch:{ Throwable -> 0x01e0 }
            r1.b(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = "pull"
            r1.c(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = generatePacketID()     // Catch:{ Throwable -> 0x01e0 }
            r1.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            r0 = 0
            r1.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.xmpush.thrift.a r2 = com.xiaomi.xmpush.thrift.a.Notification     // Catch:{ Throwable -> 0x01e0 }
            r3 = 0
            r4 = 0
            r5 = 0
            r0.a(r1, r2, r3, r4, r5)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            addPullNotificationTime(r0)     // Catch:{ Throwable -> 0x01e0 }
        L_0x017c:
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            addRegRequestTime(r0)     // Catch:{ Throwable -> 0x01e0 }
            scheduleOcVersionCheckJob()     // Catch:{ Throwable -> 0x01e0 }
            scheduleGeoFenceLocUploadJobs()     // Catch:{ Throwable -> 0x01e0 }
            loadPlugin()     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.ad.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.af r0 = mSyncMIIDHelper     // Catch:{ Exception -> 0x02fd }
            if (r0 != 0) goto L_0x019c
            com.xiaomi.mipush.sdk.af r0 = new com.xiaomi.mipush.sdk.af     // Catch:{ Exception -> 0x02fd }
            android.content.Context r1 = sContext     // Catch:{ Exception -> 0x02fd }
            r0.<init>(r1)     // Catch:{ Exception -> 0x02fd }
            mSyncMIIDHelper = r0     // Catch:{ Exception -> 0x02fd }
        L_0x019c:
            com.xiaomi.mipush.sdk.af r0 = mSyncMIIDHelper     // Catch:{ Exception -> 0x02fd }
            android.content.Context r1 = sContext     // Catch:{ Exception -> 0x02fd }
            r0.a(r1)     // Catch:{ Exception -> 0x02fd }
        L_0x01a3:
            java.lang.String r0 = "disable_syncing"
            android.content.Context r1 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.u r1 = com.xiaomi.mipush.sdk.u.a(r1)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r1 = r1.a()     // Catch:{ Throwable -> 0x01e0 }
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x01e0 }
            if (r0 == 0) goto L_0x01ba
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            disablePush(r0)     // Catch:{ Throwable -> 0x01e0 }
        L_0x01ba:
            java.lang.String r0 = "enable_syncing"
            android.content.Context r1 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.u r1 = com.xiaomi.mipush.sdk.u.a(r1)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r1 = r1.a()     // Catch:{ Throwable -> 0x01e0 }
            boolean r0 = r0.equals(r1)     // Catch:{ Throwable -> 0x01e0 }
            if (r0 == 0) goto L_0x01d1
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            enablePush(r0)     // Catch:{ Throwable -> 0x01e0 }
        L_0x01d1:
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            boolean r0 = com.xiaomi.mipush.sdk.h.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            if (r0 == 0) goto L_0x0052
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.h.b(r0)     // Catch:{ Throwable -> 0x01e0 }
            goto L_0x0052
        L_0x01e0:
            r0 = move-exception
            com.xiaomi.channel.commonutils.logger.b.a(r0)
            goto L_0x0052
        L_0x01e6:
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch:{ Throwable -> 0x01e0 }
            r1.<init>()     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r0 = com.xiaomi.mipush.sdk.c.a(r6)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = r0.e()     // Catch:{ Throwable -> 0x01e0 }
            r1.add(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = "register"
            r2 = 0
            r4 = 0
            r5 = 0
            com.xiaomi.mipush.sdk.MiPushCommandMessage r0 = com.xiaomi.mipush.sdk.PushMessageHelper.generateCommandMessage(r0, r1, r2, r4, r5)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r1 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.PushMessageHelper.sendCommandMessageBroadcast(r1, r0)     // Catch:{ Throwable -> 0x01e0 }
            goto L_0x0086
        L_0x0207:
            r0 = 6
            java.lang.String r0 = com.xiaomi.channel.commonutils.string.d.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r2 = com.xiaomi.mipush.sdk.c.a(r2)     // Catch:{ Throwable -> 0x01e0 }
            r2.h()     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r2 = com.xiaomi.mipush.sdk.c.a(r2)     // Catch:{ Throwable -> 0x01e0 }
            int r3 = com.xiaomi.mipush.sdk.Constants.a()     // Catch:{ Throwable -> 0x01e0 }
            r2.a(r3)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.c r2 = com.xiaomi.mipush.sdk.c.a(r2)     // Catch:{ Throwable -> 0x01e0 }
            r2.a(r7, r8, r0)     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.MiTinyDataClient$a r2 = com.xiaomi.mipush.sdk.MiTinyDataClient.a.a()     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = "com.xiaomi.xmpushsdk.tinydataPending.appId"
            r2.b(r3)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r2 = sContext     // Catch:{ Throwable -> 0x01e0 }
            clearExtras(r2)     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.xmpush.thrift.ag r2 = new com.xiaomi.xmpush.thrift.ag     // Catch:{ Throwable -> 0x01e0 }
            r2.<init>()     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = generatePacketID()     // Catch:{ Throwable -> 0x01e0 }
            r2.a(r3)     // Catch:{ Throwable -> 0x01e0 }
            r2.b(r7)     // Catch:{ Throwable -> 0x01e0 }
            r2.e(r8)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = r6.getPackageName()     // Catch:{ Throwable -> 0x01e0 }
            r2.d(r3)     // Catch:{ Throwable -> 0x01e0 }
            r2.f(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = r6.getPackageName()     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = com.xiaomi.channel.commonutils.android.b.a(r6, r0)     // Catch:{ Throwable -> 0x01e0 }
            r2.c(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = r6.getPackageName()     // Catch:{ Throwable -> 0x01e0 }
            int r0 = com.xiaomi.channel.commonutils.android.b.b(r6, r0)     // Catch:{ Throwable -> 0x01e0 }
            r2.b(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = "3_4_5"
            r2.g(r0)     // Catch:{ Throwable -> 0x01e0 }
            r0 = 30405(0x76c5, float:4.2606E-41)
            r2.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = com.xiaomi.channel.commonutils.android.e.b(r0)     // Catch:{ Throwable -> 0x01e0 }
            r2.h(r0)     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.xmpush.thrift.u r0 = com.xiaomi.xmpush.thrift.u.Init     // Catch:{ Throwable -> 0x01e0 }
            r2.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = com.xiaomi.channel.commonutils.android.e.d(r0)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r3 = sContext     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = com.xiaomi.channel.commonutils.android.e.f(r3)     // Catch:{ Throwable -> 0x01e0 }
            boolean r4 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x01e0 }
            if (r4 != 0) goto L_0x02df
            boolean r4 = com.xiaomi.channel.commonutils.android.g.b()     // Catch:{ Throwable -> 0x01e0 }
            if (r4 == 0) goto L_0x02bb
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch:{ Throwable -> 0x01e0 }
            if (r4 != 0) goto L_0x02b8
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01e0 }
            r4.<init>()     // Catch:{ Throwable -> 0x01e0 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r4 = ","
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x01e0 }
        L_0x02b8:
            r2.i(r0)     // Catch:{ Throwable -> 0x01e0 }
        L_0x02bb:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01e0 }
            r3.<init>()     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = com.xiaomi.channel.commonutils.string.d.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = ","
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ Throwable -> 0x01e0 }
            android.content.Context r3 = sContext     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r3 = com.xiaomi.channel.commonutils.android.e.g(r3)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ Throwable -> 0x01e0 }
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x01e0 }
            r2.k(r0)     // Catch:{ Throwable -> 0x01e0 }
        L_0x02df:
            java.lang.String r0 = com.xiaomi.channel.commonutils.android.e.a()     // Catch:{ Throwable -> 0x01e0 }
            r2.j(r0)     // Catch:{ Throwable -> 0x01e0 }
            int r0 = com.xiaomi.channel.commonutils.android.e.b()     // Catch:{ Throwable -> 0x01e0 }
            if (r0 < 0) goto L_0x02ef
            r2.c(r0)     // Catch:{ Throwable -> 0x01e0 }
        L_0x02ef:
            android.content.Context r0 = sContext     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.z r0 = com.xiaomi.mipush.sdk.z.a(r0)     // Catch:{ Throwable -> 0x01e0 }
            r0.a(r2, r1)     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.mipush.sdk.a.a(r6)     // Catch:{ Throwable -> 0x01e0 }
            goto L_0x017c
        L_0x02fd:
            r0 = move-exception
            java.lang.String r0 = r0.toString()     // Catch:{ Throwable -> 0x01e0 }
            com.xiaomi.channel.commonutils.logger.b.d(r0)     // Catch:{ Throwable -> 0x01e0 }
            goto L_0x01a3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.MiPushClient.initialize(android.content.Context, java.lang.String, java.lang.String, com.xiaomi.mipush.sdk.MiPushClient$MiPushClientCallback):void");
    }

    private static void loadPlugin() {
        if (aj.a(sContext).a(f.DataCollectionSwitch.a(), getDefaultSwitch())) {
            com.xiaomi.channel.commonutils.misc.g.a(sContext).a((Runnable) new m(), 10);
        }
    }

    public static void pausePush(Context context, String str) {
        setAcceptTime(context, 0, 0, 0, 0, str);
    }

    static void reInitialize(Context context, u uVar) {
        if (c.a(context).i()) {
            String a = d.a(6);
            String c = c.a(context).c();
            String d = c.a(context).d();
            c.a(context).h();
            c.a(context).a(c, d, a);
            ag agVar = new ag();
            agVar.a(generatePacketID());
            agVar.b(c);
            agVar.e(d);
            agVar.f(a);
            agVar.d(context.getPackageName());
            agVar.c(b.a(context, context.getPackageName()));
            agVar.a(uVar);
            z.a(context).a(agVar, false);
        }
    }

    private static void registerNetworkReceiver(Context context) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addCategory("android.intent.category.DEFAULT");
            context.getApplicationContext().registerReceiver(new NetworkStatusReceiver(null), intentFilter);
        } catch (Throwable th) {
            com.xiaomi.channel.commonutils.logger.b.a(th);
        }
    }

    public static void registerPush(Context context, String str, String str2) {
        if (!NetworkStatusReceiver.a()) {
            registerNetworkReceiver(context);
        }
        a.a();
        new Thread(new l(context, str, str2)).start();
    }

    static synchronized void removeAcceptTime(Context context) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences(PREF_EXTRA, 0).edit().remove(Constants.EXTRA_KEY_ACCEPT_TIME).commit();
        }
    }

    static synchronized void removeAccount(Context context, String str) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences(PREF_EXTRA, 0).edit().remove("account_" + str).commit();
        }
    }

    static synchronized void removeAlias(Context context, String str) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences(PREF_EXTRA, 0).edit().remove("alias_" + str).commit();
        }
    }

    static synchronized void removeAllAccounts(Context context) {
        synchronized (MiPushClient.class) {
            for (String removeAccount : getAllUserAccount(context)) {
                removeAccount(context, removeAccount);
            }
        }
    }

    static synchronized void removeAllAliases(Context context) {
        synchronized (MiPushClient.class) {
            for (String removeAlias : getAllAlias(context)) {
                removeAlias(context, removeAlias);
            }
        }
    }

    static synchronized void removeAllTopics(Context context) {
        synchronized (MiPushClient.class) {
            for (String removeTopic : getAllTopic(context)) {
                removeTopic(context, removeTopic);
            }
        }
    }

    static synchronized void removeTopic(Context context, String str) {
        synchronized (MiPushClient.class) {
            context.getSharedPreferences(PREF_EXTRA, 0).edit().remove("topic_" + str).commit();
        }
    }

    static void reportIgnoreRegMessageClicked(Context context, String str, s sVar, String str2, String str3) {
        af afVar = new af();
        if (TextUtils.isEmpty(str3)) {
            com.xiaomi.channel.commonutils.logger.b.d("do not report clicked message");
            return;
        }
        afVar.b(str3);
        afVar.c("bar:click");
        afVar.a(str);
        afVar.a(false);
        z.a(context).a(afVar, a.Notification, false, true, sVar, true, str2, str3);
    }

    public static void reportMessageClicked(Context context, MiPushMessage miPushMessage) {
        s sVar = new s();
        sVar.a(miPushMessage.getMessageId());
        sVar.b(miPushMessage.getTopic());
        sVar.d(miPushMessage.getDescription());
        sVar.c(miPushMessage.getTitle());
        sVar.c(miPushMessage.getNotifyId());
        sVar.a(miPushMessage.getNotifyType());
        sVar.b(miPushMessage.getPassThrough());
        sVar.a(miPushMessage.getExtra());
        reportMessageClicked(context, miPushMessage.getMessageId(), sVar, null);
    }

    @Deprecated
    public static void reportMessageClicked(Context context, String str) {
        reportMessageClicked(context, str, null, null);
    }

    static void reportMessageClicked(Context context, String str, s sVar, String str2) {
        af afVar = new af();
        if (!TextUtils.isEmpty(str2)) {
            afVar.b(str2);
        } else if (c.a(context).b()) {
            afVar.b(c.a(context).c());
        } else {
            com.xiaomi.channel.commonutils.logger.b.d("do not report clicked message");
            return;
        }
        afVar.c("bar:click");
        afVar.a(str);
        afVar.a(false);
        z.a(context).a(afVar, a.Notification, false, sVar);
    }

    public static void resumePush(Context context, String str) {
        setAcceptTime(context, 0, 0, 23, 59, str);
    }

    private static void scheduleGeoFenceLocUploadJobs() {
        if (h.e(sContext) && !TextUtils.equals("com.xiaomi.xmsf", sContext.getPackageName()) && aj.a(sContext).a(f.UploadGeoAppLocSwitch.a(), true) && !j.e()) {
            e.a(sContext, true);
            int max = Math.max(60, aj.a(sContext).a(f.UploadWIFIGeoLocFrequency.a(), (int) Error.UPLOADER_OPEN_SESSION_FAILED));
            com.xiaomi.channel.commonutils.misc.g.a(sContext).a(new e(sContext, max), max, max);
        }
    }

    private static void scheduleOcVersionCheckJob() {
        com.xiaomi.channel.commonutils.misc.g.a(sContext).a(new t(sContext), aj.a(sContext).a(f.OcVersionCheckFrequency.a(), 86400), 5);
    }

    public static void setAcceptTime(Context context, int i, int i2, int i3, int i4, String str) {
        if (i < 0 || i >= 24 || i3 < 0 || i3 >= 24 || i2 < 0 || i2 >= 60 || i4 < 0 || i4 >= 60) {
            throw new IllegalArgumentException("the input parameter is not valid.");
        }
        long rawOffset = (long) (((TimeZone.getTimeZone("GMT+08").getRawOffset() - TimeZone.getDefault().getRawOffset()) / 1000) / 60);
        long j = ((((long) ((i * 60) + i2)) + rawOffset) + 1440) % 1440;
        long j2 = ((rawOffset + ((long) ((i3 * 60) + i4))) + 1440) % 1440;
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.format("%1$02d:%2$02d", new Object[]{Long.valueOf(j / 60), Long.valueOf(j % 60)}));
        arrayList.add(String.format("%1$02d:%2$02d", new Object[]{Long.valueOf(j2 / 60), Long.valueOf(j2 % 60)}));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(String.format("%1$02d:%2$02d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
        arrayList2.add(String.format("%1$02d:%2$02d", new Object[]{Integer.valueOf(i3), Integer.valueOf(i4)}));
        if (!acceptTimeSet(context, (String) arrayList.get(0), (String) arrayList.get(1))) {
            setCommand(context, COMMAND_SET_ACCEPT_TIME, arrayList, str);
        } else if (1 == PushMessageHelper.getPushMode(context)) {
            PushMessageHandler.a(context, str, COMMAND_SET_ACCEPT_TIME, 0, null, arrayList2);
        } else {
            PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(COMMAND_SET_ACCEPT_TIME, arrayList2, 0, null, null));
        }
    }

    public static void setAlias(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            setCommand(context, COMMAND_SET_ALIAS, str, str2);
        }
    }

    protected static void setCommand(Context context, String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
        }
        if (!COMMAND_SET_ALIAS.equalsIgnoreCase(str) || Math.abs(System.currentTimeMillis() - aliasSetTime(context, str2)) >= OpenStreetMapTileProviderConstants.ONE_HOUR) {
            if (COMMAND_UNSET_ALIAS.equalsIgnoreCase(str) && aliasSetTime(context, str2) < 0) {
                com.xiaomi.channel.commonutils.logger.b.a("Don't cancel alias for " + arrayList + " is unseted");
            } else if (!COMMAND_SET_ACCOUNT.equalsIgnoreCase(str) || Math.abs(System.currentTimeMillis() - accountSetTime(context, str2)) >= OpenStreetMapTileProviderConstants.ONE_HOUR) {
                if (!COMMAND_UNSET_ACCOUNT.equalsIgnoreCase(str) || accountSetTime(context, str2) >= 0) {
                    setCommand(context, str, arrayList, str3);
                } else {
                    com.xiaomi.channel.commonutils.logger.b.a("Don't cancel account for " + arrayList + " is unseted");
                }
            } else if (1 == PushMessageHelper.getPushMode(context)) {
                PushMessageHandler.a(context, str3, str, 0, null, arrayList);
            } else {
                PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(COMMAND_SET_ACCOUNT, arrayList, 0, null, null));
            }
        } else if (1 == PushMessageHelper.getPushMode(context)) {
            PushMessageHandler.a(context, str3, str, 0, null, arrayList);
        } else {
            PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(COMMAND_SET_ALIAS, arrayList, 0, null, null));
        }
    }

    protected static void setCommand(Context context, String str, ArrayList<String> arrayList, String str2) {
        if (!TextUtils.isEmpty(c.a(context).c())) {
            aa aaVar = new aa();
            aaVar.a(generatePacketID());
            aaVar.b(c.a(context).c());
            aaVar.c(str);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                aaVar.d((String) it.next());
            }
            aaVar.f(str2);
            aaVar.e(context.getPackageName());
            z.a(context).a(aaVar, a.Command, (s) null);
        }
    }

    public static void setLocalNotificationType(Context context, int i) {
        z.a(context).b(i & -1);
    }

    public static void setUserAccount(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            setCommand(context, COMMAND_SET_ACCOUNT, str, str2);
        }
    }

    private static boolean shouldPullNotification(Context context) {
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences(PREF_EXTRA, 0).getLong("last_pull_notification", -1)) > 300000;
    }

    private static boolean shouldSendRegRequest(Context context) {
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences(PREF_EXTRA, 0).getLong("last_reg_request", -1)) > 5000;
    }

    public static boolean shouldUseMIUIPush(Context context) {
        return z.a(context).c();
    }

    public static void subscribe(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(c.a(context).c()) && !TextUtils.isEmpty(str)) {
            if (Math.abs(System.currentTimeMillis() - topicSubscribedTime(context, str)) > 86400000) {
                al alVar = new al();
                alVar.a(generatePacketID());
                alVar.b(c.a(context).c());
                alVar.c(str);
                alVar.d(context.getPackageName());
                alVar.e(str2);
                z.a(context).a(alVar, a.Subscription, (s) null);
            } else if (1 == PushMessageHelper.getPushMode(context)) {
                PushMessageHandler.a(context, str2, 0, null, str);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(COMMAND_SUBSCRIBE_TOPIC, arrayList, 0, null, null));
            }
        }
    }

    public static long topicSubscribedTime(Context context, String str) {
        return context.getSharedPreferences(PREF_EXTRA, 0).getLong("topic_" + str, -1);
    }

    public static void unregisterPush(Context context) {
        if (c.a(context).b()) {
            an anVar = new an();
            anVar.a(generatePacketID());
            anVar.b(c.a(context).c());
            anVar.c(c.a(context).e());
            anVar.e(c.a(context).d());
            anVar.d(context.getPackageName());
            z.a(context).a(anVar);
            PushMessageHandler.a();
            c.a(context).j();
            clearExtras(context);
            clearLocalNotificationType(context);
            clearNotification(context);
            if (mSyncMIIDHelper != null) {
                m.a(context).b(mSyncMIIDHelper);
            }
        }
    }

    public static void unsetAlias(Context context, String str, String str2) {
        setCommand(context, COMMAND_UNSET_ALIAS, str, str2);
    }

    public static void unsetUserAccount(Context context, String str, String str2) {
        setCommand(context, COMMAND_UNSET_ACCOUNT, str, str2);
    }

    public static void unsubscribe(Context context, String str, String str2) {
        if (c.a(context).b()) {
            if (topicSubscribedTime(context, str) < 0) {
                com.xiaomi.channel.commonutils.logger.b.a("Don't cancel subscribe for " + str + " is unsubscribed");
                return;
            }
            ap apVar = new ap();
            apVar.a(generatePacketID());
            apVar.b(c.a(context).c());
            apVar.c(str);
            apVar.d(context.getPackageName());
            apVar.e(str2);
            z.a(context).a(apVar, a.UnSubscription, (s) null);
        }
    }

    private static void updateIMEI() {
        new Thread(new n()).start();
    }
}

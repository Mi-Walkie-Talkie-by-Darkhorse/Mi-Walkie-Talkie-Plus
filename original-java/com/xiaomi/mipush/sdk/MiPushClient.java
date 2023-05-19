package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.umeng.analytics.pro.UContent;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.manager.C5880a;
import com.xiaomi.clientreport.manager.ClientReportClient;
import com.xiaomi.mipush.sdk.MiTinyDataClient;
import com.xiaomi.push.AbstractC6307m;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6000az;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6074dc;
import com.xiaomi.push.C6087dm;
import com.xiaomi.push.C6088dn;
import com.xiaomi.push.C6125ek;
import com.xiaomi.push.C6126el;
import com.xiaomi.push.C6127em;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6241hz;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6258ip;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6264iv;
import com.xiaomi.push.C6268iz;
import com.xiaomi.push.C6274jb;
import com.xiaomi.push.C6276jd;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.C6308n;
import com.xiaomi.push.C6314s;
import com.xiaomi.push.C6469u;
import com.xiaomi.push.EnumC6157fl;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.EnumC6252ij;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.C6377ba;
import com.xiaomi.push.service.receivers.NetworkStatusReceiver;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes2.dex */
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
    private static Context sContext;
    private static long sCurMsgId = System.currentTimeMillis();

    /* loaded from: classes2.dex */
    public static class CodeResult {
        private long resultCode = -1;

        public long getResultCode() {
            return this.resultCode;
        }

        protected void setResultCode(long j) {
            this.resultCode = j;
        }
    }

    /* loaded from: classes2.dex */
    public interface ICallbackResult<R> {
        void onResult(R r);
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public static abstract class MiPushClientCallback {
        private String category;

        /* JADX INFO: Access modifiers changed from: protected */
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

        protected void setCategory(String str) {
            this.category = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class TokenResult {
        private String token = null;
        private long resultCode = -1;

        public long getResultCode() {
            return this.resultCode;
        }

        public String getToken() {
            return this.token;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void setResultCode(long j) {
            this.resultCode = j;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void setToken(String str) {
            this.token = str;
        }
    }

    /* loaded from: classes2.dex */
    public interface UPSRegisterCallBack extends ICallbackResult<TokenResult> {
    }

    /* loaded from: classes2.dex */
    public interface UPSTurnCallBack extends ICallbackResult<CodeResult> {
    }

    /* loaded from: classes2.dex */
    public interface UPSUnRegisterCallBack extends ICallbackResult<TokenResult> {
    }

    private static boolean acceptTimeSet(Context context, String str, String str2) {
        String acceptTime = getAcceptTime(context);
        return TextUtils.equals(acceptTime, str + Constants.ACCEPT_TIME_SEPARATOR_SP + str2);
    }

    public static long accountSetTime(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        return sharedPreferences.getLong("account_" + str, -1L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void addAcceptTime(Context context, String str, String str2) {
        synchronized (MiPushClient.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putString(Constants.EXTRA_KEY_ACCEPT_TIME, str + Constants.ACCEPT_TIME_SEPARATOR_SP + str2);
            C6314s.m1816a(edit);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void addAccount(Context context, String str) {
        synchronized (MiPushClient.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putLong("account_" + str, System.currentTimeMillis()).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void addAlias(Context context, String str) {
        synchronized (MiPushClient.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putLong("alias_" + str, System.currentTimeMillis()).commit();
        }
    }

    private static void addPullNotificationTime(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        edit.putLong("last_pull_notification", System.currentTimeMillis());
        C6314s.m1816a(edit);
    }

    private static void addRegRequestTime(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        edit.putLong("last_reg_request", System.currentTimeMillis());
        C6314s.m1816a(edit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void addTopic(Context context, String str) {
        synchronized (MiPushClient.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.putLong("topic_" + str, System.currentTimeMillis()).commit();
        }
    }

    public static long aliasSetTime(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        return sharedPreferences.getLong("alias_" + str, -1L);
    }

    public static void awakeApps(final Context context, final String[] strArr) {
        C5978ak.m3784a(context).m3775a(new Runnable() { // from class: com.xiaomi.mipush.sdk.MiPushClient.4
            @Override // java.lang.Runnable
            public void run() {
                String[] strArr2;
                PackageInfo packageInfo;
                try {
                    for (String str : strArr) {
                        if (!TextUtils.isEmpty(str) && (packageInfo = context.getPackageManager().getPackageInfo(str, 4)) != null) {
                            MiPushClient.awakePushServiceByPackageInfo(context, packageInfo);
                        }
                    }
                } catch (Throwable th) {
                    AbstractC5876b.m4143a(th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void awakePushServiceByPackageInfo(Context context, PackageInfo packageInfo) {
        ServiceInfo[] serviceInfoArr = packageInfo.services;
        if (serviceInfoArr != null) {
            for (ServiceInfo serviceInfo : serviceInfoArr) {
                if (serviceInfo.exported && serviceInfo.enabled && "com.xiaomi.mipush.sdk.PushMessageHandler".equals(serviceInfo.name) && !context.getPackageName().equals(serviceInfo.packageName)) {
                    try {
                        Thread.sleep(((long) ((Math.random() * 2.0d) + 1.0d)) * 1000);
                        Intent intent = new Intent();
                        intent.setClassName(serviceInfo.packageName, serviceInfo.name);
                        intent.setAction("com.xiaomi.mipush.sdk.WAKEUP");
                        intent.putExtra("waker_pkgname", context.getPackageName());
                        PushMessageHandler.m4046a(context, intent);
                        return;
                    } catch (Throwable unused) {
                        return;
                    }
                }
            }
        }
    }

    private static void checkNotNull(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException("param " + str + " is not nullable");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void clearExtras(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        edit.clear();
        edit.commit();
    }

    private static void clearExtrasForInitialize(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        Iterator<String> it2 = getAllAlias(context).iterator();
        while (it2.hasNext()) {
            edit.remove("alias_" + it2.next());
        }
        Iterator<String> it3 = getAllUserAccount(context).iterator();
        while (it3.hasNext()) {
            edit.remove("account_" + it3.next());
        }
        Iterator<String> it4 = getAllTopic(context).iterator();
        while (it4.hasNext()) {
            edit.remove("topic_" + it4.next());
        }
        edit.remove(Constants.EXTRA_KEY_ACCEPT_TIME);
        edit.commit();
    }

    public static void clearLocalNotificationType(Context context) {
        C5928ao.m3984a(context).m3940f();
    }

    public static void clearNotification(Context context) {
        C5928ao.m3984a(context).m3988a(-1);
    }

    public static void clearNotification(Context context, int i) {
        C5928ao.m3984a(context).m3988a(i);
    }

    public static void clearNotification(Context context, String str, String str2) {
        C5928ao.m3984a(context).m3960a(str, str2);
    }

    public static void disablePush(Context context) {
        C5928ao.m3984a(context).m3959a(true);
    }

    public static void enablePush(Context context) {
        C5928ao.m3984a(context).m3959a(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getAcceptTime(Context context) {
        return context.getSharedPreferences("mipush_extra", 0).getString(Constants.EXTRA_KEY_ACCEPT_TIME, "00:00-23:59");
    }

    public static List<String> getAllAlias(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (str.startsWith("alias_")) {
                arrayList.add(str.substring(6));
            }
        }
        return arrayList;
    }

    public static List<String> getAllTopic(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (str.startsWith("topic_") && !str.contains("**ALL**")) {
                arrayList.add(str.substring(6));
            }
        }
        return arrayList;
    }

    public static List<String> getAllUserAccount(Context context) {
        ArrayList arrayList = new ArrayList();
        for (String str : context.getSharedPreferences("mipush_extra", 0).getAll().keySet()) {
            if (str.startsWith("account_")) {
                arrayList.add(str.substring(8));
            }
        }
        return arrayList;
    }

    public static String getAppRegion(Context context) {
        if (C5938b.m3923a(context).m3908c()) {
            return C5938b.m3923a(context).m3903f();
        }
        return null;
    }

    private static boolean getDefaultSwitch() {
        return C6306l.m1844b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean getOpenFCMPush(Context context) {
        checkNotNull(context, UContent.f19653R);
        return C5943f.m3885a(context).m3876b(EnumC5942e.ASSEMBLE_PUSH_FCM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean getOpenHmsPush(Context context) {
        checkNotNull(context, UContent.f19653R);
        return C5943f.m3885a(context).m3876b(EnumC5942e.ASSEMBLE_PUSH_HUAWEI);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean getOpenOPPOPush(Context context) {
        checkNotNull(context, UContent.f19653R);
        return C5943f.m3885a(context).m3876b(EnumC5942e.ASSEMBLE_PUSH_COS);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean getOpenVIVOPush(Context context) {
        return C5943f.m3885a(context).m3876b(EnumC5942e.ASSEMBLE_PUSH_FTOS);
    }

    public static String getRegId(Context context) {
        if (C5938b.m3923a(context).m3908c()) {
            return C5938b.m3923a(context).m3910c();
        }
        return null;
    }

    private static void initEventPerfLogic(final Context context) {
        C6127em.m3086a(new C6127em.InterfaceC6128a() { // from class: com.xiaomi.mipush.sdk.MiPushClient.5
            @Override // com.xiaomi.push.C6127em.InterfaceC6128a
            public void uploader(Context context2, C6241hz c6241hz) {
                MiTinyDataClient.upload(context2, c6241hz);
            }
        });
        Config m3095a = C6127em.m3095a(context);
        C5880a.m4132a(context).m4122a("4_8_2");
        ClientReportClient.init(context, m3095a, new C6125ek(context), new C6126el(context));
        C5913a.m4029a(context);
        C5958t.m3827a(context, m3095a);
        C6372ax.m1530a(context).m1526a(new C6372ax.AbstractRunnableC6373a(100, "perf event job update") { // from class: com.xiaomi.mipush.sdk.MiPushClient.6
            @Override // com.xiaomi.push.service.C6372ax.AbstractRunnableC6373a
            protected void onCallback() {
                C6127em.m3094a(context);
            }
        });
    }

    @Deprecated
    public static void initialize(Context context, String str, String str2, MiPushClientCallback miPushClientCallback) {
        initialize(context, str, str2, miPushClientCallback, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void initialize(Context context, String str, String str2, MiPushClientCallback miPushClientCallback, String str3, ICallbackResult iCallbackResult) {
        try {
            AbstractC5876b.m4152a(context.getApplicationContext());
            AbstractC5876b.m4137e("sdk_version = 4_8_2");
            C6000az.m3729a(context).m3730a();
            C6074dc.m3399a(context);
            if (miPushClientCallback != null) {
                PushMessageHandler.m4038a(miPushClientCallback);
            }
            if (iCallbackResult != null) {
                PushMessageHandler.m4039a(iCallbackResult);
            }
            if (C6469u.m1235a(sContext)) {
                C5960v.m3826a(sContext);
            }
            boolean z = C5938b.m3923a(sContext).m3929a() != Constants.m4083a();
            if (!z && !shouldSendRegRequest(sContext)) {
                C5928ao.m3984a(sContext).m3990a();
                AbstractC5876b.m4147a("Could not send  register message within 5s repeatly .");
                return;
            }
            if (z || !C5938b.m3923a(sContext).m3919a(str, str2) || C5938b.m3923a(sContext).m3902f()) {
                String m3621a = C6023bo.m3621a(6);
                C5938b.m3923a(sContext).m3927a();
                C5938b.m3923a(sContext).m3925a(Constants.m4083a());
                C5938b.m3923a(sContext).m3918a(str, str2, m3621a);
                MiTinyDataClient.C5910a.m4069a().m4059b(MiTinyDataClient.PENDING_REASON_APPID);
                clearExtras(sContext);
                clearNotification(context);
                C6264iv c6264iv = new C6264iv();
                c6264iv.m2151a(C6377ba.m1518a());
                c6264iv.m2146b(str);
                c6264iv.m2135e(str2);
                c6264iv.m2138d(sContext.getPackageName());
                c6264iv.m2132f(m3621a);
                Context context2 = sContext;
                c6264iv.m2141c(C6175g.m2811a(context2, context2.getPackageName()));
                Context context3 = sContext;
                c6264iv.m2147b(C6175g.m2814a(context3, context3.getPackageName()));
                c6264iv.m2126h("4_8_2");
                c6264iv.m2155a(40082);
                c6264iv.m2154a(EnumC6252ij.Init);
                if (!TextUtils.isEmpty(str3)) {
                    c6264iv.m2129g(str3);
                }
                if (!C6306l.m1837d()) {
                    String m2492e = C6242i.m2492e(sContext);
                    if (!TextUtils.isEmpty(m2492e)) {
                        c6264iv.m2123i(C6023bo.m3620a(m2492e) + Constants.ACCEPT_TIME_SEPARATOR_SP + C6242i.m2489h(sContext));
                    }
                }
                int m2516a = C6242i.m2516a();
                if (m2516a >= 0) {
                    c6264iv.m2142c(m2516a);
                }
                C5928ao.m3984a(sContext).m3972a(c6264iv, z);
                sContext.getSharedPreferences("mipush_extra", 4).getBoolean("mipush_registed", true);
            } else {
                if (1 == PushMessageHelper.getPushMode(sContext)) {
                    checkNotNull(miPushClientCallback, "callback");
                    miPushClientCallback.onInitializeResult(0L, null, C5938b.m3923a(sContext).m3910c());
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(C5938b.m3923a(sContext).m3910c());
                    PushMessageHelper.sendCommandMessageBroadcast(sContext, PushMessageHelper.generateCommandMessage(EnumC6157fl.COMMAND_REGISTER.f21553a, arrayList, 0L, null, null));
                }
                C5928ao.m3984a(sContext).m3990a();
                if (C5938b.m3923a(sContext).m3926a()) {
                    C6263iu c6263iu = new C6263iu();
                    c6263iu.m2180b(C5938b.m3923a(sContext).m3928a());
                    c6263iu.m2176c(EnumC6248if.ClientInfoUpdate.f22236a);
                    c6263iu.m2189a(C6377ba.m1518a());
                    HashMap hashMap = new HashMap();
                    c6263iu.f22500a = hashMap;
                    Context context4 = sContext;
                    hashMap.put("app_version", C6175g.m2811a(context4, context4.getPackageName()));
                    Map<String, String> map = c6263iu.f22500a;
                    Context context5 = sContext;
                    map.put(Constants.EXTRA_KEY_APP_VERSION_CODE, Integer.toString(C6175g.m2814a(context5, context5.getPackageName())));
                    c6263iu.f22500a.put("push_sdk_vn", "4_8_2");
                    c6263iu.f22500a.put("push_sdk_vc", Integer.toString(40082));
                    String m3905e = C5938b.m3923a(sContext).m3905e();
                    if (!TextUtils.isEmpty(m3905e)) {
                        c6263iu.f22500a.put("deviceid", m3905e);
                    }
                    C5928ao.m3984a(sContext).m3968a((C5928ao) c6263iu, EnumC6237hv.Notification, false, (C6251ii) null);
                }
                if (!AbstractC6307m.m1832a(sContext, "update_devId", false)) {
                    updateImeiOrOaid();
                    AbstractC6307m.m1833a(sContext, "update_devId", true);
                }
                if (shouldUseMIUIPush(sContext) && shouldPullNotification(sContext)) {
                    C6263iu c6263iu2 = new C6263iu();
                    c6263iu2.m2180b(C5938b.m3923a(sContext).m3928a());
                    c6263iu2.m2176c(EnumC6248if.PullOfflineMessage.f22236a);
                    c6263iu2.m2189a(C6377ba.m1518a());
                    c6263iu2.m2185a(false);
                    C5928ao.m3984a(sContext).m3967a((C5928ao) c6263iu2, EnumC6237hv.Notification, false, (C6251ii) null, false);
                    addPullNotificationTime(sContext);
                }
            }
            addRegRequestTime(sContext);
            scheduleOcVersionCheckJob();
            scheduleDataCollectionJobs(sContext);
            initEventPerfLogic(sContext);
            C5936av.m3936a(sContext);
            if (!sContext.getPackageName().equals("com.xiaomi.xmsf")) {
                if (Logger.getUserLogger() != null) {
                    Logger.setLogger(sContext, Logger.getUserLogger());
                }
                AbstractC5876b.m4156a(2);
            }
            operateSyncAction(context);
        } catch (Throwable th) {
            AbstractC5876b.m4143a(th);
        }
    }

    private static void operateSyncAction(Context context) {
        if ("syncing".equals(C5919af.m4028a(sContext).m4027a(EnumC5935au.DISABLE_PUSH))) {
            disablePush(sContext);
        }
        if ("syncing".equals(C5919af.m4028a(sContext).m4027a(EnumC5935au.ENABLE_PUSH))) {
            enablePush(sContext);
        }
        if ("syncing".equals(C5919af.m4028a(sContext).m4027a(EnumC5935au.UPLOAD_HUAWEI_TOKEN))) {
            syncAssemblePushToken(sContext);
        }
        if ("syncing".equals(C5919af.m4028a(sContext).m4027a(EnumC5935au.UPLOAD_FCM_TOKEN))) {
            syncAssembleFCMPushToken(sContext);
        }
        if ("syncing".equals(C5919af.m4028a(sContext).m4027a(EnumC5935au.UPLOAD_COS_TOKEN))) {
            syncAssembleCOSPushToken(context);
        }
        if ("syncing".equals(C5919af.m4028a(sContext).m4027a(EnumC5935au.UPLOAD_FTOS_TOKEN))) {
            syncAssembleFTOSPushToken(context);
        }
    }

    public static void pausePush(Context context, String str) {
        setAcceptTime(context, 0, 0, 0, 0, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reInitialize(Context context, EnumC6252ij enumC6252ij) {
        AbstractC5876b.m4137e("re-register reason: " + enumC6252ij);
        String m3621a = C6023bo.m3621a(6);
        String m3928a = C5938b.m3923a(context).m3928a();
        String m3915b = C5938b.m3923a(context).m3915b();
        C5938b.m3923a(context).m3927a();
        clearExtrasForInitialize(context);
        clearNotification(context);
        C5938b.m3923a(context).m3925a(Constants.m4083a());
        C5938b.m3923a(context).m3918a(m3928a, m3915b, m3621a);
        C6264iv c6264iv = new C6264iv();
        c6264iv.m2151a(C6377ba.m1518a());
        c6264iv.m2146b(m3928a);
        c6264iv.m2135e(m3915b);
        c6264iv.m2132f(m3621a);
        c6264iv.m2138d(context.getPackageName());
        c6264iv.m2141c(C6175g.m2811a(context, context.getPackageName()));
        c6264iv.m2147b(C6175g.m2814a(context, context.getPackageName()));
        c6264iv.m2126h("4_8_2");
        c6264iv.m2155a(40082);
        c6264iv.m2154a(enumC6252ij);
        int m2516a = C6242i.m2516a();
        if (m2516a >= 0) {
            c6264iv.m2142c(m2516a);
        }
        C5928ao.m3984a(context).m3972a(c6264iv, false);
    }

    @Deprecated
    public static void registerCrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
    }

    private static void registerNetworkReceiver(Context context) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            intentFilter.addCategory("android.intent.category.DEFAULT");
            C6308n.m1829a(context.getApplicationContext(), new NetworkStatusReceiver(null), intentFilter);
            C6308n.m1826a(context, NetworkStatusReceiver.class);
        } catch (Throwable th) {
            AbstractC5876b.m4147a("dynamic register network status receiver failed:" + th);
        }
    }

    public static void registerPush(Context context, String str, String str2) {
        registerPush(context, str, str2, new PushConfiguration());
    }

    public static void registerPush(Context context, String str, String str2, PushConfiguration pushConfiguration) {
        registerPush(context, str, str2, pushConfiguration, null, null);
    }

    private static void registerPush(Context context, final String str, final String str2, PushConfiguration pushConfiguration, final String str3, final ICallbackResult iCallbackResult) {
        checkNotNull(context, UContent.f19653R);
        checkNotNull(str, "appID");
        checkNotNull(str2, "appToken");
        Context applicationContext = context.getApplicationContext();
        sContext = applicationContext;
        if (applicationContext == null) {
            sContext = context;
        }
        Context context2 = sContext;
        C6469u.m1236a(context2);
        if (!NetworkStatusReceiver.m1299a()) {
            registerNetworkReceiver(sContext);
        }
        C5943f.m3885a(sContext).m3884a(pushConfiguration);
        C5978ak.m3784a(context2).m3775a(new Runnable() { // from class: com.xiaomi.mipush.sdk.MiPushClient.1
            @Override // java.lang.Runnable
            public void run() {
                MiPushClient.initialize(MiPushClient.sContext, str, str2, null, str3, iCallbackResult);
            }
        });
    }

    public static void registerPush(Context context, String str, String str2, String str3) {
        registerPush(context, str, str2, new PushConfiguration(), str3, null);
    }

    public static void registerToken(Context context, String str, String str2, String str3, UPSRegisterCallBack uPSRegisterCallBack) {
        registerPush(context, str, str2, new PushConfiguration(), null, uPSRegisterCallBack);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void removeAcceptTime(Context context) {
        synchronized (MiPushClient.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.remove(Constants.EXTRA_KEY_ACCEPT_TIME);
            C6314s.m1816a(edit);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void removeAccount(Context context, String str) {
        synchronized (MiPushClient.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.remove("account_" + str).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void removeAlias(Context context, String str) {
        synchronized (MiPushClient.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.remove("alias_" + str).commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void removeAllAccounts(Context context) {
        synchronized (MiPushClient.class) {
            for (String str : getAllUserAccount(context)) {
                removeAccount(context, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void removeAllAliases(Context context) {
        synchronized (MiPushClient.class) {
            for (String str : getAllAlias(context)) {
                removeAlias(context, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void removeAllTopics(Context context) {
        synchronized (MiPushClient.class) {
            for (String str : getAllTopic(context)) {
                removeTopic(context, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void removeTopic(Context context, String str) {
        synchronized (MiPushClient.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
            edit.remove("topic_" + str).commit();
        }
    }

    public static void removeWindow(Context context) {
        C5928ao.m3984a(context).m3942e();
    }

    public static void reportAppRunInBackground(Context context, boolean z) {
        if (C5938b.m3923a(context).m3913b()) {
            EnumC6248if enumC6248if = z ? EnumC6248if.APP_SLEEP : EnumC6248if.APP_WAKEUP;
            C6263iu c6263iu = new C6263iu();
            c6263iu.m2180b(C5938b.m3923a(context).m3928a());
            c6263iu.m2176c(enumC6248if.f22236a);
            c6263iu.m2173d(context.getPackageName());
            c6263iu.m2189a(C6377ba.m1518a());
            c6263iu.m2185a(false);
            C5928ao.m3984a(context).m3967a((C5928ao) c6263iu, EnumC6237hv.Notification, false, (C6251ii) null, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reportIgnoreRegMessageClicked(Context context, String str, C6251ii c6251ii, String str2, String str3) {
        C6263iu c6263iu = new C6263iu();
        if (TextUtils.isEmpty(str3)) {
            AbstractC5876b.m4138d("do not report clicked message");
            return;
        }
        c6263iu.m2180b(str3);
        c6263iu.m2176c("bar:click");
        c6263iu.m2189a(str);
        c6263iu.m2185a(false);
        C5928ao.m3984a(context).m3965a(c6263iu, EnumC6237hv.Notification, false, true, c6251ii, true, str2, str3);
    }

    public static void reportMessageClicked(Context context, MiPushMessage miPushMessage) {
        C6251ii c6251ii = new C6251ii();
        c6251ii.m2395a(miPushMessage.getMessageId());
        c6251ii.m2386b(miPushMessage.getTopic());
        c6251ii.m2375d(miPushMessage.getDescription());
        c6251ii.m2379c(miPushMessage.getTitle());
        c6251ii.m2380c(miPushMessage.getNotifyId());
        c6251ii.m2398a(miPushMessage.getNotifyType());
        c6251ii.m2387b(miPushMessage.getPassThrough());
        c6251ii.m2393a(miPushMessage.getExtra());
        reportMessageClicked(context, miPushMessage.getMessageId(), c6251ii, null);
    }

    @Deprecated
    public static void reportMessageClicked(Context context, String str) {
        reportMessageClicked(context, str, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reportMessageClicked(Context context, String str, C6251ii c6251ii, String str2) {
        C6263iu c6263iu = new C6263iu();
        if (TextUtils.isEmpty(str2)) {
            if (!C5938b.m3923a(context).m3913b()) {
                AbstractC5876b.m4138d("do not report clicked message");
                return;
            }
            str2 = C5938b.m3923a(context).m3928a();
        }
        c6263iu.m2180b(str2);
        c6263iu.m2176c("bar:click");
        c6263iu.m2189a(str);
        c6263iu.m2185a(false);
        C5928ao.m3984a(context).m3968a((C5928ao) c6263iu, EnumC6237hv.Notification, false, c6251ii);
    }

    public static void resumePush(Context context, String str) {
        setAcceptTime(context, 0, 0, 23, 59, str);
    }

    private static void scheduleDataCollectionJobs(Context context) {
        if (C6372ax.m1530a(sContext).m1531a(EnumC6243ia.DataCollectionSwitch.m2484a(), getDefaultSwitch())) {
            C6087dm.m3368a().m3367a(new C5956r(context));
            C5978ak.m3784a(sContext).m3774a(new Runnable() { // from class: com.xiaomi.mipush.sdk.MiPushClient.2
                @Override // java.lang.Runnable
                public void run() {
                    C6088dn.m3366a(MiPushClient.sContext);
                }
            }, 10);
        }
    }

    private static void scheduleOcVersionCheckJob() {
        C5978ak.m3784a(sContext).m3780a(new C5918ae(sContext), C6372ax.m1530a(sContext).m1534a(EnumC6243ia.OcVersionCheckFrequency.m2484a(), 86400), 5);
    }

    public static void setAcceptTime(Context context, int i, int i2, int i3, int i4, String str) {
        if (i < 0 || i >= 24 || i3 < 0 || i3 >= 24 || i2 < 0 || i2 >= 60 || i4 < 0 || i4 >= 60) {
            throw new IllegalArgumentException("the input parameter is not valid.");
        }
        long rawOffset = ((TimeZone.getTimeZone("GMT+08").getRawOffset() - TimeZone.getDefault().getRawOffset()) / XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER) / 60;
        long j = ((((i * 60) + i2) + rawOffset) + 1440) % 1440;
        long j2 = ((((i3 * 60) + i4) + rawOffset) + 1440) % 1440;
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(j / 60), Long.valueOf(j % 60)));
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(j2 / 60), Long.valueOf(j2 % 60)));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(String.format("%1$02d:%2$02d", Integer.valueOf(i), Integer.valueOf(i2)));
        arrayList2.add(String.format("%1$02d:%2$02d", Integer.valueOf(i3), Integer.valueOf(i4)));
        if (!acceptTimeSet(context, (String) arrayList.get(0), (String) arrayList.get(1))) {
            setCommand(context, EnumC6157fl.COMMAND_SET_ACCEPT_TIME.f21553a, arrayList, str);
        } else if (1 == PushMessageHelper.getPushMode(context)) {
            PushMessageHandler.m4040a(context, str, EnumC6157fl.COMMAND_SET_ACCEPT_TIME.f21553a, 0L, null, arrayList2);
        } else {
            PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(EnumC6157fl.COMMAND_SET_ACCEPT_TIME.f21553a, arrayList2, 0L, null, null));
        }
    }

    public static void setAlias(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        setCommand(context, EnumC6157fl.COMMAND_SET_ALIAS.f21553a, str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0031, code lost:
        if (1 == com.xiaomi.mipush.sdk.PushMessageHelper.getPushMode(r12)) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        com.xiaomi.mipush.sdk.PushMessageHandler.m4040a(r12, r15, r13, 0, null, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
        com.xiaomi.mipush.sdk.PushMessageHelper.sendCommandMessageBroadcast(r12, com.xiaomi.mipush.sdk.PushMessageHelper.generateCommandMessage(r0.f21553a, r6, 0, null, r15));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a7, code lost:
        if (1 == com.xiaomi.mipush.sdk.PushMessageHelper.getPushMode(r12)) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected static void setCommand(Context context, String str, String str2, String str3) {
        StringBuilder sb;
        String str4;
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
        }
        EnumC6157fl enumC6157fl = EnumC6157fl.COMMAND_SET_ALIAS;
        if (!enumC6157fl.f21553a.equalsIgnoreCase(str) || Math.abs(System.currentTimeMillis() - aliasSetTime(context, str2)) >= 86400000) {
            if (!EnumC6157fl.COMMAND_UNSET_ALIAS.f21553a.equalsIgnoreCase(str) || aliasSetTime(context, str2) >= 0) {
                enumC6157fl = EnumC6157fl.COMMAND_SET_ACCOUNT;
                if (!enumC6157fl.f21553a.equalsIgnoreCase(str) || Math.abs(System.currentTimeMillis() - accountSetTime(context, str2)) >= 3600000) {
                    if (!EnumC6157fl.COMMAND_UNSET_ACCOUNT.f21553a.equalsIgnoreCase(str) || accountSetTime(context, str2) >= 0) {
                        setCommand(context, str, arrayList, str3);
                        return;
                    } else {
                        sb = new StringBuilder();
                        str4 = "Don't cancel account for ";
                    }
                }
            } else {
                sb = new StringBuilder();
                str4 = "Don't cancel alias for ";
            }
            sb.append(str4);
            sb.append(C6023bo.m3617a(arrayList.toString(), 3));
            sb.append(" is unseted");
            AbstractC5876b.m4147a(sb.toString());
        }
    }

    protected static void setCommand(Context context, String str, ArrayList<String> arrayList, String str2) {
        if (TextUtils.isEmpty(C5938b.m3923a(context).m3928a())) {
            return;
        }
        C6258ip c6258ip = new C6258ip();
        String m1518a = C6377ba.m1518a();
        c6258ip.m2271a(m1518a);
        c6258ip.m2267b(C5938b.m3923a(context).m3928a());
        c6258ip.m2264c(str);
        Iterator<String> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            c6258ip.m2270a(it2.next());
        }
        c6258ip.m2259e(str2);
        c6258ip.m2261d(context.getPackageName());
        AbstractC5876b.m4137e("cmd:" + str + ", " + m1518a);
        C5928ao.m3984a(context).m3970a((C5928ao) c6258ip, EnumC6237hv.Command, (C6251ii) null);
    }

    public static void setLocalNotificationType(Context context, int i) {
        C5928ao.m3984a(context).m3954b(i & (-1));
    }

    public static void setUserAccount(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        setCommand(context, EnumC6157fl.COMMAND_SET_ACCOUNT.f21553a, str, str2);
    }

    private static boolean shouldPullNotification(Context context) {
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_pull_notification", -1L)) > Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL;
    }

    private static boolean shouldSendRegRequest(Context context) {
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_reg_request", -1L)) > 5000;
    }

    public static boolean shouldUseMIUIPush(Context context) {
        return C5928ao.m3984a(context).m3989a();
    }

    public static void subscribe(Context context, String str, String str2) {
        if (TextUtils.isEmpty(C5938b.m3923a(context).m3928a()) || TextUtils.isEmpty(str)) {
            return;
        }
        if (Math.abs(System.currentTimeMillis() - topicSubscribedTime(context, str)) <= 86400000) {
            if (1 == PushMessageHelper.getPushMode(context)) {
                PushMessageHandler.m4041a(context, str2, 0L, null, str);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(EnumC6157fl.COMMAND_SUBSCRIBE_TOPIC.f21553a, arrayList, 0L, null, null));
            return;
        }
        C6268iz c6268iz = new C6268iz();
        String m1518a = C6377ba.m1518a();
        c6268iz.m2037a(m1518a);
        c6268iz.m2035b(C5938b.m3923a(context).m3928a());
        c6268iz.m2033c(str);
        c6268iz.m2031d(context.getPackageName());
        c6268iz.m2029e(str2);
        AbstractC5876b.m4137e("cmd:" + EnumC6157fl.COMMAND_SUBSCRIBE_TOPIC + ", " + m1518a);
        C5928ao.m3984a(context).m3970a((C5928ao) c6268iz, EnumC6237hv.Subscription, (C6251ii) null);
    }

    public static void syncAssembleCOSPushToken(Context context) {
        C5928ao.m3984a(context).m3962a((String) null, EnumC5935au.UPLOAD_COS_TOKEN, EnumC5942e.ASSEMBLE_PUSH_COS);
    }

    public static void syncAssembleFCMPushToken(Context context) {
        C5928ao.m3984a(context).m3962a((String) null, EnumC5935au.UPLOAD_FCM_TOKEN, EnumC5942e.ASSEMBLE_PUSH_FCM);
    }

    public static void syncAssembleFTOSPushToken(Context context) {
        C5928ao.m3984a(context).m3962a((String) null, EnumC5935au.UPLOAD_FTOS_TOKEN, EnumC5942e.ASSEMBLE_PUSH_FTOS);
    }

    public static void syncAssemblePushToken(Context context) {
        C5928ao.m3984a(context).m3962a((String) null, EnumC5935au.UPLOAD_HUAWEI_TOKEN, EnumC5942e.ASSEMBLE_PUSH_HUAWEI);
    }

    public static long topicSubscribedTime(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        return sharedPreferences.getLong("topic_" + str, -1L);
    }

    public static void turnOffPush(Context context, UPSTurnCallBack uPSTurnCallBack) {
        disablePush(context);
        if (uPSTurnCallBack != null) {
            CodeResult codeResult = new CodeResult();
            codeResult.setResultCode(0L);
            codeResult.getResultCode();
            uPSTurnCallBack.onResult(codeResult);
        }
    }

    public static void turnOnPush(Context context, UPSTurnCallBack uPSTurnCallBack) {
        enablePush(context);
        if (uPSTurnCallBack != null) {
            CodeResult codeResult = new CodeResult();
            codeResult.setResultCode(0L);
            codeResult.getResultCode();
            uPSTurnCallBack.onResult(codeResult);
        }
    }

    public static void unRegisterToken(Context context, UPSUnRegisterCallBack uPSUnRegisterCallBack) {
        unregisterPush(context);
        if (uPSUnRegisterCallBack != null) {
            TokenResult tokenResult = new TokenResult();
            tokenResult.setToken(null);
            tokenResult.getToken();
            tokenResult.setResultCode(0L);
            tokenResult.getResultCode();
            uPSUnRegisterCallBack.onResult(tokenResult);
        }
    }

    public static void unregisterPush(Context context) {
        C5946i.m3853c(context);
        C6372ax.m1530a(context).m1536a();
        if (C5938b.m3923a(context).m3913b()) {
            C6274jb c6274jb = new C6274jb();
            c6274jb.m2001a(C6377ba.m1518a());
            c6274jb.m1998b(C5938b.m3923a(context).m3928a());
            c6274jb.m1995c(C5938b.m3923a(context).m3910c());
            c6274jb.m1991e(C5938b.m3923a(context).m3915b());
            c6274jb.m1993d(context.getPackageName());
            C5928ao.m3984a(context).m3971a(c6274jb);
            PushMessageHandler.m4050a();
            PushMessageHandler.m4036b();
            C5938b.m3923a(context).m3914b();
            clearLocalNotificationType(context);
            clearNotification(context);
            clearExtras(context);
        }
    }

    public static void unsetAlias(Context context, String str, String str2) {
        setCommand(context, EnumC6157fl.COMMAND_UNSET_ALIAS.f21553a, str, str2);
    }

    public static void unsetUserAccount(Context context, String str, String str2) {
        setCommand(context, EnumC6157fl.COMMAND_UNSET_ACCOUNT.f21553a, str, str2);
    }

    public static void unsubscribe(Context context, String str, String str2) {
        if (C5938b.m3923a(context).m3913b()) {
            if (topicSubscribedTime(context, str) < 0) {
                AbstractC5876b.m4147a("Don't cancel subscribe for " + str + " is unsubscribed");
                return;
            }
            C6276jd c6276jd = new C6276jd();
            String m1518a = C6377ba.m1518a();
            c6276jd.m1963a(m1518a);
            c6276jd.m1961b(C5938b.m3923a(context).m3928a());
            c6276jd.m1959c(str);
            c6276jd.m1957d(context.getPackageName());
            c6276jd.m1955e(str2);
            AbstractC5876b.m4137e("cmd:" + EnumC6157fl.COMMAND_UNSUBSCRIBE_TOPIC + ", " + m1518a);
            C5928ao.m3984a(context).m3970a((C5928ao) c6276jd, EnumC6237hv.UnSubscription, (C6251ii) null);
        }
    }

    private static void updateImeiOrOaid() {
        new Thread(new Runnable() { // from class: com.xiaomi.mipush.sdk.MiPushClient.3
            @Override // java.lang.Runnable
            public void run() {
                String m2494d;
                if (C6306l.m1837d()) {
                    return;
                }
                if (C6242i.m2494d(MiPushClient.sContext) != null || C6000az.m3729a(MiPushClient.sContext).mo3683a()) {
                    C6263iu c6263iu = new C6263iu();
                    c6263iu.m2180b(C5938b.m3923a(MiPushClient.sContext).m3928a());
                    c6263iu.m2176c(EnumC6248if.ClientInfoUpdate.f22236a);
                    c6263iu.m2189a(C6377ba.m1518a());
                    c6263iu.m2186a(new HashMap());
                    String str = "";
                    if (!TextUtils.isEmpty(C6242i.m2494d(MiPushClient.sContext))) {
                        str = "" + C6023bo.m3620a(m2494d);
                    }
                    String m2491f = C6242i.m2491f(MiPushClient.sContext);
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(m2491f)) {
                        str = str + Constants.ACCEPT_TIME_SEPARATOR_SP + m2491f;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        c6263iu.m2195a().put(Constants.EXTRA_KEY_IMEI_MD5, str);
                    }
                    C6000az.m3729a(MiPushClient.sContext).m3727a(c6263iu.m2195a());
                    int m2516a = C6242i.m2516a();
                    if (m2516a >= 0) {
                        c6263iu.m2195a().put("space_id", Integer.toString(m2516a));
                    }
                    C5928ao.m3984a(MiPushClient.sContext).m3968a((C5928ao) c6263iu, EnumC6237hv.Notification, false, (C6251ii) null);
                }
            }
        }).start();
    }
}

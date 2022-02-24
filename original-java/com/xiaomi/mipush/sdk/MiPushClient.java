package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.umeng.analytics.pro.c;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.manager.ClientReportClient;
import com.xiaomi.clientreport.manager.a;
import com.xiaomi.mipush.sdk.MiTinyDataClient;
import com.xiaomi.push.Cif;
import com.xiaomi.push.ak;
import com.xiaomi.push.az;
import com.xiaomi.push.bo;
import com.xiaomi.push.dc;
import com.xiaomi.push.dm;
import com.xiaomi.push.dn;
import com.xiaomi.push.ek;
import com.xiaomi.push.el;
import com.xiaomi.push.em;
import com.xiaomi.push.fl;
import com.xiaomi.push.g;
import com.xiaomi.push.hv;
import com.xiaomi.push.hz;
import com.xiaomi.push.i;
import com.xiaomi.push.ia;
import com.xiaomi.push.ii;
import com.xiaomi.push.ij;
import com.xiaomi.push.ip;
import com.xiaomi.push.iu;
import com.xiaomi.push.iv;
import com.xiaomi.push.iz;
import com.xiaomi.push.jb;
import com.xiaomi.push.jd;
import com.xiaomi.push.l;
import com.xiaomi.push.m;
import com.xiaomi.push.n;
import com.xiaomi.push.s;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.service.ba;
import com.xiaomi.push.service.receivers.NetworkStatusReceiver;
import com.xiaomi.push.u;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

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
            s.a(edit);
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
        s.a(edit);
    }

    private static void addRegRequestTime(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        edit.putLong("last_reg_request", System.currentTimeMillis());
        s.a(edit);
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
        ak.a(context).a(new Runnable() { // from class: com.xiaomi.mipush.sdk.MiPushClient.4
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
                    b.a(th);
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
                        PushMessageHandler.a(context, intent);
                        return;
                    } catch (Throwable unused) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    public static void clearExtras(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        edit.clear();
        edit.commit();
    }

    private static void clearExtrasForInitialize(Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        Iterator<String> it = getAllAlias(context).iterator();
        while (it.hasNext()) {
            edit.remove("alias_" + it.next());
        }
        Iterator<String> it2 = getAllUserAccount(context).iterator();
        while (it2.hasNext()) {
            edit.remove("account_" + it2.next());
        }
        Iterator<String> it3 = getAllTopic(context).iterator();
        while (it3.hasNext()) {
            edit.remove("topic_" + it3.next());
        }
        edit.remove(Constants.EXTRA_KEY_ACCEPT_TIME);
        edit.commit();
    }

    public static void clearLocalNotificationType(Context context) {
        ao.a(context).f();
    }

    public static void clearNotification(Context context) {
        ao.a(context).a(-1);
    }

    public static void clearNotification(Context context, int i) {
        ao.a(context).a(i);
    }

    public static void clearNotification(Context context, String str, String str2) {
        ao.a(context).a(str, str2);
    }

    public static void disablePush(Context context) {
        ao.a(context).a(true);
    }

    public static void enablePush(Context context) {
        ao.a(context).a(false);
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
        if (b.m36a(context).m45c()) {
            return b.m36a(context).f();
        }
        return null;
    }

    private static boolean getDefaultSwitch() {
        return l.m531b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean getOpenFCMPush(Context context) {
        checkNotNull(context, c.R);
        return f.a(context).b(e.ASSEMBLE_PUSH_FCM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean getOpenHmsPush(Context context) {
        checkNotNull(context, c.R);
        return f.a(context).b(e.ASSEMBLE_PUSH_HUAWEI);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean getOpenOPPOPush(Context context) {
        checkNotNull(context, c.R);
        return f.a(context).b(e.ASSEMBLE_PUSH_COS);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean getOpenVIVOPush(Context context) {
        return f.a(context).b(e.ASSEMBLE_PUSH_FTOS);
    }

    public static String getRegId(Context context) {
        if (b.m36a(context).m45c()) {
            return b.m36a(context).m44c();
        }
        return null;
    }

    private static void initEventPerfLogic(final Context context) {
        em.a(new em.a() { // from class: com.xiaomi.mipush.sdk.MiPushClient.5
            @Override // com.xiaomi.push.em.a
            public void uploader(Context context2, hz hzVar) {
                MiTinyDataClient.upload(context2, hzVar);
            }
        });
        Config a2 = em.a(context);
        a.a(context).a("4_8_2");
        ClientReportClient.init(context, a2, new ek(context), new el(context));
        a.a(context);
        t.a(context, a2);
        ax.a(context).a(new ax.a(100, "perf event job update") { // from class: com.xiaomi.mipush.sdk.MiPushClient.6
            @Override // com.xiaomi.push.service.ax.a
            protected void onCallback() {
                em.m234a(context);
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
            b.a(context.getApplicationContext());
            b.e("sdk_version = 4_8_2");
            az.a(context).mo92a();
            dc.a(context);
            if (miPushClientCallback != null) {
                PushMessageHandler.a(miPushClientCallback);
            }
            if (iCallbackResult != null) {
                PushMessageHandler.a(iCallbackResult);
            }
            if (u.m662a(sContext)) {
                v.a(sContext);
            }
            boolean z = b.m36a(sContext).a() != Constants.a();
            if (z || shouldSendRegRequest(sContext)) {
                if (z || !b.m36a(sContext).a(str, str2) || b.m36a(sContext).m48f()) {
                    String a2 = bo.a(6);
                    b.m36a(sContext).m38a();
                    b.m36a(sContext).a(Constants.a());
                    b.m36a(sContext).a(str, str2, a2);
                    MiTinyDataClient.a.a().b(MiTinyDataClient.PENDING_REASON_APPID);
                    clearExtras(sContext);
                    clearNotification(context);
                    iv ivVar = new iv();
                    ivVar.a(ba.a());
                    ivVar.b(str);
                    ivVar.e(str2);
                    ivVar.d(sContext.getPackageName());
                    ivVar.f(a2);
                    ivVar.c(g.m302a(sContext, sContext.getPackageName()));
                    ivVar.b(g.a(sContext, sContext.getPackageName()));
                    ivVar.h("4_8_2");
                    ivVar.a(40082);
                    ivVar.a(ij.Init);
                    if (!TextUtils.isEmpty(str3)) {
                        ivVar.g(str3);
                    }
                    if (!l.m533d()) {
                        String e = i.e(sContext);
                        if (!TextUtils.isEmpty(e)) {
                            ivVar.i(bo.a(e) + Constants.ACCEPT_TIME_SEPARATOR_SP + i.h(sContext));
                        }
                    }
                    int a3 = i.a();
                    if (a3 >= 0) {
                        ivVar.c(a3);
                    }
                    ao.a(sContext).a(ivVar, z);
                    sContext.getSharedPreferences("mipush_extra", 4).getBoolean("mipush_registed", true);
                } else {
                    if (1 == PushMessageHelper.getPushMode(sContext)) {
                        checkNotNull(miPushClientCallback, "callback");
                        miPushClientCallback.onInitializeResult(0L, null, b.m36a(sContext).m44c());
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(b.m36a(sContext).m44c());
                        PushMessageHelper.sendCommandMessageBroadcast(sContext, PushMessageHelper.generateCommandMessage(fl.COMMAND_REGISTER.f354a, arrayList, 0L, null, null));
                    }
                    ao.a(sContext).m27a();
                    if (b.m36a(sContext).m40a()) {
                        iu iuVar = new iu();
                        iuVar.b(b.m36a(sContext).m37a());
                        iuVar.c(Cif.ClientInfoUpdate.f527a);
                        iuVar.a(ba.a());
                        HashMap hashMap = new HashMap();
                        iuVar.f666a = hashMap;
                        hashMap.put("app_version", g.m302a(sContext, sContext.getPackageName()));
                        iuVar.f666a.put(Constants.EXTRA_KEY_APP_VERSION_CODE, Integer.toString(g.a(sContext, sContext.getPackageName())));
                        iuVar.f666a.put("push_sdk_vn", "4_8_2");
                        iuVar.f666a.put("push_sdk_vc", Integer.toString(40082));
                        String e2 = b.m36a(sContext).e();
                        if (!TextUtils.isEmpty(e2)) {
                            iuVar.f666a.put("deviceid", e2);
                        }
                        ao.a(sContext).a((ao) iuVar, hv.Notification, false, (ii) null);
                    }
                    if (!m.m535a(sContext, "update_devId", false)) {
                        updateImeiOrOaid();
                        m.a(sContext, "update_devId", true);
                    }
                    if (shouldUseMIUIPush(sContext) && shouldPullNotification(sContext)) {
                        iu iuVar2 = new iu();
                        iuVar2.b(b.m36a(sContext).m37a());
                        iuVar2.c(Cif.PullOfflineMessage.f527a);
                        iuVar2.a(ba.a());
                        iuVar2.a(false);
                        ao.a(sContext).a((ao) iuVar2, hv.Notification, false, (ii) null, false);
                        addPullNotificationTime(sContext);
                    }
                }
                addRegRequestTime(sContext);
                scheduleOcVersionCheckJob();
                scheduleDataCollectionJobs(sContext);
                initEventPerfLogic(sContext);
                av.a(sContext);
                if (!sContext.getPackageName().equals("com.xiaomi.xmsf")) {
                    if (Logger.getUserLogger() != null) {
                        Logger.setLogger(sContext, Logger.getUserLogger());
                    }
                    b.a(2);
                }
                operateSyncAction(context);
                return;
            }
            ao.a(sContext).m27a();
            b.m1a("Could not send  register message within 5s repeatly .");
        } catch (Throwable th) {
            b.a(th);
        }
    }

    private static void operateSyncAction(Context context) {
        if ("syncing".equals(af.a(sContext).a(au.DISABLE_PUSH))) {
            disablePush(sContext);
        }
        if ("syncing".equals(af.a(sContext).a(au.ENABLE_PUSH))) {
            enablePush(sContext);
        }
        if ("syncing".equals(af.a(sContext).a(au.UPLOAD_HUAWEI_TOKEN))) {
            syncAssemblePushToken(sContext);
        }
        if ("syncing".equals(af.a(sContext).a(au.UPLOAD_FCM_TOKEN))) {
            syncAssembleFCMPushToken(sContext);
        }
        if ("syncing".equals(af.a(sContext).a(au.UPLOAD_COS_TOKEN))) {
            syncAssembleCOSPushToken(context);
        }
        if ("syncing".equals(af.a(sContext).a(au.UPLOAD_FTOS_TOKEN))) {
            syncAssembleFTOSPushToken(context);
        }
    }

    public static void pausePush(Context context, String str) {
        setAcceptTime(context, 0, 0, 0, 0, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reInitialize(Context context, ij ijVar) {
        b.e("re-register reason: " + ijVar);
        String a2 = bo.a(6);
        String a3 = b.m36a(context).m37a();
        String b2 = b.m36a(context).b();
        b.m36a(context).m38a();
        clearExtrasForInitialize(context);
        clearNotification(context);
        b.m36a(context).a(Constants.a());
        b.m36a(context).a(a3, b2, a2);
        iv ivVar = new iv();
        ivVar.a(ba.a());
        ivVar.b(a3);
        ivVar.e(b2);
        ivVar.f(a2);
        ivVar.d(context.getPackageName());
        ivVar.c(g.m302a(context, context.getPackageName()));
        ivVar.b(g.a(context, context.getPackageName()));
        ivVar.h("4_8_2");
        ivVar.a(40082);
        ivVar.a(ijVar);
        int a4 = i.a();
        if (a4 >= 0) {
            ivVar.c(a4);
        }
        ao.a(context).a(ivVar, false);
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
            n.a(context.getApplicationContext(), new NetworkStatusReceiver(null), intentFilter);
            n.a(context, NetworkStatusReceiver.class);
        } catch (Throwable th) {
            b.m1a("dynamic register network status receiver failed:" + th);
        }
    }

    public static void registerPush(Context context, String str, String str2) {
        registerPush(context, str, str2, new PushConfiguration());
    }

    public static void registerPush(Context context, String str, String str2, PushConfiguration pushConfiguration) {
        registerPush(context, str, str2, pushConfiguration, null, null);
    }

    private static void registerPush(Context context, final String str, final String str2, PushConfiguration pushConfiguration, final String str3, final ICallbackResult iCallbackResult) {
        checkNotNull(context, c.R);
        checkNotNull(str, "appID");
        checkNotNull(str2, "appToken");
        Context applicationContext = context.getApplicationContext();
        sContext = applicationContext;
        if (applicationContext == null) {
            sContext = context;
        }
        Context context2 = sContext;
        u.m660a(context2);
        if (!NetworkStatusReceiver.a()) {
            registerNetworkReceiver(sContext);
        }
        f.a(sContext).a(pushConfiguration);
        ak.a(context2).a(new Runnable() { // from class: com.xiaomi.mipush.sdk.MiPushClient.1
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
            s.a(edit);
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
        ao.a(context).m35e();
    }

    public static void reportAppRunInBackground(Context context, boolean z) {
        if (b.m36a(context).m43b()) {
            Cif ifVar = z ? Cif.APP_SLEEP : Cif.APP_WAKEUP;
            iu iuVar = new iu();
            iuVar.b(b.m36a(context).m37a());
            iuVar.c(ifVar.f527a);
            iuVar.d(context.getPackageName());
            iuVar.a(ba.a());
            iuVar.a(false);
            ao.a(context).a((ao) iuVar, hv.Notification, false, (ii) null, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reportIgnoreRegMessageClicked(Context context, String str, ii iiVar, String str2, String str3) {
        iu iuVar = new iu();
        if (TextUtils.isEmpty(str3)) {
            b.d("do not report clicked message");
            return;
        }
        iuVar.b(str3);
        iuVar.c("bar:click");
        iuVar.a(str);
        iuVar.a(false);
        ao.a(context).a(iuVar, hv.Notification, false, true, iiVar, true, str2, str3);
    }

    public static void reportMessageClicked(Context context, MiPushMessage miPushMessage) {
        ii iiVar = new ii();
        iiVar.a(miPushMessage.getMessageId());
        iiVar.b(miPushMessage.getTopic());
        iiVar.d(miPushMessage.getDescription());
        iiVar.c(miPushMessage.getTitle());
        iiVar.c(miPushMessage.getNotifyId());
        iiVar.a(miPushMessage.getNotifyType());
        iiVar.b(miPushMessage.getPassThrough());
        iiVar.a(miPushMessage.getExtra());
        reportMessageClicked(context, miPushMessage.getMessageId(), iiVar, null);
    }

    @Deprecated
    public static void reportMessageClicked(Context context, String str) {
        reportMessageClicked(context, str, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reportMessageClicked(Context context, String str, ii iiVar, String str2) {
        iu iuVar = new iu();
        if (TextUtils.isEmpty(str2)) {
            if (b.m36a(context).m43b()) {
                str2 = b.m36a(context).m37a();
            } else {
                b.d("do not report clicked message");
                return;
            }
        }
        iuVar.b(str2);
        iuVar.c("bar:click");
        iuVar.a(str);
        iuVar.a(false);
        ao.a(context).a((ao) iuVar, hv.Notification, false, iiVar);
    }

    public static void resumePush(Context context, String str) {
        setAcceptTime(context, 0, 0, 23, 59, str);
    }

    private static void scheduleDataCollectionJobs(Context context) {
        if (ax.a(sContext).a(ia.DataCollectionSwitch.a(), getDefaultSwitch())) {
            dm.a().a(new r(context));
            ak.a(sContext).a(new Runnable() { // from class: com.xiaomi.mipush.sdk.MiPushClient.2
                @Override // java.lang.Runnable
                public void run() {
                    dn.a(MiPushClient.sContext);
                }
            }, 10);
        }
    }

    private static void scheduleOcVersionCheckJob() {
        ak.a(sContext).a(new ae(sContext), ax.a(sContext).a(ia.OcVersionCheckFrequency.a(), 86400), 5);
    }

    public static void setAcceptTime(Context context, int i, int i2, int i3, int i4, String str) {
        if (i < 0 || i >= 24 || i3 < 0 || i3 >= 24 || i2 < 0 || i2 >= 60 || i4 < 0 || i4 >= 60) {
            throw new IllegalArgumentException("the input parameter is not valid.");
        }
        long rawOffset = ((TimeZone.getTimeZone("GMT+08").getRawOffset() - TimeZone.getDefault().getRawOffset()) / 1000) / 60;
        long j = ((((i * 60) + i2) + rawOffset) + 1440) % 1440;
        long j2 = ((((i3 * 60) + i4) + rawOffset) + 1440) % 1440;
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(j / 60), Long.valueOf(j % 60)));
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(j2 / 60), Long.valueOf(j2 % 60)));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(String.format("%1$02d:%2$02d", Integer.valueOf(i), Integer.valueOf(i2)));
        arrayList2.add(String.format("%1$02d:%2$02d", Integer.valueOf(i3), Integer.valueOf(i4)));
        if (!acceptTimeSet(context, (String) arrayList.get(0), (String) arrayList.get(1))) {
            setCommand(context, fl.COMMAND_SET_ACCEPT_TIME.f354a, arrayList, str);
        } else if (1 == PushMessageHelper.getPushMode(context)) {
            PushMessageHandler.a(context, str, fl.COMMAND_SET_ACCEPT_TIME.f354a, 0L, null, arrayList2);
        } else {
            PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(fl.COMMAND_SET_ACCEPT_TIME.f354a, arrayList2, 0L, null, null));
        }
    }

    public static void setAlias(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            setCommand(context, fl.COMMAND_SET_ALIAS.f354a, str, str2);
        }
    }

    protected static void setCommand(Context context, String str, String str2, String str3) {
        StringBuilder sb;
        String str4;
        fl flVar;
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
        }
        if (!fl.COMMAND_SET_ALIAS.f354a.equalsIgnoreCase(str) || Math.abs(System.currentTimeMillis() - aliasSetTime(context, str2)) >= 86400000) {
            if (fl.COMMAND_UNSET_ALIAS.f354a.equalsIgnoreCase(str) && aliasSetTime(context, str2) < 0) {
                sb = new StringBuilder();
                str4 = "Don't cancel alias for ";
            } else if (fl.COMMAND_SET_ACCOUNT.f354a.equalsIgnoreCase(str) && Math.abs(System.currentTimeMillis() - accountSetTime(context, str2)) < OpenStreetMapTileProviderConstants.ONE_HOUR) {
                if (1 != PushMessageHelper.getPushMode(context)) {
                    flVar = fl.COMMAND_SET_ACCOUNT;
                    PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(flVar.f354a, arrayList, 0L, null, str3));
                    return;
                }
                PushMessageHandler.a(context, str3, str, 0L, null, arrayList);
            } else if (!fl.COMMAND_UNSET_ACCOUNT.f354a.equalsIgnoreCase(str) || accountSetTime(context, str2) >= 0) {
                setCommand(context, str, arrayList, str3);
                return;
            } else {
                sb = new StringBuilder();
                str4 = "Don't cancel account for ";
            }
            sb.append(str4);
            sb.append(bo.a(arrayList.toString(), 3));
            sb.append(" is unseted");
            b.m1a(sb.toString());
            return;
        }
        if (1 != PushMessageHelper.getPushMode(context)) {
            flVar = fl.COMMAND_SET_ALIAS;
            PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(flVar.f354a, arrayList, 0L, null, str3));
            return;
        }
        PushMessageHandler.a(context, str3, str, 0L, null, arrayList);
    }

    protected static void setCommand(Context context, String str, ArrayList<String> arrayList, String str2) {
        if (!TextUtils.isEmpty(b.m36a(context).m37a())) {
            ip ipVar = new ip();
            String a2 = ba.a();
            ipVar.a(a2);
            ipVar.b(b.m36a(context).m37a());
            ipVar.c(str);
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                ipVar.m421a(it.next());
            }
            ipVar.e(str2);
            ipVar.d(context.getPackageName());
            b.e("cmd:" + str + ", " + a2);
            ao.a(context).a((ao) ipVar, hv.Command, (ii) null);
        }
    }

    public static void setLocalNotificationType(Context context, int i) {
        ao.a(context).b(i & (-1));
    }

    public static void setUserAccount(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            setCommand(context, fl.COMMAND_SET_ACCOUNT.f354a, str, str2);
        }
    }

    private static boolean shouldPullNotification(Context context) {
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_pull_notification", -1L)) > Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL;
    }

    private static boolean shouldSendRegRequest(Context context) {
        return Math.abs(System.currentTimeMillis() - context.getSharedPreferences("mipush_extra", 0).getLong("last_reg_request", -1L)) > 5000;
    }

    public static boolean shouldUseMIUIPush(Context context) {
        return ao.a(context).m29a();
    }

    public static void subscribe(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(b.m36a(context).m37a()) && !TextUtils.isEmpty(str)) {
            if (Math.abs(System.currentTimeMillis() - topicSubscribedTime(context, str)) > 86400000) {
                iz izVar = new iz();
                String a2 = ba.a();
                izVar.a(a2);
                izVar.b(b.m36a(context).m37a());
                izVar.c(str);
                izVar.d(context.getPackageName());
                izVar.e(str2);
                b.e("cmd:" + fl.COMMAND_SUBSCRIBE_TOPIC + ", " + a2);
                ao.a(context).a((ao) izVar, hv.Subscription, (ii) null);
            } else if (1 == PushMessageHelper.getPushMode(context)) {
                PushMessageHandler.a(context, str2, 0L, null, str);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(str);
                PushMessageHelper.sendCommandMessageBroadcast(context, PushMessageHelper.generateCommandMessage(fl.COMMAND_SUBSCRIBE_TOPIC.f354a, arrayList, 0L, null, null));
            }
        }
    }

    public static void syncAssembleCOSPushToken(Context context) {
        ao.a(context).a((String) null, au.UPLOAD_COS_TOKEN, e.ASSEMBLE_PUSH_COS);
    }

    public static void syncAssembleFCMPushToken(Context context) {
        ao.a(context).a((String) null, au.UPLOAD_FCM_TOKEN, e.ASSEMBLE_PUSH_FCM);
    }

    public static void syncAssembleFTOSPushToken(Context context) {
        ao.a(context).a((String) null, au.UPLOAD_FTOS_TOKEN, e.ASSEMBLE_PUSH_FTOS);
    }

    public static void syncAssemblePushToken(Context context) {
        ao.a(context).a((String) null, au.UPLOAD_HUAWEI_TOKEN, e.ASSEMBLE_PUSH_HUAWEI);
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
        i.c(context);
        ax.a(context).a();
        if (b.m36a(context).m43b()) {
            jb jbVar = new jb();
            jbVar.a(ba.a());
            jbVar.b(b.m36a(context).m37a());
            jbVar.c(b.m36a(context).m44c());
            jbVar.e(b.m36a(context).b());
            jbVar.d(context.getPackageName());
            ao.a(context).a(jbVar);
            PushMessageHandler.a();
            PushMessageHandler.b();
            b.m36a(context).m42b();
            clearLocalNotificationType(context);
            clearNotification(context);
            clearExtras(context);
        }
    }

    public static void unsetAlias(Context context, String str, String str2) {
        setCommand(context, fl.COMMAND_UNSET_ALIAS.f354a, str, str2);
    }

    public static void unsetUserAccount(Context context, String str, String str2) {
        setCommand(context, fl.COMMAND_UNSET_ACCOUNT.f354a, str, str2);
    }

    public static void unsubscribe(Context context, String str, String str2) {
        if (b.m36a(context).m43b()) {
            if (topicSubscribedTime(context, str) < 0) {
                b.m1a("Don't cancel subscribe for " + str + " is unsubscribed");
                return;
            }
            jd jdVar = new jd();
            String a2 = ba.a();
            jdVar.a(a2);
            jdVar.b(b.m36a(context).m37a());
            jdVar.c(str);
            jdVar.d(context.getPackageName());
            jdVar.e(str2);
            b.e("cmd:" + fl.COMMAND_UNSUBSCRIBE_TOPIC + ", " + a2);
            ao.a(context).a((ao) jdVar, hv.UnSubscription, (ii) null);
        }
    }

    private static void updateImeiOrOaid() {
        new Thread(new Runnable() { // from class: com.xiaomi.mipush.sdk.MiPushClient.3
            @Override // java.lang.Runnable
            public void run() {
                String d;
                if (l.m533d()) {
                    return;
                }
                if (i.d(MiPushClient.sContext) != null || az.a(MiPushClient.sContext).mo92a()) {
                    iu iuVar = new iu();
                    iuVar.b(b.m36a(MiPushClient.sContext).m37a());
                    iuVar.c(Cif.ClientInfoUpdate.f527a);
                    iuVar.a(ba.a());
                    iuVar.a(new HashMap());
                    String str = "";
                    if (!TextUtils.isEmpty(i.d(MiPushClient.sContext))) {
                        str = str + bo.a(d);
                    }
                    String f = i.f(MiPushClient.sContext);
                    if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(f)) {
                        str = str + Constants.ACCEPT_TIME_SEPARATOR_SP + f;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        iuVar.m446a().put(Constants.EXTRA_KEY_IMEI_MD5, str);
                    }
                    az.a(MiPushClient.sContext).a(iuVar.m446a());
                    int a2 = i.a();
                    if (a2 >= 0) {
                        iuVar.m446a().put("space_id", Integer.toString(a2));
                    }
                    ao.a(MiPushClient.sContext).a((ao) iuVar, hv.Notification, false, (ii) null);
                }
            }
        }).start();
    }
}

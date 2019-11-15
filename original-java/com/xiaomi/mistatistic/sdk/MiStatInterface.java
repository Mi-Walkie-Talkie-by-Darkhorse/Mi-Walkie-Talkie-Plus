package com.xiaomi.mistatistic.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mistatistic.sdk.controller.LocalEventRecorder;
import com.xiaomi.mistatistic.sdk.controller.a;
import com.xiaomi.mistatistic.sdk.controller.c;
import com.xiaomi.mistatistic.sdk.controller.d;
import com.xiaomi.mistatistic.sdk.controller.e;
import com.xiaomi.mistatistic.sdk.controller.f;
import com.xiaomi.mistatistic.sdk.controller.h;
import com.xiaomi.mistatistic.sdk.controller.l;
import com.xiaomi.mistatistic.sdk.controller.m;
import com.xiaomi.mistatistic.sdk.controller.o;
import com.xiaomi.mistatistic.sdk.controller.p;
import com.xiaomi.mistatistic.sdk.controller.q;
import com.xiaomi.mistatistic.sdk.data.g;
import java.util.Map;

public abstract class MiStatInterface {
    private static final String DEFAULT_CATEGORY = "default_category";
    public static final long MAX_UPLOAD_INTERVAL = 86400000;
    public static final long MIN_UPLOAD_INTERVAL = 60000;
    public static final int UPLOAD_POLICY_BATCH = 2;
    public static final int UPLOAD_POLICY_DEVELOPMENT = 5;
    public static final int UPLOAD_POLICY_INTERVAL = 4;
    public static final int UPLOAD_POLICY_REALTIME = 0;
    public static final int UPLOAD_POLICY_WHILE_INITIALIZE = 3;
    public static final int UPLOAD_POLICY_WIFI_ONLY = 1;
    private static boolean sABTestInitialized = false;
    private static boolean sInitialized = false;

    public static final void initialize(Context context, String str, String str2, String str3) {
        initialize(context, str, str2, str3, false);
    }

    public static final void initialize(Context context, String str, String str2, String str3, boolean z) {
        Log.d("MI_STAT", String.format("initialize %s, %s, %s, %s", new Object[]{context.getPackageName(), str, str3, Boolean.valueOf(z)}));
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("appID or appKey is empty.");
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = "mistats_default";
        }
        c.a(context, str, str2, str3);
        f.a();
        new e().a();
        p.a().b();
        sInitialized = true;
        if (z) {
            URLStatsRecorder.enableAutoRecord();
        }
    }

    public static void registerABTest(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        if (!q.a(context)) {
            Log.w("MI_STAT", "ABTest is NOT allow to register in background running");
            return;
        }
        a.a().b();
        sABTestInitialized = true;
        Log.i("MI_STAT", "ABTest register success");
    }

    public static final String getDeviceID(Context context) {
        return new e().a();
    }

    public static final void setUploadPolicy(int i, long j) {
        checkInitialized();
        if (i != 4 || (j >= 60000 && j <= 86400000)) {
            p.a().a(i, j);
            return;
        }
        throw new IllegalArgumentException("interval should be set between 1 minutes and 1 day");
    }

    public static final int getUploadPolicy() {
        checkInitialized();
        return p.a().g();
    }

    public static final void enableLog() {
        h.a();
    }

    private static final String replaceComma(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains(Constants.ACCEPT_TIME_SEPARATOR_SP)) {
            return str.replace(Constants.ACCEPT_TIME_SEPARATOR_SP, "");
        }
        return str;
    }

    public static final void recordPageStart(Context context, String str, String str2) {
        checkInitialized();
        if (!TextUtils.isEmpty(str) || (context instanceof Activity)) {
            d.a().a((d.a) new com.xiaomi.mistatistic.sdk.controller.asyncjobs.a());
            m.a().a(context, replaceComma(str), replaceComma(str2));
            if (context instanceof Activity) {
                o a = o.a();
                if (a.b()) {
                    a.a((Activity) context);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("pageName should't be null");
    }

    public static final void recordPageStart(Activity activity, String str) {
        checkInitialized();
        d.a().a((d.a) new com.xiaomi.mistatistic.sdk.controller.asyncjobs.a());
        m.a().a((Context) activity, replaceComma(str), "");
        o a = o.a();
        if (a.b()) {
            a.a(activity);
        }
    }

    public static final void recordPageStart(Context context, String str) {
        recordPageStart(context, str, "");
    }

    public static final void recordPageEnd() {
        recordPageEnd(null, "");
    }

    public static final void recordPageEnd(Context context, String str) {
        checkInitialized();
        m.a().a(context, str);
        o a = o.a();
        if (a.e()) {
            a.f();
        }
    }

    public static final void recordCountEvent(String str, String str2) {
        recordCountEvent(str, str2, null);
    }

    public static final void recordCountEvent(String str, String str2, Map<String, String> map) {
        checkInitialized();
        checkCategoryAndKey(str, str2);
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_CATEGORY;
        }
        LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.e(str, str2, map));
        com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
    }

    public static final void recordCalculateEvent(String str, String str2, long j) {
        recordCalculateEvent(str, str2, j, null);
    }

    public static final void recordCalculateEvent(String str, String str2, long j, Map<String, String> map) {
        String str3;
        checkInitialized();
        checkCategoryAndKey(str, str2);
        if (TextUtils.isEmpty(str)) {
            str3 = DEFAULT_CATEGORY;
        } else {
            str3 = str;
        }
        LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.c(str3, str2, j, map));
        com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
    }

    public static final void recordNumericPropertyEvent(String str, String str2, long j) {
        checkInitialized();
        checkCategoryAndKey(str, str2);
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_CATEGORY;
        }
        LocalEventRecorder.insertEvent(new g(str, str2, j));
        com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
    }

    public static final void recordStringPropertyEvent(String str, String str2, String str3) {
        checkInitialized();
        checkCategoryAndKey(str, str2);
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_CATEGORY;
        }
        LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.h(str, str2, str3));
        com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
    }

    public static final void triggerUploadManually() {
        checkInitialized();
        new l().a();
    }

    private static void checkInitialized() {
        if (!sInitialized) {
            throw new IllegalStateException("not initialized, do you forget to call initialize when application started?");
        }
    }

    private static boolean checkABTestInitialized() {
        if (!sABTestInitialized) {
            h.d("ABTEST - ABTest  is not registed, do you forget to call ABTestRegister when application started?");
        }
        return sABTestInitialized;
    }

    private static void checkCategoryAndKey(String str, String str2) {
        if (!TextUtils.isEmpty(str) && str.startsWith("mistat_")) {
            throw new IllegalArgumentException("category cannot start with mistat_");
        } else if (!TextUtils.isEmpty(str2) && str2.startsWith("mistat_")) {
            throw new IllegalArgumentException("key cannot start with mistat_");
        }
    }

    public static void enableExceptionCatcher(boolean z) {
        if (!isExceptionCatcherEnabled()) {
            b.a(false);
        }
        b.a(z ? 2 : 3);
    }

    public static boolean isExceptionCatcherEnabled() {
        return b.d() != 1;
    }

    public static boolean shouldExceptionUploadImmediately() {
        return b.d() == 2;
    }

    private static void throwExceptionIfDebuggable() {
        h.a("log event without pageStart/pageEnd, ignore.");
        if (isApkDebugable(c.a())) {
            throw new RuntimeException("record pageStart/pageEnd before recording events.");
        }
    }

    private static boolean isApkDebugable(Context context) {
        try {
            if ((context.getApplicationInfo().flags & 2) != 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static void enableGlobalUpload(boolean z) {
        checkInitialized();
        if (!q.d(c.a())) {
            q.a(z);
        }
    }

    protected static void recordCustomEvent(String str) {
        checkInitialized();
        if (!TextUtils.isEmpty(str)) {
            LocalEventRecorder.insertEvent(new com.xiaomi.mistatistic.sdk.data.d(str));
        }
        com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
    }

    public static void recordException(final Throwable th) {
        d.b().a((d.a) new d.a() {
            public void a() {
                new b().a(Thread.currentThread(), th);
            }
        });
        com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
    }

    public static final void setABTestGroupManually(int i, String str, String str2) {
        checkInitialized();
        if (checkABTestInitialized()) {
            a.a().b(str, str2, i);
        }
    }

    public static String getABTestControlValue(int i, String str, String str2) {
        checkInitialized();
        return !checkABTestInitialized() ? str2 : a.a().a(i, str, str2);
    }

    public static void recordABTestCountEvent(int i, String str) {
        checkInitialized();
        if (checkABTestInitialized()) {
            a.a().a(str, i);
        }
    }

    public static void recordABTestCalculateEvent(int i, String str, long j) {
        checkInitialized();
        if (checkABTestInitialized()) {
            a.a().a(str, j, i);
            com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
        }
    }

    public static void recordABTestStringPropertyEvent(int i, String str, String str2) {
        checkInitialized();
        if (checkABTestInitialized()) {
            a.a().a(str, str2, i);
            com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
        }
    }

    public static void recordABTestNumericEvent(int i, String str, long j) {
        checkInitialized();
        if (checkABTestInitialized()) {
            a.a().b(str, j, i);
            com.xiaomi.mistatistic.sdk.controller.asyncjobs.a.b();
        }
    }
}

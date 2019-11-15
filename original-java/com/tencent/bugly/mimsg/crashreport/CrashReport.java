package com.tencent.bugly.mimsg.crashreport;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.os.EnvironmentCompat;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.bugly.mimsg.BuglyStrategy;
import com.tencent.bugly.mimsg.BuglyStrategy.a;
import com.tencent.bugly.mimsg.CrashModule;
import com.tencent.bugly.mimsg.b;
import com.tencent.bugly.mimsg.crashreport.crash.BuglyBroadcastRecevier;
import com.tencent.bugly.mimsg.crashreport.crash.c;
import com.tencent.bugly.mimsg.crashreport.crash.h5.H5JavaScriptInterface;
import com.tencent.bugly.mimsg.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.mimsg.proguard.q;
import com.tencent.bugly.mimsg.proguard.w;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: BUGLY */
public class CrashReport {
    private static Context a;

    /* compiled from: BUGLY */
    public static class CrashHandleCallback extends a {
    }

    /* compiled from: BUGLY */
    public static class UserStrategy extends BuglyStrategy {
        private CrashHandleCallback a;

        public UserStrategy(Context context) {
        }

        public synchronized CrashHandleCallback getCrashHandleCallback() {
            return this.a;
        }

        public synchronized void setCrashHandleCallback(CrashHandleCallback crashHandleCallback) {
            this.a = crashHandleCallback;
        }
    }

    /* compiled from: BUGLY */
    public interface WebViewInterface {
        void addJavascriptInterface(H5JavaScriptInterface h5JavaScriptInterface, String str);

        CharSequence getContentDescription();

        String getUrl();

        void loadUrl(String str);

        void setJavaScriptEnabled(boolean z);
    }

    public static void enableBugly(boolean z) {
        b.a = z;
    }

    public static void initCrashReport(Context context) {
        a = context;
        b.a((com.tencent.bugly.mimsg.a) CrashModule.getInstance());
        b.a(context);
    }

    public static void initCrashReport(Context context, UserStrategy userStrategy) {
        a = context;
        b.a((com.tencent.bugly.mimsg.a) CrashModule.getInstance());
        b.a(context, userStrategy);
    }

    public static void initCrashReport(Context context, String str, boolean z) {
        if (context != null) {
            a = context;
            b.a((com.tencent.bugly.mimsg.a) CrashModule.getInstance());
            b.a(context, str, z, null);
        }
    }

    public static void initCrashReport(Context context, String str, boolean z, UserStrategy userStrategy) {
        if (context != null) {
            a = context;
            b.a((com.tencent.bugly.mimsg.a) CrashModule.getInstance());
            b.a(context, str, z, userStrategy);
        }
    }

    public static String getBuglyVersion(Context context) {
        if (context == null) {
            x.d("Please call with context.", new Object[0]);
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        com.tencent.bugly.mimsg.crashreport.common.info.a.a(context);
        return com.tencent.bugly.mimsg.crashreport.common.info.a.c();
    }

    public static void testJavaCrash() {
        if (!b.a) {
            Log.w(x.a, "Can not test Java crash because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            com.tencent.bugly.mimsg.crashreport.common.info.a b = com.tencent.bugly.mimsg.crashreport.common.info.a.b();
            if (b != null) {
                b.b(24096);
            }
            throw new RuntimeException("This Crash create for Test! You can go to Bugly see more detail!");
        }
    }

    public static void testNativeCrash() {
        if (!b.a) {
            Log.w(x.a, "Can not test native crash because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            x.a("start to create a native crash for test!", new Object[0]);
            c.a().j();
        }
    }

    public static void testANRCrash() {
        if (!b.a) {
            Log.w(x.a, "Can not test ANR crash because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            x.a("start to create a anr crash for test!", new Object[0]);
            c.a().k();
        }
    }

    public static void postCatchedException(Throwable th) {
        postCatchedException(th, Thread.currentThread(), false);
    }

    public static void postCatchedException(Throwable th, Thread thread) {
        postCatchedException(th, thread, false);
    }

    public static void postCatchedException(Throwable th, Thread thread, boolean z) {
        Thread thread2;
        if (!b.a) {
            Log.w(x.a, "Can not post crash caught because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else if (th == null) {
            x.d("throwable is null, just return", new Object[0]);
        } else {
            if (thread == null) {
                thread2 = Thread.currentThread();
            } else {
                thread2 = thread;
            }
            c.a().a(thread2, th, false, (String) null, (byte[]) null, z);
        }
    }

    public static void closeNativeReport() {
        if (!b.a) {
            Log.w(x.a, "Can not close native report because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            c.a().f();
        }
    }

    public static void startCrashReport() {
        if (!b.a) {
            Log.w(x.a, "Can not start crash report because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.w(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            c.a().c();
        }
    }

    public static void closeCrashReport() {
        if (!b.a) {
            Log.w(x.a, "Can not close crash report because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.w(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            c.a().d();
        }
    }

    public static void closeBugly() {
        if (!b.a) {
            Log.w(x.a, "Can not close bugly because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.w(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else if (a != null) {
            BuglyBroadcastRecevier instance = BuglyBroadcastRecevier.getInstance();
            if (instance != null) {
                instance.unregister(a);
            }
            closeCrashReport();
            com.tencent.bugly.mimsg.crashreport.biz.b.a(a);
            w a2 = w.a();
            if (a2 != null) {
                a2.b();
            }
        }
    }

    public static void setUserSceneTag(Context context, int i) {
        if (!b.a) {
            Log.w(x.a, "Can not set tag caught because bugly is disable.");
        } else if (context == null) {
            Log.e(x.a, "setTag args context should not be null");
        } else {
            if (i <= 0) {
                x.d("setTag args tagId should > 0", new Object[0]);
            }
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).a(i);
            x.b("[param] set user scene tag: %d", Integer.valueOf(i));
        }
    }

    public static int getUserSceneTagId(Context context) {
        if (!b.a) {
            Log.w(x.a, "Can not get user scene tag because bugly is disable.");
            return -1;
        } else if (context != null) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).F();
        } else {
            Log.e(x.a, "getUserSceneTagId args context should not be null");
            return -1;
        }
    }

    public static String getUserData(Context context, String str) {
        if (!b.a) {
            Log.w(x.a, "Can not get user data because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } else if (context == null) {
            Log.e(x.a, "getUserDataValue args context should not be null");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } else if (z.a(str)) {
            return null;
        } else {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).g(str);
        }
    }

    public static void putUserData(Context context, String str, String str2) {
        if (!b.a) {
            Log.w(x.a, "Can not put user data because bugly is disable.");
        } else if (context == null) {
            Log.w(x.a, "putUserData args context should not be null");
        } else if (str == null) {
            str;
            x.d("putUserData args key should not be null or empty", new Object[0]);
        } else if (str2 == null) {
            str2;
            x.d("putUserData args value should not be null", new Object[0]);
        } else if (!str.matches("[a-zA-Z[0-9]]+")) {
            x.d("putUserData args key should match [a-zA-Z[0-9]]+  {" + str + "}", new Object[0]);
        } else {
            if (str2.length() > 200) {
                x.d("user data value length over limit %d, it will be cutted!", Integer.valueOf(200));
                str2 = str2.substring(0, 200);
            }
            com.tencent.bugly.mimsg.crashreport.common.info.a a2 = com.tencent.bugly.mimsg.crashreport.common.info.a.a(context);
            if (a2.C().contains(str)) {
                NativeCrashHandler instance = NativeCrashHandler.getInstance();
                if (instance != null) {
                    instance.putKeyValueToNative(str, str2);
                }
                com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).b(str, str2);
                x.c("replace KV %s %s", str, str2);
            } else if (a2.B() >= 10) {
                x.d("user data size is over limit %d, it will be cutted!", Integer.valueOf(10));
            } else {
                if (str.length() > 50) {
                    x.d("user data key length over limit %d , will drop this new key %s", Integer.valueOf(50), str);
                    str = str.substring(0, 50);
                }
                NativeCrashHandler instance2 = NativeCrashHandler.getInstance();
                if (instance2 != null) {
                    instance2.putKeyValueToNative(str, str2);
                }
                com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).b(str, str2);
                x.b("[param] set user data: %s - %s", str, str2);
            }
        }
    }

    public static String removeUserData(Context context, String str) {
        if (!b.a) {
            Log.w(x.a, "Can not remove user data because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } else if (context == null) {
            Log.e(x.a, "removeUserData args context should not be null");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } else if (z.a(str)) {
            return null;
        } else {
            x.b("[param] remove user data: %s", str);
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).f(str);
        }
    }

    public static Set<String> getAllUserDataKeys(Context context) {
        if (!b.a) {
            Log.w(x.a, "Can not get all keys of user data because bugly is disable.");
            return new HashSet();
        } else if (context != null) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).C();
        } else {
            Log.e(x.a, "getAllUserDataKeys args context should not be null");
            return new HashSet();
        }
    }

    public static int getUserDatasSize(Context context) {
        if (!b.a) {
            Log.w(x.a, "Can not get size of user data because bugly is disable.");
            return -1;
        } else if (context != null) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).B();
        } else {
            Log.e(x.a, "getUserDatasSize args context should not be null");
            return -1;
        }
    }

    public static String getAppID() {
        if (!b.a) {
            Log.w(x.a, "Can not get App ID because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } else if (CrashModule.hasInitialized()) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(a).f();
        } else {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static void setUserId(String str) {
        if (!b.a) {
            Log.w(x.a, "Can not set user ID because bugly is disable.");
        } else if (!CrashModule.hasInitialized()) {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            setUserId(a, str);
        }
    }

    public static void setUserId(Context context, String str) {
        if (!b.a) {
            Log.w(x.a, "Can not set user ID because bugly is disable.");
        } else if (context == null) {
            Log.e(x.a, "Context should not be null when bugly has not been initialed!");
        } else if (str == null) {
            x.d("userId should not be null", new Object[0]);
        } else {
            if (str.length() > 100) {
                String substring = str.substring(0, 100);
                x.d("userId %s length is over limit %d substring to %s", str, Integer.valueOf(100), substring);
                str = substring;
            }
            if (!str.equals(com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).g())) {
                com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).b(str);
                x.b("[user] set userId : %s", str);
                NativeCrashHandler instance = NativeCrashHandler.getInstance();
                if (instance != null) {
                    instance.setNativeUserId(str);
                }
                if (CrashModule.hasInitialized()) {
                    com.tencent.bugly.mimsg.crashreport.biz.b.a();
                }
            }
        }
    }

    public static String getUserId() {
        if (!b.a) {
            Log.w(x.a, "Can not get user ID because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } else if (CrashModule.hasInitialized()) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(a).g();
        } else {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static String getAppVer() {
        if (!b.a) {
            Log.w(x.a, "Can not get app version because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } else if (CrashModule.hasInitialized()) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(a).j;
        } else {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static String getAppChannel() {
        if (!b.a) {
            Log.w(x.a, "Can not get App channel because bugly is disable.");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        } else if (CrashModule.hasInitialized()) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(a).l;
        } else {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public static void setContext(Context context) {
        a = context;
    }

    public static boolean isLastSessionCrash() {
        if (!b.a) {
            Log.w(x.a, "The info 'isLastSessionCrash' is not accurate because bugly is disable.");
            return false;
        } else if (CrashModule.hasInitialized()) {
            return c.a().b();
        } else {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return false;
        }
    }

    public static void setSdkExtraData(Context context, String str, String str2) {
        if (!b.a) {
            Log.w(x.a, "Can not put SDK extra data because bugly is disable.");
        } else if (context != null && !z.a(str) && !z.a(str2)) {
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).a(str, str2);
        }
    }

    public static Map<String, String> getSdkExtraData() {
        if (!b.a) {
            Log.w(x.a, "Can not get SDK extra data because bugly is disable.");
            return new HashMap();
        } else if (CrashModule.hasInitialized()) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(a).A;
        } else {
            Log.e(x.a, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return null;
        }
    }

    public static Map<String, String> getSdkExtraData(Context context) {
        if (!b.a) {
            Log.w(x.a, "Can not get SDK extra data because bugly is disable.");
            return new HashMap();
        } else if (context != null) {
            return com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).A;
        } else {
            x.d("Context should not be null.", new Object[0]);
            return null;
        }
    }

    private static void putSdkData(Context context, String str, String str2) {
        if (context != null && !z.a(str) && !z.a(str2)) {
            String replace = str.replace("[a-zA-Z[0-9]]+", "");
            if (replace.length() > 100) {
                Log.w(x.a, String.format("putSdkData key length over limit %d, will be cutted.", new Object[]{Integer.valueOf(50)}));
                replace = replace.substring(0, 50);
            }
            if (str2.length() > 500) {
                Log.w(x.a, String.format("putSdkData value length over limit %d, will be cutted!", new Object[]{Integer.valueOf(200)}));
                str2 = str2.substring(0, 200);
            }
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).c(replace, str2);
            x.b(String.format("[param] putSdkData data: %s - %s", new Object[]{replace, str2}), new Object[0]);
        }
    }

    public static void setIsAppForeground(Context context, boolean z) {
        if (!b.a) {
            Log.w(x.a, "Can not set 'isAppForeground' because bugly is disable.");
        } else if (context == null) {
            x.d("Context should not be null.", new Object[0]);
        } else {
            if (z) {
                x.c("App is in foreground.", new Object[0]);
            } else {
                x.c("App is in background.", new Object[0]);
            }
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).a(z);
        }
    }

    public static void setIsDevelopmentDevice(Context context, boolean z) {
        if (!b.a) {
            Log.w(x.a, "Can not set 'isDevelopmentDevice' because bugly is disable.");
        } else if (context == null) {
            x.d("Context should not be null.", new Object[0]);
        } else {
            if (z) {
                x.c("This is a development device.", new Object[0]);
            } else {
                x.c("This is not a development device.", new Object[0]);
            }
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).y = z;
        }
    }

    public static void setSessionIntervalMills(long j) {
        if (!b.a) {
            Log.w(x.a, "Can not set 'SessionIntervalMills' because bugly is disable.");
        } else {
            com.tencent.bugly.mimsg.crashreport.biz.b.a(j);
        }
    }

    public static void setAppVersion(Context context, String str) {
        if (!b.a) {
            Log.w(x.a, "Can not set App version because bugly is disable.");
        } else if (context == null) {
            Log.w(x.a, "setAppVersion args context should not be null");
        } else if (str == null) {
            Log.w(x.a, "App version is null, will not set");
        } else {
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).j = str;
            NativeCrashHandler instance = NativeCrashHandler.getInstance();
            if (instance != null) {
                instance.setNativeAppVersion(str);
            }
        }
    }

    public static void setAppChannel(Context context, String str) {
        if (!b.a) {
            Log.w(x.a, "Can not set App channel because Bugly is disable.");
        } else if (context == null) {
            Log.w(x.a, "setAppChannel args context should not be null");
        } else if (str == null) {
            Log.w(x.a, "App channel is null, will not set");
        } else {
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).l = str;
            NativeCrashHandler instance = NativeCrashHandler.getInstance();
            if (instance != null) {
                instance.setNativeAppChannel(str);
            }
        }
    }

    public static void setAppPackage(Context context, String str) {
        if (!b.a) {
            Log.w(x.a, "Can not set App package because bugly is disable.");
        } else if (context == null) {
            Log.w(x.a, "setAppPackage args context should not be null");
        } else if (str == null) {
            Log.w(x.a, "App package is null, will not set");
        } else {
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).c = str;
            NativeCrashHandler instance = NativeCrashHandler.getInstance();
            if (instance != null) {
                instance.setNativeAppPackage(str);
            }
        }
    }

    public static void setCrashFilter(String str) {
        if (!b.a) {
            Log.w(x.a, "Can not set App package because bugly is disable.");
            return;
        }
        Log.w(x.a, "Set crash stack filter: " + str);
        c.m = str;
    }

    public static void setCrashRegularFilter(String str) {
        if (!b.a) {
            Log.w(x.a, "Can not set App package because bugly is disable.");
            return;
        }
        Log.w(x.a, "Set crash stack filter: " + str);
        c.n = str;
    }

    public static void setBuglyDbName(String str) {
        if (!b.a) {
            Log.w(x.a, "Can not set DB name because bugly is disable.");
            return;
        }
        Log.i(x.a, "Set Bugly DB name: " + str);
        q.a = str;
    }

    public static void setAuditEnable(Context context, boolean z) {
        if (!b.a) {
            Log.w(x.a, "Can not set App package because bugly is disable.");
        } else if (context == null) {
            Log.w(x.a, "setAppPackage args context should not be null");
        } else {
            Log.i(x.a, "Set audit enable: " + z);
            com.tencent.bugly.mimsg.crashreport.common.info.a.a(context).B = z;
        }
    }

    public static boolean setJavascriptMonitor(WebView webView, boolean z) {
        return setJavascriptMonitor(webView, z, false);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public static boolean setJavascriptMonitor(final WebView webView, boolean z, boolean z2) {
        if (webView != null) {
            return setJavascriptMonitor((WebViewInterface) new WebViewInterface() {
                public final String getUrl() {
                    return webView.getUrl();
                }

                public final void setJavaScriptEnabled(boolean z) {
                    WebSettings settings = webView.getSettings();
                    if (!settings.getJavaScriptEnabled()) {
                        settings.setJavaScriptEnabled(true);
                    }
                }

                public final void loadUrl(String str) {
                    webView.loadUrl(str);
                }

                public final void addJavascriptInterface(H5JavaScriptInterface h5JavaScriptInterface, String str) {
                    webView.addJavascriptInterface(h5JavaScriptInterface, str);
                }

                public final CharSequence getContentDescription() {
                    return webView.getContentDescription();
                }
            }, z, z2);
        }
        Log.w(x.a, "WebView is null.");
        return false;
    }

    public static boolean setJavascriptMonitor(WebViewInterface webViewInterface, boolean z) {
        return setJavascriptMonitor(webViewInterface, z, false);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public static boolean setJavascriptMonitor(WebViewInterface webViewInterface, boolean z, boolean z2) {
        if (webViewInterface == null) {
            Log.w(x.a, "WebViewInterface is null.");
            return false;
        } else if (!CrashModule.hasInitialized()) {
            x.e("CrashReport has not been initialed! please to call method 'initCrashReport' first!", new Object[0]);
            return false;
        } else {
            x.a("Set Javascript exception monitor of webview.", new Object[0]);
            if (!b.a) {
                Log.w(x.a, "Can not set JavaScript monitor because bugly is disable.");
                return false;
            }
            x.c("URL of webview is %s", webViewInterface.getUrl());
            if (z2 || VERSION.SDK_INT >= 19) {
                x.a("Enable the javascript needed by webview monitor.", new Object[0]);
                webViewInterface.setJavaScriptEnabled(true);
                H5JavaScriptInterface instance = H5JavaScriptInterface.getInstance(webViewInterface);
                if (instance != null) {
                    x.a("Add a secure javascript interface to the webview.", new Object[0]);
                    webViewInterface.addJavascriptInterface(instance, "exceptionUploader");
                }
                if (z) {
                    x.a("Inject bugly.js(v%s) to the webview.", com.tencent.bugly.mimsg.crashreport.crash.h5.b.b());
                    String a2 = com.tencent.bugly.mimsg.crashreport.crash.h5.b.a();
                    if (a2 == null) {
                        x.e("Failed to inject Bugly.js.", com.tencent.bugly.mimsg.crashreport.crash.h5.b.b());
                        return false;
                    }
                    webViewInterface.loadUrl("javascript:" + a2);
                }
                return true;
            }
            x.e("This interface is only available for Android 4.4 or later.", new Object[0]);
            return false;
        }
    }
}

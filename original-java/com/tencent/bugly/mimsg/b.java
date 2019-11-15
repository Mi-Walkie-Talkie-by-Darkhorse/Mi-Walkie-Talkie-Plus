package com.tencent.bugly.mimsg;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.data.Error;
import com.tencent.bugly.mimsg.crashreport.common.info.a;
import com.tencent.bugly.mimsg.proguard.n;
import com.tencent.bugly.mimsg.proguard.o;
import com.tencent.bugly.mimsg.proguard.p;
import com.tencent.bugly.mimsg.proguard.u;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.y;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
public final class b {
    public static boolean a = true;
    public static List<a> b = new ArrayList();
    public static boolean c;
    private static p d;
    private static boolean e;

    private static boolean a(a aVar) {
        String str;
        List<String> list = aVar.o;
        aVar.getClass();
        if ("mimsg".equals("")) {
            str = "bugly";
        } else {
            aVar.getClass();
            str = "mimsg";
        }
        if (list == null || !list.contains(str)) {
            return false;
        }
        return true;
    }

    public static synchronized void a(Context context) {
        synchronized (b.class) {
            a(context, null);
        }
    }

    public static synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        synchronized (b.class) {
            if (e) {
                x.d("[init] initial Multi-times, ignore this.", new Object[0]);
            } else if (context == null) {
                Log.w(x.a, "[init] context of init() is null, check it.");
            } else {
                a a2 = a.a(context);
                if (a(a2)) {
                    a = false;
                } else {
                    String f = a2.f();
                    if (f == null) {
                        Log.e(x.a, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set.");
                    } else {
                        a(context, f, a2.u, buglyStrategy);
                    }
                }
            }
        }
    }

    public static synchronized void a(Context context, String str, boolean z, BuglyStrategy buglyStrategy) {
        String str2;
        String str3;
        String str4;
        String str5;
        synchronized (b.class) {
            if (e) {
                x.d("[init] initial Multi-times, ignore this.", new Object[0]);
            } else if (context == null) {
                Log.w(x.a, "[init] context is null, check it.");
            } else if (str == null) {
                Log.e(x.a, "init arg 'crashReportAppID' should not be null!");
            } else {
                e = true;
                if (z) {
                    c = true;
                    x.b = true;
                    x.d("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new Object[0]);
                    x.e("--------------------------------------------------------------------------------------------", new Object[0]);
                    x.d("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new Object[0]);
                    x.d("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new Object[0]);
                    x.d("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new Object[0]);
                    x.d("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new Object[0]);
                    x.e("--------------------------------------------------------------------------------------------", new Object[0]);
                    x.b("[init] Open debug mode of Bugly.", new Object[0]);
                }
                x.a("[init] Bugly version: v%s", "2.6.5");
                x.a("mimsg crash report start initializing...", new Object[0]);
                x.b("[init] Bugly start initializing...", new Object[0]);
                x.a("[init] Bugly complete version: v%s", "2.6.5");
                Context a2 = z.a(context);
                a a3 = a.a(a2);
                a3.t();
                y.a(a2);
                d = p.a(a2, b);
                u.a(a2);
                com.tencent.bugly.mimsg.crashreport.common.strategy.a a4 = com.tencent.bugly.mimsg.crashreport.common.strategy.a.a(a2, b);
                n a5 = n.a(a2);
                if (a(a3)) {
                    a = false;
                } else {
                    a3.a(str);
                    x.a("[param] Set APP ID:%s", str);
                    if (buglyStrategy != null) {
                        String appVersion = buglyStrategy.getAppVersion();
                        if (!TextUtils.isEmpty(appVersion)) {
                            if (appVersion.length() > 100) {
                                str5 = appVersion.substring(0, 100);
                                x.d("appVersion %s length is over limit %d substring to %s", appVersion, Integer.valueOf(100), str5);
                            } else {
                                str5 = appVersion;
                            }
                            a3.j = str5;
                            x.a("[param] Set App version: %s", buglyStrategy.getAppVersion());
                        }
                        try {
                            if (buglyStrategy.isReplaceOldChannel()) {
                                String appChannel = buglyStrategy.getAppChannel();
                                if (!TextUtils.isEmpty(appChannel)) {
                                    if (appChannel.length() > 100) {
                                        String substring = appChannel.substring(0, 100);
                                        x.d("appChannel %s length is over limit %d substring to %s", appChannel, Integer.valueOf(100), substring);
                                        str4 = substring;
                                    } else {
                                        str4 = appChannel;
                                    }
                                    d.a((int) Error.TLV_WRONG_DECOMPRESS_LENGTH, "app_channel", str4.getBytes(), (o) null, false);
                                    a3.l = str4;
                                }
                            } else {
                                Map a6 = d.a((int) Error.TLV_WRONG_DECOMPRESS_LENGTH, (o) null, true);
                                if (a6 != null) {
                                    byte[] bArr = (byte[]) a6.get("app_channel");
                                    if (bArr != null) {
                                        a3.l = new String(bArr);
                                    }
                                }
                            }
                            x.a("[param] Set App channel: %s", a3.l);
                        } catch (Exception e2) {
                            if (c) {
                                ThrowableExtension.printStackTrace(e2);
                            }
                        }
                        String appPackageName = buglyStrategy.getAppPackageName();
                        if (!TextUtils.isEmpty(appPackageName)) {
                            if (appPackageName.length() > 100) {
                                str3 = appPackageName.substring(0, 100);
                                x.d("appPackageName %s length is over limit %d substring to %s", appPackageName, Integer.valueOf(100), str3);
                            } else {
                                str3 = appPackageName;
                            }
                            a3.c = str3;
                            x.a("[param] Set App package: %s", buglyStrategy.getAppPackageName());
                        }
                        String deviceID = buglyStrategy.getDeviceID();
                        if (deviceID != null) {
                            if (deviceID.length() > 100) {
                                str2 = deviceID.substring(0, 100);
                                x.d("deviceId %s length is over limit %d substring to %s", deviceID, Integer.valueOf(100), str2);
                            } else {
                                str2 = deviceID;
                            }
                            a3.c(str2);
                            x.a("s[param] Set device ID: %s", str2);
                        }
                        a3.e = buglyStrategy.isUploadProcess();
                        y.a = buglyStrategy.isBuglyLogUpload();
                    }
                    com.tencent.bugly.mimsg.crashreport.biz.b.a(a2, buglyStrategy);
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < b.size()) {
                            try {
                                if (a5.a(((a) b.get(i2)).id)) {
                                    ((a) b.get(i2)).init(a2, z, buglyStrategy);
                                }
                            } catch (Throwable th) {
                                if (!x.a(th)) {
                                    ThrowableExtension.printStackTrace(th);
                                }
                            }
                            i = i2 + 1;
                        } else {
                            a4.a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0);
                            x.b("[init] Bugly initialization finished.", new Object[0]);
                        }
                    }
                }
            }
        }
    }

    public static synchronized void a(a aVar) {
        synchronized (b.class) {
            if (!b.contains(aVar)) {
                b.add(aVar);
            }
        }
    }
}

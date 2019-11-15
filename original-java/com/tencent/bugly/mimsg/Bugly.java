package com.tencent.bugly.mimsg;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mi.milinkforgame.sdk.data.Error;
import com.tencent.bugly.mimsg.crashreport.common.info.a;
import com.tencent.bugly.mimsg.proguard.o;
import com.tencent.bugly.mimsg.proguard.p;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.Map;

/* compiled from: BUGLY */
public class Bugly {
    public static final String SDK_IS_DEV = "false";
    private static boolean a;
    public static Context applicationContext = null;
    private static String[] b = {"BuglyCrashModule", "BuglyRqdModule", "BuglyBetaModule"};
    private static String[] c = {"BuglyRqdModule", "BuglyCrashModule", "BuglyBetaModule"};
    public static boolean enable = true;
    public static Boolean isDev;

    public static void init(Context context, String str, boolean z) {
        init(context, str, z, null);
    }

    public static synchronized void init(Context context, String str, boolean z, BuglyStrategy buglyStrategy) {
        String[] strArr;
        synchronized (Bugly.class) {
            if (!a) {
                a = true;
                Context a2 = z.a(context);
                applicationContext = a2;
                if (a2 == null) {
                    Log.e(x.a, "init arg 'context' should not be null!");
                } else {
                    if (isDev()) {
                        b = c;
                    }
                    for (String str2 : b) {
                        try {
                            if (str2.equals("BuglyCrashModule")) {
                                b.a((a) CrashModule.getInstance());
                            } else if (!str2.equals("BuglyBetaModule") && !str2.equals("BuglyRqdModule")) {
                                str2.equals("BuglyFeedbackModule");
                            }
                        } catch (Throwable th) {
                            x.b(th);
                        }
                    }
                    b.a = enable;
                    b.a(applicationContext, str, z, buglyStrategy);
                }
            }
        }
    }

    public static synchronized String getAppChannel() {
        String str = null;
        synchronized (Bugly.class) {
            a b2 = a.b();
            if (b2 != null) {
                if (TextUtils.isEmpty(b2.l)) {
                    p a2 = p.a();
                    if (a2 == null) {
                        str = b2.l;
                    } else {
                        Map a3 = a2.a((int) Error.TLV_WRONG_DECOMPRESS_LENGTH, (o) null, true);
                        if (a3 != null) {
                            byte[] bArr = (byte[]) a3.get("app_channel");
                            if (bArr != null) {
                                str = new String(bArr);
                            }
                        }
                    }
                }
                str = b2.l;
            }
        }
        return str;
    }

    public static boolean isDev() {
        if (isDev == null) {
            isDev = Boolean.valueOf(Boolean.parseBoolean(SDK_IS_DEV.replace("@", "")));
        }
        return isDev.booleanValue();
    }
}

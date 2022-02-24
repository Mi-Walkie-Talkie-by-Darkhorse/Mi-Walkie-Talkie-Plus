package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
public class COSPushHelper {

    /* renamed from: a  reason: collision with root package name */
    private static long f8665a = 0;

    /* renamed from: a  reason: collision with other field name */
    private static volatile boolean f22a = false;

    public static void convertMessage(Intent intent) {
        i.a(intent);
    }

    public static void doInNetworkChange(Context context) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (getNeedRegister()) {
            long j = f8665a;
            if (j <= 0 || j + Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL <= elapsedRealtime) {
                f8665a = elapsedRealtime;
                registerCOSAssemblePush(context);
            }
        }
    }

    public static boolean getNeedRegister() {
        return f22a;
    }

    public static boolean hasNetwork(Context context) {
        return i.m58a(context);
    }

    public static void onNotificationMessageCome(Context context, String str) {
    }

    public static void onPassThoughMessageCome(Context context, String str) {
    }

    public static void registerCOSAssemblePush(Context context) {
        AbstractPushManager a2 = f.a(context).a(e.ASSEMBLE_PUSH_COS);
        if (a2 != null) {
            b.m1a("ASSEMBLE_PUSH :  register cos when network change!");
            a2.register();
        }
    }

    public static synchronized void setNeedRegister(boolean z) {
        synchronized (COSPushHelper.class) {
            f22a = z;
        }
    }

    public static void uploadToken(Context context, String str) {
        i.m57a(context, e.ASSEMBLE_PUSH_COS, str);
    }
}

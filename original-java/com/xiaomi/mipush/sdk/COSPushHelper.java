package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* loaded from: classes2.dex */
public class COSPushHelper {

    /* renamed from: a */
    private static long f20850a = 0;

    /* renamed from: a */
    private static volatile boolean f20851a = false;

    public static void convertMessage(Intent intent) {
        C5946i.m3863a(intent);
    }

    public static void doInNetworkChange(Context context) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (getNeedRegister()) {
            long j = f20850a;
            if (j <= 0 || j + Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL <= elapsedRealtime) {
                f20850a = elapsedRealtime;
                registerCOSAssemblePush(context);
            }
        }
    }

    public static boolean getNeedRegister() {
        return f20851a;
    }

    public static boolean hasNetwork(Context context) {
        return C5946i.m3872a(context);
    }

    public static void onNotificationMessageCome(Context context, String str) {
    }

    public static void onPassThoughMessageCome(Context context, String str) {
    }

    public static void registerCOSAssemblePush(Context context) {
        AbstractPushManager m3883a = C5943f.m3885a(context).m3883a(EnumC5942e.ASSEMBLE_PUSH_COS);
        if (m3883a != null) {
            AbstractC5876b.m4147a("ASSEMBLE_PUSH :  register cos when network change!");
            m3883a.register();
        }
    }

    public static synchronized void setNeedRegister(boolean z) {
        synchronized (COSPushHelper.class) {
            f20851a = z;
        }
    }

    public static void uploadToken(Context context, String str) {
        C5946i.m3866a(context, EnumC5942e.ASSEMBLE_PUSH_COS, str);
    }
}

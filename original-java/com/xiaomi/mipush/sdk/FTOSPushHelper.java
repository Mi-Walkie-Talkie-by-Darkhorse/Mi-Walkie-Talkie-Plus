package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.Map;

/* loaded from: classes2.dex */
public class FTOSPushHelper {

    /* renamed from: a */
    private static long f20852a = 0;

    /* renamed from: a */
    private static volatile boolean f20853a = false;

    /* renamed from: a */
    private static void m4077a(Context context) {
        AbstractPushManager m3883a = C5943f.m3885a(context).m3883a(EnumC5942e.ASSEMBLE_PUSH_FTOS);
        if (m3883a != null) {
            AbstractC5876b.m4147a("ASSEMBLE_PUSH :  register fun touch os when network change!");
            m3883a.register();
        }
    }

    public static void doInNetworkChange(Context context) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (getNeedRegister()) {
            long j = f20852a;
            if (j <= 0 || j + Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL <= elapsedRealtime) {
                f20852a = elapsedRealtime;
                m4077a(context);
            }
        }
    }

    public static boolean getNeedRegister() {
        return f20853a;
    }

    public static boolean hasNetwork(Context context) {
        return C5946i.m3872a(context);
    }

    public static void notifyFTOSNotificationClicked(Context context, Map<String, String> map) {
        PushMessageReceiver m3874a;
        if (map == null || !map.containsKey("pushMsg")) {
            return;
        }
        String str = map.get("pushMsg");
        if (TextUtils.isEmpty(str) || (m3874a = C5946i.m3874a(context)) == null) {
            return;
        }
        MiPushMessage m3858a = C5946i.m3858a(str);
        if (m3858a.getExtra().containsKey("notify_effect")) {
            return;
        }
        m3874a.onNotificationMessageClicked(context, m3858a);
    }

    public static void setNeedRegister(boolean z) {
        f20853a = z;
    }

    public static void uploadToken(Context context, String str) {
        C5946i.m3866a(context, EnumC5942e.ASSEMBLE_PUSH_FTOS, str);
    }
}

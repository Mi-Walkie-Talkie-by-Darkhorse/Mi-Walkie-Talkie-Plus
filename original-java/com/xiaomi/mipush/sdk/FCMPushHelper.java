package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6267iy;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.service.AbstractC6391bh;
import com.xiaomi.push.service.C6350aj;
import com.xiaomi.push.service.C6447m;
import com.xiaomi.push.service.C6464w;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class FCMPushHelper {
    /* renamed from: a */
    private static Map<String, String> m4082a(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("actionType", String.valueOf(EnumC6237hv.AckMessage.m2566a()));
        hashMap.put("deviceStatus", String.valueOf((int) C6278jf.m1934a(context, context.getPackageName())));
        hashMap.put("mat", Long.toString(System.currentTimeMillis()));
        return hashMap;
    }

    /* renamed from: a */
    private static void m4080a(Context context, C6260ir c6260ir) {
        try {
            MiPushMessage generateMessage = PushMessageHelper.generateMessage((C6267iy) C5922ai.m4019a(context, c6260ir), c6260ir.m2233a(), false);
            PushMessageReceiver m3874a = C5946i.m3874a(context);
            if (m3874a != null) {
                m3874a.onNotificationMessageArrived(context, generateMessage);
            }
        } catch (Throwable th) {
            AbstractC5876b.m4144a("fcm broadcast notification come error ", th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m4079a(Context context, byte[] bArr) {
        String format;
        boolean m3989a = C5928ao.m3984a(context).m3989a();
        boolean z = true;
        boolean z2 = !"com.xiaomi.xmsf".equals(context.getPackageName());
        boolean m4081a = m4081a(context);
        boolean z3 = false;
        if (m3989a && z2 && m4081a) {
            bArr = C6447m.m1344a(bArr, C5938b.m3923a(context).m3907d());
            if (bArr != null) {
                String encodeToString = Base64.encodeToString(bArr, 2);
                if (TextUtils.isEmpty(encodeToString)) {
                    AbstractC5876b.m4147a("fcm message buf base64 encode failed");
                    z = false;
                } else {
                    Intent intent = new Intent(AbstractC6391bh.f23088n);
                    intent.setPackage("com.xiaomi.xmsf");
                    intent.setClassName("com.xiaomi.xmsf", "com.xiaomi.push.service.XMPushService");
                    intent.putExtra("ext_fcm_container_buffer", encodeToString);
                    intent.putExtra("mipush_app_package", context.getPackageName());
                    context.startService(intent);
                    AbstractC5876b.m4147a("fcm message reroute to xmsf");
                }
                z3 = z;
                if (z3) {
                    AbstractC5876b.m4141b("fcm message post local");
                    C6350aj.m1678a(context, C6464w.m1252a(bArr), bArr);
                    return;
                }
                return;
            }
            format = "fcm message encrypt failed";
        } else {
            format = String.format("xmsf can not receive fcm msg - shouldUseMIUIPush=%s;isNotXmsf=%s;xmsfSupport=%s", Boolean.valueOf(m3989a), Boolean.valueOf(z2), Boolean.valueOf(m4081a));
        }
        AbstractC5876b.m4147a(format);
        if (z3) {
        }
    }

    /* renamed from: a */
    private static boolean m4081a(Context context) {
        return ((long) C6306l.m1843b(context)) >= 50002000 && m4078b(context);
    }

    /* renamed from: b */
    private static boolean m4078b(Context context) {
        return context.getSharedPreferences("mipush_extra", 0).getBoolean("is_xmsf_sup_decrypt", false);
    }

    public static void clearToken(Context context) {
        C5946i.m3869a(context, EnumC5942e.ASSEMBLE_PUSH_FCM);
    }

    public static void convertMessage(Intent intent) {
        C5946i.m3863a(intent);
    }

    public static boolean isFCMSwitchOpen(Context context) {
        return C5946i.m3868a(context, EnumC5942e.ASSEMBLE_PUSH_FCM) && MiPushClient.getOpenFCMPush(context);
    }

    public static void notifyFCMNotificationCome(Context context, Map<String, String> map) {
        PushMessageReceiver m3874a;
        String str = map.get("pushMsg");
        if (TextUtils.isEmpty(str) || (m3874a = C5946i.m3874a(context)) == null) {
            return;
        }
        m3874a.onNotificationMessageArrived(context, C5946i.m3858a(str));
    }

    public static Map<String, String> notifyFCMPassThoughMessageCome(Context context, Map<String, String> map) {
        PushMessageReceiver m3874a;
        String str = map.get("pushMsg");
        if (!TextUtils.isEmpty(str) && (m3874a = C5946i.m3874a(context)) != null) {
            m3874a.onReceivePassThroughMessage(context, C5946i.m3858a(str));
        }
        String str2 = map.get("mipushContainer");
        if (TextUtils.isEmpty(str2)) {
            return new HashMap();
        }
        try {
            byte[] decode = Base64.decode(str2, 2);
            m4080a(context, C6464w.m1252a(decode));
            m4079a(context, decode);
        } catch (Throwable th) {
            AbstractC5876b.m4144a("fcm notify notification error ", th);
        }
        return m4082a(context);
    }

    public static void persistIfXmsfSupDecrypt(Context context) {
        context.getSharedPreferences("mipush_extra", 0).edit().putBoolean("is_xmsf_sup_decrypt", ((long) C6306l.m1843b(context)) >= 50002000).apply();
    }

    public static void reportFCMMessageDelete() {
        MiTinyDataClient.upload(C5946i.m3851c(EnumC5942e.ASSEMBLE_PUSH_FCM), "fcm", 1L, "some fcm messages was deleted ");
    }

    public static void uploadToken(Context context, String str) {
        C5946i.m3866a(context, EnumC5942e.ASSEMBLE_PUSH_FCM, str);
    }
}

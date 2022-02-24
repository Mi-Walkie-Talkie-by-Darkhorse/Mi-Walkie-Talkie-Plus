package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.hv;
import com.xiaomi.push.ir;
import com.xiaomi.push.iy;
import com.xiaomi.push.jf;
import com.xiaomi.push.l;
import com.xiaomi.push.service.w;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class FCMPushHelper {
    private static Map<String, String> a(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("actionType", String.valueOf(hv.AckMessage.a()));
        hashMap.put("deviceStatus", String.valueOf((int) jf.a(context, context.getPackageName())));
        hashMap.put("mat", Long.toString(System.currentTimeMillis()));
        return hashMap;
    }

    private static void a(Context context, ir irVar) {
        try {
            MiPushMessage generateMessage = PushMessageHelper.generateMessage((iy) ai.a(context, irVar), irVar.m430a(), false);
            PushMessageReceiver a2 = i.a(context);
            if (a2 != null) {
                a2.onNotificationMessageArrived(context, generateMessage);
            }
        } catch (Throwable th) {
            b.a("fcm broadcast notification come error ", th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(android.content.Context r7, byte[] r8) {
        /*
            com.xiaomi.mipush.sdk.ao r0 = com.xiaomi.mipush.sdk.ao.a(r7)
            boolean r0 = r0.m29a()
            java.lang.String r1 = r7.getPackageName()
            java.lang.String r2 = "com.xiaomi.xmsf"
            boolean r1 = r2.equals(r1)
            r3 = 1
            r1 = r1 ^ r3
            boolean r4 = m11a(r7)
            r5 = 2
            r6 = 0
            if (r0 == 0) goto L_0x0069
            if (r1 == 0) goto L_0x0069
            if (r4 == 0) goto L_0x0069
            com.xiaomi.mipush.sdk.b r0 = com.xiaomi.mipush.sdk.b.m36a(r7)
            java.lang.String r0 = r0.d()
            byte[] r8 = com.xiaomi.push.service.m.a(r8, r0)
            if (r8 != 0) goto L_0x0031
            java.lang.String r0 = "fcm message encrypt failed"
            goto L_0x0084
        L_0x0031:
            java.lang.String r0 = android.util.Base64.encodeToString(r8, r5)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L_0x0042
            java.lang.String r0 = "fcm message buf base64 encode failed"
            com.xiaomi.channel.commonutils.logger.b.m1a(r0)
            r3 = 0
            goto L_0x0067
        L_0x0042:
            android.content.Intent r1 = new android.content.Intent
            java.lang.String r4 = com.xiaomi.push.service.bh.n
            r1.<init>(r4)
            r1.setPackage(r2)
            java.lang.String r4 = "com.xiaomi.push.service.XMPushService"
            r1.setClassName(r2, r4)
            java.lang.String r2 = "ext_fcm_container_buffer"
            r1.putExtra(r2, r0)
            java.lang.String r0 = r7.getPackageName()
            java.lang.String r2 = "mipush_app_package"
            r1.putExtra(r2, r0)
            r7.startService(r1)
            java.lang.String r0 = "fcm message reroute to xmsf"
            com.xiaomi.channel.commonutils.logger.b.m1a(r0)
        L_0x0067:
            r6 = r3
            goto L_0x0087
        L_0x0069:
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r2[r6] = r0
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
            r2[r3] = r0
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r4)
            r2[r5] = r0
            java.lang.String r0 = "xmsf can not receive fcm msg - shouldUseMIUIPush=%s;isNotXmsf=%s;xmsfSupport=%s"
            java.lang.String r0 = java.lang.String.format(r0, r2)
        L_0x0084:
            com.xiaomi.channel.commonutils.logger.b.m1a(r0)
        L_0x0087:
            if (r6 != 0) goto L_0x0095
            java.lang.String r0 = "fcm message post local"
            com.xiaomi.channel.commonutils.logger.b.b(r0)
            com.xiaomi.push.ir r0 = com.xiaomi.push.service.w.a(r8)
            com.xiaomi.push.service.aj.m581a(r7, r0, r8)
        L_0x0095:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.FCMPushHelper.a(android.content.Context, byte[]):void");
    }

    /* renamed from: a  reason: collision with other method in class */
    private static boolean m11a(Context context) {
        return ((long) l.b(context)) >= 50002000 && b(context);
    }

    private static boolean b(Context context) {
        return context.getSharedPreferences("mipush_extra", 0).getBoolean("is_xmsf_sup_decrypt", false);
    }

    public static void clearToken(Context context) {
        i.m56a(context, e.ASSEMBLE_PUSH_FCM);
    }

    public static void convertMessage(Intent intent) {
        i.a(intent);
    }

    public static boolean isFCMSwitchOpen(Context context) {
        return i.m59a(context, e.ASSEMBLE_PUSH_FCM) && MiPushClient.getOpenFCMPush(context);
    }

    public static void notifyFCMNotificationCome(Context context, Map<String, String> map) {
        PushMessageReceiver a2;
        String str = map.get("pushMsg");
        if (!TextUtils.isEmpty(str) && (a2 = i.a(context)) != null) {
            a2.onNotificationMessageArrived(context, i.a(str));
        }
    }

    public static Map<String, String> notifyFCMPassThoughMessageCome(Context context, Map<String, String> map) {
        PushMessageReceiver a2;
        String str = map.get("pushMsg");
        if (!TextUtils.isEmpty(str) && (a2 = i.a(context)) != null) {
            a2.onReceivePassThroughMessage(context, i.a(str));
        }
        String str2 = map.get("mipushContainer");
        if (TextUtils.isEmpty(str2)) {
            return new HashMap();
        }
        try {
            byte[] decode = Base64.decode(str2, 2);
            a(context, w.a(decode));
            a(context, decode);
        } catch (Throwable th) {
            b.a("fcm notify notification error ", th);
        }
        return a(context);
    }

    public static void persistIfXmsfSupDecrypt(Context context) {
        boolean z = false;
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_extra", 0).edit();
        if (l.b(context) >= 50002000) {
            z = true;
        }
        edit.putBoolean("is_xmsf_sup_decrypt", z).apply();
    }

    public static void reportFCMMessageDelete() {
        MiTinyDataClient.upload(i.c(e.ASSEMBLE_PUSH_FCM), "fcm", 1L, "some fcm messages was deleted ");
    }

    public static void uploadToken(Context context, String str) {
        i.m57a(context, e.ASSEMBLE_PUSH_FCM, str);
    }
}

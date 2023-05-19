package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.C5938b;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6254il;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6264iv;
import com.xiaomi.push.C6265iw;
import com.xiaomi.push.C6274jb;
import com.xiaomi.push.C6275jc;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6157fl;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.EnumC6252ij;
import com.xiaomi.push.service.C6350aj;
import com.xiaomi.push.service.C6377ba;
import com.xiaomi.push.service.C6400bo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/* loaded from: classes2.dex */
public class MiPushClient4Hybrid {
    private static MiPushCallback sCallback;
    private static Map<String, C5938b.C5939a> dataMap = new HashMap();
    private static Map<String, Long> sRegisterTimeMap = new HashMap();

    /* loaded from: classes2.dex */
    public static class MiPushCallback {
        public void onCommandResult(String str, MiPushCommandMessage miPushCommandMessage) {
        }

        public void onReceiveRegisterResult(String str, MiPushCommandMessage miPushCommandMessage) {
        }

        public void onReceiveUnregisterResult(String str, MiPushCommandMessage miPushCommandMessage) {
        }
    }

    private static void addPullNotificationTime(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        sharedPreferences.edit().putLong("last_pull_notification_" + str, System.currentTimeMillis()).commit();
    }

    private static short getDeviceStatus(MiPushMessage miPushMessage, boolean z) {
        String str = miPushMessage.getExtra() == null ? "" : miPushMessage.getExtra().get(Constants.EXTRA_KEY_HYBRID_DEVICE_STATUS);
        int intValue = TextUtils.isEmpty(str) ? 0 : Integer.valueOf(str).intValue();
        if (!z) {
            intValue = (intValue & (-4)) + C6175g.EnumC6176a.NOT_ALLOWED.m2802a();
        }
        return (short) intValue;
    }

    public static boolean isRegistered(Context context, String str) {
        return C5938b.m3923a(context).m3922a(str) != null;
    }

    public static void onReceiveRegisterResult(Context context, C6265iw c6265iw) {
        C5938b.C5939a c5939a;
        String m2095c = c6265iw.m2095c();
        if (c6265iw.m2105a() == 0 && (c5939a = dataMap.get(m2095c)) != null) {
            c5939a.m3895a(c6265iw.f22601e, c6265iw.f22602f);
            C5938b.m3923a(context).m3920a(m2095c, c5939a);
        }
        ArrayList arrayList = null;
        if (!TextUtils.isEmpty(c6265iw.f22601e)) {
            arrayList = new ArrayList();
            arrayList.add(c6265iw.f22601e);
        }
        MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(EnumC6157fl.COMMAND_REGISTER.f21553a, arrayList, c6265iw.f22591a, c6265iw.f22600d, null);
        MiPushCallback miPushCallback = sCallback;
        if (miPushCallback != null) {
            miPushCallback.onReceiveRegisterResult(m2095c, generateCommandMessage);
        }
    }

    public static void onReceiveUnregisterResult(Context context, C6275jc c6275jc) {
        MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(EnumC6157fl.COMMAND_UNREGISTER.f21553a, null, c6275jc.f22729a, c6275jc.f22737d, null);
        String m1983a = c6275jc.m1983a();
        MiPushCallback miPushCallback = sCallback;
        if (miPushCallback != null) {
            miPushCallback.onReceiveUnregisterResult(m1983a, generateCommandMessage);
        }
    }

    public static void registerPush(Context context, String str, String str2, String str3) {
        if (C5938b.m3923a(context).m3917a(str2, str3, str)) {
            ArrayList arrayList = new ArrayList();
            C5938b.C5939a m3922a = C5938b.m3923a(context).m3922a(str);
            if (m3922a != null) {
                arrayList.add(m3922a.f20940c);
                MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(EnumC6157fl.COMMAND_REGISTER.f21553a, arrayList, 0L, null, null);
                MiPushCallback miPushCallback = sCallback;
                if (miPushCallback != null) {
                    miPushCallback.onReceiveRegisterResult(str, generateCommandMessage);
                }
            }
            if (shouldPullNotification(context, str)) {
                C6263iu c6263iu = new C6263iu();
                c6263iu.m2180b(str2);
                c6263iu.m2176c(EnumC6248if.PullOfflineMessage.f22236a);
                c6263iu.m2189a(C6377ba.m1518a());
                c6263iu.m2185a(false);
                C5928ao.m3984a(context).m3965a(c6263iu, EnumC6237hv.Notification, false, true, null, false, str, str2);
                AbstractC5876b.m4141b("MiPushClient4Hybrid pull offline pass through message");
                addPullNotificationTime(context, str);
                return;
            }
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - (sRegisterTimeMap.get(str) != null ? sRegisterTimeMap.get(str).longValue() : 0L)) < 5000) {
            AbstractC5876b.m4147a("MiPushClient4Hybrid  Could not send register message within 5s repeatedly.");
            return;
        }
        sRegisterTimeMap.put(str, Long.valueOf(currentTimeMillis));
        String m3621a = C6023bo.m3621a(6);
        C5938b.C5939a c5939a = new C5938b.C5939a(context);
        c5939a.m3889c(str2, str3, m3621a);
        dataMap.put(str, c5939a);
        C6264iv c6264iv = new C6264iv();
        c6264iv.m2151a(C6377ba.m1518a());
        c6264iv.m2146b(str2);
        c6264iv.m2135e(str3);
        c6264iv.m2138d(str);
        c6264iv.m2132f(m3621a);
        c6264iv.m2141c(C6175g.m2811a(context, context.getPackageName()));
        c6264iv.m2147b(C6175g.m2814a(context, context.getPackageName()));
        c6264iv.m2126h("4_8_2");
        c6264iv.m2155a(40082);
        c6264iv.m2154a(EnumC6252ij.Init);
        if (!C6306l.m1837d()) {
            String m2492e = C6242i.m2492e(context);
            if (!TextUtils.isEmpty(m2492e)) {
                c6264iv.m2123i(C6023bo.m3620a(m2492e));
            }
        }
        int m2516a = C6242i.m2516a();
        if (m2516a >= 0) {
            c6264iv.m2142c(m2516a);
        }
        C6263iu c6263iu2 = new C6263iu();
        c6263iu2.m2176c(EnumC6248if.HybridRegister.f22236a);
        c6263iu2.m2180b(C5938b.m3923a(context).m3928a());
        c6263iu2.m2173d(context.getPackageName());
        c6263iu2.m2183a(C6278jf.m1933a(c6264iv));
        c6263iu2.m2189a(C6377ba.m1518a());
        C5928ao.m3984a(context).m3970a((C5928ao) c6263iu2, EnumC6237hv.Notification, (C6251ii) null);
    }

    public static void removeDuplicateCache(Context context, MiPushMessage miPushMessage) {
        String str = miPushMessage.getExtra() != null ? miPushMessage.getExtra().get("jobkey") : null;
        if (TextUtils.isEmpty(str)) {
            str = miPushMessage.getMessageId();
        }
        C5926am.m4009a(context, str);
    }

    public static void reportMessageArrived(Context context, MiPushMessage miPushMessage, boolean z) {
        if (miPushMessage == null || miPushMessage.getExtra() == null) {
            AbstractC5876b.m4147a("do not ack message, message is null");
            return;
        }
        try {
            C6254il c6254il = new C6254il();
            c6254il.m2339b(C5938b.m3923a(context).m3928a());
            c6254il.m2343a(miPushMessage.getMessageId());
            c6254il.m2346a(Long.valueOf(miPushMessage.getExtra().get(Constants.EXTRA_KEY_HYBRID_MESSAGE_TS)).longValue());
            c6254il.m2342a(getDeviceStatus(miPushMessage, z));
            if (!TextUtils.isEmpty(miPushMessage.getTopic())) {
                c6254il.m2336c(miPushMessage.getTopic());
            }
            C5928ao.m3984a(context).m3968a((C5928ao) c6254il, EnumC6237hv.AckMessage, false, C6400bo.m1452a(PushMessageHelper.generateMessage(miPushMessage)));
            AbstractC5876b.m4141b("MiPushClient4Hybrid ack mina message, messageId is " + miPushMessage.getMessageId());
        } finally {
            try {
            } finally {
            }
        }
    }

    public static void reportMessageClicked(Context context, MiPushMessage miPushMessage) {
        MiPushClient.reportMessageClicked(context, miPushMessage);
    }

    public static void setCallback(MiPushCallback miPushCallback) {
        sCallback = miPushCallback;
    }

    private static boolean shouldPullNotification(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_extra", 0);
        StringBuilder sb = new StringBuilder();
        sb.append("last_pull_notification_");
        sb.append(str);
        return Math.abs(System.currentTimeMillis() - sharedPreferences.getLong(sb.toString(), -1L)) > Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL;
    }

    public static void unregisterPush(Context context, String str) {
        sRegisterTimeMap.remove(str);
        C5938b.C5939a m3922a = C5938b.m3923a(context).m3922a(str);
        if (m3922a == null) {
            return;
        }
        C6274jb c6274jb = new C6274jb();
        c6274jb.m2001a(C6377ba.m1518a());
        c6274jb.m1993d(str);
        c6274jb.m1998b(m3922a.f20936a);
        c6274jb.m1995c(m3922a.f20940c);
        c6274jb.m1991e(m3922a.f20938b);
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2176c(EnumC6248if.HybridUnregister.f22236a);
        c6263iu.m2180b(C5938b.m3923a(context).m3928a());
        c6263iu.m2173d(context.getPackageName());
        c6263iu.m2183a(C6278jf.m1933a(c6274jb));
        c6263iu.m2189a(C6377ba.m1518a());
        C5928ao.m3984a(context).m3970a((C5928ao) c6263iu, EnumC6237hv.Notification, (C6251ii) null);
        C5938b.m3923a(context).m3912b(str);
    }

    public static void uploadClearMessageData(Context context, LinkedList<? extends Object> linkedList) {
        C6350aj.m1662a(context, linkedList);
    }
}

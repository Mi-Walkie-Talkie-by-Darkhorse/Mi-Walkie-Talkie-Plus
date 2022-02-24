package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.bo;
import com.xiaomi.push.fl;
import com.xiaomi.push.g;
import com.xiaomi.push.hv;
import com.xiaomi.push.i;
import com.xiaomi.push.ii;
import com.xiaomi.push.ij;
import com.xiaomi.push.il;
import com.xiaomi.push.iu;
import com.xiaomi.push.iv;
import com.xiaomi.push.iw;
import com.xiaomi.push.jb;
import com.xiaomi.push.jc;
import com.xiaomi.push.jf;
import com.xiaomi.push.l;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.ba;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/* loaded from: classes2.dex */
public class MiPushClient4Hybrid {
    private static MiPushCallback sCallback;
    private static Map<String, b.a> dataMap = new HashMap();
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
        int i = 0;
        if (!TextUtils.isEmpty(str)) {
            i = Integer.valueOf(str).intValue();
        }
        if (!z) {
            i = (i & (-4)) + g.a.NOT_ALLOWED.a();
        }
        return (short) i;
    }

    public static boolean isRegistered(Context context, String str) {
        return b.m36a(context).a(str) != null;
    }

    public static void onReceiveRegisterResult(Context context, iw iwVar) {
        b.a aVar;
        String c2 = iwVar.c();
        if (iwVar.a() == 0 && (aVar = dataMap.get(c2)) != null) {
            aVar.a(iwVar.f720e, iwVar.f721f);
            b.m36a(context).a(c2, aVar);
        }
        ArrayList arrayList = null;
        if (!TextUtils.isEmpty(iwVar.f720e)) {
            arrayList = new ArrayList();
            arrayList.add(iwVar.f720e);
        }
        MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(fl.COMMAND_REGISTER.f354a, arrayList, iwVar.f710a, iwVar.f719d, null);
        MiPushCallback miPushCallback = sCallback;
        if (miPushCallback != null) {
            miPushCallback.onReceiveRegisterResult(c2, generateCommandMessage);
        }
    }

    public static void onReceiveUnregisterResult(Context context, jc jcVar) {
        MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(fl.COMMAND_UNREGISTER.f354a, null, jcVar.f788a, jcVar.f796d, null);
        String a2 = jcVar.a();
        MiPushCallback miPushCallback = sCallback;
        if (miPushCallback != null) {
            miPushCallback.onReceiveUnregisterResult(a2, generateCommandMessage);
        }
    }

    public static void registerPush(Context context, String str, String str2, String str3) {
        if (b.m36a(context).m41a(str2, str3, str)) {
            ArrayList arrayList = new ArrayList();
            b.a a2 = b.m36a(context).a(str);
            if (a2 != null) {
                arrayList.add(a2.f8705c);
                MiPushCommandMessage generateCommandMessage = PushMessageHelper.generateCommandMessage(fl.COMMAND_REGISTER.f354a, arrayList, 0L, null, null);
                MiPushCallback miPushCallback = sCallback;
                if (miPushCallback != null) {
                    miPushCallback.onReceiveRegisterResult(str, generateCommandMessage);
                }
            }
            if (shouldPullNotification(context, str)) {
                iu iuVar = new iu();
                iuVar.b(str2);
                iuVar.c(Cif.PullOfflineMessage.f527a);
                iuVar.a(ba.a());
                iuVar.a(false);
                ao.a(context).a(iuVar, hv.Notification, false, true, null, false, str, str2);
                com.xiaomi.channel.commonutils.logger.b.b("MiPushClient4Hybrid pull offline pass through message");
                addPullNotificationTime(context, str);
                return;
            }
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - (sRegisterTimeMap.get(str) != null ? sRegisterTimeMap.get(str).longValue() : 0L)) < 5000) {
            com.xiaomi.channel.commonutils.logger.b.m1a("MiPushClient4Hybrid  Could not send register message within 5s repeatedly.");
            return;
        }
        sRegisterTimeMap.put(str, Long.valueOf(currentTimeMillis));
        String a3 = bo.a(6);
        b.a aVar = new b.a(context);
        aVar.c(str2, str3, a3);
        dataMap.put(str, aVar);
        iv ivVar = new iv();
        ivVar.a(ba.a());
        ivVar.b(str2);
        ivVar.e(str3);
        ivVar.d(str);
        ivVar.f(a3);
        ivVar.c(g.m302a(context, context.getPackageName()));
        ivVar.b(g.a(context, context.getPackageName()));
        ivVar.h("4_8_2");
        ivVar.a(40082);
        ivVar.a(ij.Init);
        if (!l.m533d()) {
            String e = i.e(context);
            if (!TextUtils.isEmpty(e)) {
                ivVar.i(bo.a(e));
            }
        }
        int a4 = i.a();
        if (a4 >= 0) {
            ivVar.c(a4);
        }
        iu iuVar2 = new iu();
        iuVar2.c(Cif.HybridRegister.f527a);
        iuVar2.b(b.m36a(context).m37a());
        iuVar2.d(context.getPackageName());
        iuVar2.a(jf.a(ivVar));
        iuVar2.a(ba.a());
        ao.a(context).a((ao) iuVar2, hv.Notification, (ii) null);
    }

    public static void removeDuplicateCache(Context context, MiPushMessage miPushMessage) {
        String str = miPushMessage.getExtra() != null ? miPushMessage.getExtra().get("jobkey") : null;
        if (TextUtils.isEmpty(str)) {
            str = miPushMessage.getMessageId();
        }
        am.a(context, str);
    }

    public static void reportMessageArrived(Context context, MiPushMessage miPushMessage, boolean z) {
        if (miPushMessage == null || miPushMessage.getExtra() == null) {
            com.xiaomi.channel.commonutils.logger.b.m1a("do not ack message, message is null");
            return;
        }
        try {
            il ilVar = new il();
            ilVar.b(b.m36a(context).m37a());
            ilVar.a(miPushMessage.getMessageId());
            ilVar.a(Long.valueOf(miPushMessage.getExtra().get(Constants.EXTRA_KEY_HYBRID_MESSAGE_TS)).longValue());
            ilVar.a(getDeviceStatus(miPushMessage, z));
            if (!TextUtils.isEmpty(miPushMessage.getTopic())) {
                ilVar.c(miPushMessage.getTopic());
            }
            ao.a(context).a((ao) ilVar, hv.AckMessage, false, com.xiaomi.push.service.bo.a(PushMessageHelper.generateMessage(miPushMessage)));
            com.xiaomi.channel.commonutils.logger.b.b("MiPushClient4Hybrid ack mina message, messageId is " + miPushMessage.getMessageId());
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
        b.a a2 = b.m36a(context).a(str);
        if (a2 != null) {
            jb jbVar = new jb();
            jbVar.a(ba.a());
            jbVar.d(str);
            jbVar.b(a2.f63a);
            jbVar.c(a2.f8705c);
            jbVar.e(a2.f8704b);
            iu iuVar = new iu();
            iuVar.c(Cif.HybridUnregister.f527a);
            iuVar.b(b.m36a(context).m37a());
            iuVar.d(context.getPackageName());
            iuVar.a(jf.a(jbVar));
            iuVar.a(ba.a());
            ao.a(context).a((ao) iuVar, hv.Notification, (ii) null);
            b.m36a(context).b(str);
        }
    }

    public static void uploadClearMessageData(Context context, LinkedList<? extends Object> linkedList) {
        aj.a(context, linkedList);
    }
}

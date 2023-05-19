package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.C5919af;
import com.xiaomi.mipush.sdk.C5928ao;
import com.xiaomi.mipush.sdk.C5938b;
import com.xiaomi.mipush.sdk.COSPushHelper;
import com.xiaomi.mipush.sdk.EnumC5935au;
import com.xiaomi.mipush.sdk.FTOSPushHelper;
import com.xiaomi.mipush.sdk.HWPushHelper;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.C6228ho;
import com.xiaomi.push.C6308n;
import com.xiaomi.push.service.ServiceClient;

/* loaded from: classes2.dex */
public class NetworkStatusReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static boolean f23227a = false;

    /* renamed from: b */
    private boolean f23228b;

    public NetworkStatusReceiver() {
        this.f23228b = false;
        this.f23228b = true;
    }

    public NetworkStatusReceiver(Object obj) {
        this.f23228b = false;
        f23227a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m1298a(Context context) {
        if (!C5928ao.m3984a(context).m3989a() && C5938b.m3923a(context).m3908c() && !C5938b.m3923a(context).m3902f()) {
            try {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(context, "com.xiaomi.push.service.XMPushService"));
                intent.setAction("com.xiaomi.push.network_status_changed");
                ServiceClient.getInstance(context).startServiceSafely(intent);
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
            }
        }
        C6228ho.m2598a(context);
        if (C6013bi.m3662b(context) && C5928ao.m3984a(context).m3955b()) {
            C5928ao.m3984a(context).m3951c();
        }
        if (C6013bi.m3662b(context)) {
            if ("syncing".equals(C5919af.m4028a(context).m4027a(EnumC5935au.DISABLE_PUSH))) {
                MiPushClient.disablePush(context);
            }
            if ("syncing".equals(C5919af.m4028a(context).m4027a(EnumC5935au.ENABLE_PUSH))) {
                MiPushClient.enablePush(context);
            }
            if ("syncing".equals(C5919af.m4028a(context).m4027a(EnumC5935au.UPLOAD_HUAWEI_TOKEN))) {
                MiPushClient.syncAssemblePushToken(context);
            }
            if ("syncing".equals(C5919af.m4028a(context).m4027a(EnumC5935au.UPLOAD_FCM_TOKEN))) {
                MiPushClient.syncAssembleFCMPushToken(context);
            }
            if ("syncing".equals(C5919af.m4028a(context).m4027a(EnumC5935au.UPLOAD_COS_TOKEN))) {
                MiPushClient.syncAssembleCOSPushToken(context);
            }
            if ("syncing".equals(C5919af.m4028a(context).m4027a(EnumC5935au.UPLOAD_FTOS_TOKEN))) {
                MiPushClient.syncAssembleFTOSPushToken(context);
            }
            if (HWPushHelper.needConnect() && HWPushHelper.shouldTryConnect(context)) {
                HWPushHelper.setConnectTime(context);
                HWPushHelper.registerHuaWeiAssemblePush(context);
            }
            COSPushHelper.doInNetworkChange(context);
            FTOSPushHelper.doInNetworkChange(context);
        }
    }

    /* renamed from: a */
    public static boolean m1299a() {
        return f23227a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f23228b) {
            return;
        }
        C6308n.m1830a().post(new RunnableC6458a(this, context));
    }
}

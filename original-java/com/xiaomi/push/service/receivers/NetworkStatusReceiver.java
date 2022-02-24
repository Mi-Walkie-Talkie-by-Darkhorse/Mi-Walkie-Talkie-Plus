package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.mipush.sdk.COSPushHelper;
import com.xiaomi.mipush.sdk.FTOSPushHelper;
import com.xiaomi.mipush.sdk.HWPushHelper;
import com.xiaomi.mipush.sdk.MiPushClient;
import com.xiaomi.mipush.sdk.af;
import com.xiaomi.mipush.sdk.ao;
import com.xiaomi.mipush.sdk.au;
import com.xiaomi.mipush.sdk.b;
import com.xiaomi.push.bi;
import com.xiaomi.push.ho;
import com.xiaomi.push.n;
import com.xiaomi.push.service.ServiceClient;

/* loaded from: classes2.dex */
public class NetworkStatusReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9355a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9356b;

    public NetworkStatusReceiver() {
        this.f9356b = false;
        this.f9356b = true;
    }

    public NetworkStatusReceiver(Object obj) {
        this.f9356b = false;
        f9355a = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        if (!ao.a(context).m29a() && b.m36a(context).m45c() && !b.m36a(context).m48f()) {
            try {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(context, "com.xiaomi.push.service.XMPushService"));
                intent.setAction("com.xiaomi.push.network_status_changed");
                ServiceClient.getInstance(context).startServiceSafely(intent);
            } catch (Exception e) {
                com.xiaomi.channel.commonutils.logger.b.a(e);
            }
        }
        ho.m349a(context);
        if (bi.b(context) && ao.a(context).m32b()) {
            ao.a(context).m33c();
        }
        if (bi.b(context)) {
            if ("syncing".equals(af.a(context).a(au.DISABLE_PUSH))) {
                MiPushClient.disablePush(context);
            }
            if ("syncing".equals(af.a(context).a(au.ENABLE_PUSH))) {
                MiPushClient.enablePush(context);
            }
            if ("syncing".equals(af.a(context).a(au.UPLOAD_HUAWEI_TOKEN))) {
                MiPushClient.syncAssemblePushToken(context);
            }
            if ("syncing".equals(af.a(context).a(au.UPLOAD_FCM_TOKEN))) {
                MiPushClient.syncAssembleFCMPushToken(context);
            }
            if ("syncing".equals(af.a(context).a(au.UPLOAD_COS_TOKEN))) {
                MiPushClient.syncAssembleCOSPushToken(context);
            }
            if ("syncing".equals(af.a(context).a(au.UPLOAD_FTOS_TOKEN))) {
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

    public static boolean a() {
        return f9355a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!this.f9356b) {
            n.a().post(new a(this, context));
        }
    }
}

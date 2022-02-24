package com.xiaomi.mipush.sdk;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.ak;
import com.xiaomi.push.ec;
import com.xiaomi.push.ee;
import com.xiaomi.push.ia;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.jg;
import com.xiaomi.push.l;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.service.ba;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class o {
    public static void a(Context context, Intent intent, Uri uri) {
        ec a2;
        ee eeVar;
        if (context != null) {
            ao.a(context).m27a();
            if (ec.a(context.getApplicationContext()).m230a() == null) {
                ec.a(context.getApplicationContext()).a(b.m36a(context.getApplicationContext()).m37a(), context.getPackageName(), ax.a(context.getApplicationContext()).a(ia.AwakeInfoUploadWaySwitch.a(), 0), new c());
                ax.a(context).a(new q(102, "awake online config", context));
            }
            if ((context instanceof Activity) && intent != null) {
                a2 = ec.a(context.getApplicationContext());
                eeVar = ee.ACTIVITY;
            } else if (!(context instanceof Service) || intent == null) {
                if (uri != null && !TextUtils.isEmpty(uri.toString())) {
                    ec.a(context.getApplicationContext()).a(ee.PROVIDER, context, (Intent) null, uri.toString());
                    return;
                }
                return;
            } else if ("com.xiaomi.mipush.sdk.WAKEUP".equals(intent.getAction())) {
                a2 = ec.a(context.getApplicationContext());
                eeVar = ee.SERVICE_COMPONENT;
            } else {
                a2 = ec.a(context.getApplicationContext());
                eeVar = ee.SERVICE_ACTION;
            }
            a2.a(eeVar, context, intent, (String) null);
        }
    }

    private static void a(Context context, iu iuVar) {
        boolean z = false;
        z = ax.a(context).a(ia.AwakeAppPingSwitch.a(), false);
        int a2 = ax.a(context).a(ia.AwakeAppPingFrequency.a(), 0);
        if (a2 >= 0 && a2 < 30) {
            b.c("aw_ping: frquency need > 30s.");
            a2 = 30;
        }
        if (a2 >= 0) {
        }
        if (!l.m527a()) {
            a(context, iuVar, z, a2);
        } else if (z) {
            ak.a(context.getApplicationContext()).a((ak.a) new p(iuVar, context), a2);
        }
    }

    public static final <T extends jg<T, ?>> void a(Context context, T t, boolean z, int i) {
        byte[] a2 = jf.a(t);
        if (a2 == null) {
            b.m1a("send message fail, because msgBytes is null.");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("action_help_ping");
        intent.putExtra("extra_help_ping_switch", z);
        intent.putExtra("extra_help_ping_frequency", i);
        intent.putExtra("mipush_payload", a2);
        intent.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
        ao.a(context).m28a(intent);
    }

    public static void a(Context context, String str) {
        b.m1a("aw_ping : send aw_ping cmd and content to push service from 3rd app");
        HashMap hashMap = new HashMap();
        hashMap.put("awake_info", str);
        hashMap.put("event_type", String.valueOf(9999));
        hashMap.put(SocialConstants.PARAM_COMMENT, "ping message");
        iu iuVar = new iu();
        iuVar.b(b.m36a(context).m37a());
        iuVar.d(context.getPackageName());
        iuVar.c(Cif.AwakeAppResponse.f527a);
        iuVar.a(ba.a());
        iuVar.f666a = hashMap;
        a(context, iuVar);
    }

    public static void a(Context context, String str, int i, String str2) {
        iu iuVar = new iu();
        iuVar.b(str);
        iuVar.a(new HashMap());
        iuVar.m446a().put("extra_aw_app_online_cmd", String.valueOf(i));
        iuVar.m446a().put("extra_help_aw_info", str2);
        iuVar.a(ba.a());
        byte[] a2 = jf.a(iuVar);
        if (a2 == null) {
            b.m1a("send message fail, because msgBytes is null.");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("action_aw_app_logic");
        intent.putExtra("mipush_payload", a2);
        ao.a(context).m28a(intent);
    }
}

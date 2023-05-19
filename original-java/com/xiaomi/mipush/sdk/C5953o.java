package com.xiaomi.mipush.sdk;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6117ec;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6119ee;
import com.xiaomi.push.EnumC6243ia;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.InterfaceC6279jg;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.C6377ba;
import java.util.HashMap;

/* renamed from: com.xiaomi.mipush.sdk.o */
/* loaded from: classes2.dex */
public class C5953o {
    /* renamed from: a */
    public static void m3840a(Context context, Intent intent, Uri uri) {
        C6117ec m3120a;
        EnumC6119ee enumC6119ee;
        if (context == null) {
            return;
        }
        C5928ao.m3984a(context).m3990a();
        if (C6117ec.m3120a(context.getApplicationContext()).m3123a() == null) {
            C6117ec.m3120a(context.getApplicationContext()).m3112a(C5938b.m3923a(context.getApplicationContext()).m3928a(), context.getPackageName(), C6372ax.m1530a(context.getApplicationContext()).m1534a(EnumC6243ia.AwakeInfoUploadWaySwitch.m2484a(), 0), new C5940c());
            C6372ax.m1530a(context).m1526a(new C5955q(102, "awake online config", context));
        }
        if ((context instanceof Activity) && intent != null) {
            m3120a = C6117ec.m3120a(context.getApplicationContext());
            enumC6119ee = EnumC6119ee.ACTIVITY;
        } else if (!(context instanceof Service) || intent == null) {
            if (uri == null || TextUtils.isEmpty(uri.toString())) {
                return;
            }
            C6117ec.m3120a(context.getApplicationContext()).m3116a(EnumC6119ee.PROVIDER, context, (Intent) null, uri.toString());
            return;
        } else if ("com.xiaomi.mipush.sdk.WAKEUP".equals(intent.getAction())) {
            m3120a = C6117ec.m3120a(context.getApplicationContext());
            enumC6119ee = EnumC6119ee.SERVICE_COMPONENT;
        } else {
            m3120a = C6117ec.m3120a(context.getApplicationContext());
            enumC6119ee = EnumC6119ee.SERVICE_ACTION;
        }
        m3120a.m3116a(enumC6119ee, context, intent, (String) null);
    }

    /* renamed from: a */
    private static void m3839a(Context context, C6263iu c6263iu) {
        boolean m1531a = C6372ax.m1530a(context).m1531a(EnumC6243ia.AwakeAppPingSwitch.m2484a(), false);
        int m1534a = C6372ax.m1530a(context).m1534a(EnumC6243ia.AwakeAppPingFrequency.m2484a(), 0);
        if (m1534a >= 0 && m1534a < 30) {
            AbstractC5876b.m4139c("aw_ping: frquency need > 30s.");
            m1534a = 30;
        }
        boolean z = m1534a >= 0 ? m1531a : false;
        if (!C6306l.m1853a()) {
            m3838a(context, c6263iu, z, m1534a);
        } else if (z) {
            C5978ak.m3784a(context.getApplicationContext()).m3781a((C5978ak.AbstractRunnableC5979a) new C5954p(c6263iu, context), m1534a);
        }
    }

    /* renamed from: a */
    public static final <T extends InterfaceC6279jg<T, ?>> void m3838a(Context context, T t, boolean z, int i) {
        byte[] m1933a = C6278jf.m1933a(t);
        if (m1933a == null) {
            AbstractC5876b.m4147a("send message fail, because msgBytes is null.");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("action_help_ping");
        intent.putExtra("extra_help_ping_switch", z);
        intent.putExtra("extra_help_ping_frequency", i);
        intent.putExtra("mipush_payload", m1933a);
        intent.putExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
        C5928ao.m3984a(context).m3982a(intent);
    }

    /* renamed from: a */
    public static void m3837a(Context context, String str) {
        AbstractC5876b.m4147a("aw_ping : send aw_ping cmd and content to push service from 3rd app");
        HashMap hashMap = new HashMap();
        hashMap.put("awake_info", str);
        hashMap.put("event_type", String.valueOf(9999));
        hashMap.put(SocialConstants.PARAM_COMMENT, "ping message");
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2180b(C5938b.m3923a(context).m3928a());
        c6263iu.m2173d(context.getPackageName());
        c6263iu.m2176c(EnumC6248if.AwakeAppResponse.f22236a);
        c6263iu.m2189a(C6377ba.m1518a());
        c6263iu.f22500a = hashMap;
        m3839a(context, c6263iu);
    }

    /* renamed from: a */
    public static void m3836a(Context context, String str, int i, String str2) {
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2180b(str);
        c6263iu.m2186a(new HashMap());
        c6263iu.m2195a().put("extra_aw_app_online_cmd", String.valueOf(i));
        c6263iu.m2195a().put("extra_help_aw_info", str2);
        c6263iu.m2189a(C6377ba.m1518a());
        byte[] m1933a = C6278jf.m1933a(c6263iu);
        if (m1933a == null) {
            AbstractC5876b.m4147a("send message fail, because msgBytes is null.");
            return;
        }
        Intent intent = new Intent();
        intent.setAction("action_aw_app_logic");
        intent.putExtra("mipush_payload", m1933a);
        C5928ao.m3984a(context).m3982a(intent);
    }
}

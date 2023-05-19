package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.AbstractC6307m;
import com.xiaomi.push.C6000az;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6175g;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.service.C6377ba;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.mipush.sdk.aw */
/* loaded from: classes2.dex */
public class RunnableC5937aw implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f20927a;

    /* renamed from: a */
    final /* synthetic */ boolean f20928a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC5937aw(Context context, boolean z) {
        this.f20927a = context;
        this.f20928a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        String m3930d;
        String m3930d2;
        Map<String, String> map;
        String m3930d3;
        String str;
        String m3931c;
        String m3931c2;
        AbstractC5876b.m4147a("do sync info");
        C6263iu c6263iu = new C6263iu(C6377ba.m1518a(), false);
        C5938b m3923a = C5938b.m3923a(this.f20927a);
        c6263iu.m2176c(EnumC6248if.SyncInfo.f22236a);
        c6263iu.m2180b(m3923a.m3928a());
        c6263iu.m2173d(this.f20927a.getPackageName());
        HashMap hashMap = new HashMap();
        c6263iu.f22500a = hashMap;
        Context context = this.f20927a;
        AbstractC6307m.m1831a(hashMap, "app_version", C6175g.m2811a(context, context.getPackageName()));
        Map<String, String> map2 = c6263iu.f22500a;
        Context context2 = this.f20927a;
        AbstractC6307m.m1831a(map2, Constants.EXTRA_KEY_APP_VERSION_CODE, Integer.toString(C6175g.m2814a(context2, context2.getPackageName())));
        AbstractC6307m.m1831a(c6263iu.f22500a, "push_sdk_vn", "4_8_2");
        AbstractC6307m.m1831a(c6263iu.f22500a, "push_sdk_vc", Integer.toString(40082));
        AbstractC6307m.m1831a(c6263iu.f22500a, "token", m3923a.m3915b());
        if (!C6306l.m1837d()) {
            String m3620a = C6023bo.m3620a(C6242i.m2494d(this.f20927a));
            String m2491f = C6242i.m2491f(this.f20927a);
            if (!TextUtils.isEmpty(m2491f)) {
                m3620a = m3620a + Constants.ACCEPT_TIME_SEPARATOR_SP + m2491f;
            }
            if (!TextUtils.isEmpty(m3620a)) {
                AbstractC6307m.m1831a(c6263iu.f22500a, Constants.EXTRA_KEY_IMEI_MD5, m3620a);
            }
        }
        C6000az.m3729a(this.f20927a).m3727a(c6263iu.f22500a);
        AbstractC6307m.m1831a(c6263iu.f22500a, Constants.EXTRA_KEY_REG_ID, m3923a.m3910c());
        AbstractC6307m.m1831a(c6263iu.f22500a, Constants.EXTRA_KEY_REG_SECRET, m3923a.m3907d());
        AbstractC6307m.m1831a(c6263iu.f22500a, Constants.EXTRA_KEY_ACCEPT_TIME, MiPushClient.getAcceptTime(this.f20927a).replace(Constants.ACCEPT_TIME_SEPARATOR_SP, Constants.ACCEPT_TIME_SEPARATOR_SERVER));
        if (this.f20928a) {
            Map<String, String> map3 = c6263iu.f22500a;
            m3931c = C5936av.m3931c(MiPushClient.getAllAlias(this.f20927a));
            AbstractC6307m.m1831a(map3, Constants.EXTRA_KEY_ALIASES_MD5, m3931c);
            Map<String, String> map4 = c6263iu.f22500a;
            m3931c2 = C5936av.m3931c(MiPushClient.getAllTopic(this.f20927a));
            AbstractC6307m.m1831a(map4, Constants.EXTRA_KEY_TOPICS_MD5, m3931c2);
            map = c6263iu.f22500a;
            m3930d3 = C5936av.m3931c(MiPushClient.getAllUserAccount(this.f20927a));
            str = Constants.EXTRA_KEY_ACCOUNTS_MD5;
        } else {
            Map<String, String> map5 = c6263iu.f22500a;
            m3930d = C5936av.m3930d(MiPushClient.getAllAlias(this.f20927a));
            AbstractC6307m.m1831a(map5, Constants.EXTRA_KEY_ALIASES, m3930d);
            Map<String, String> map6 = c6263iu.f22500a;
            m3930d2 = C5936av.m3930d(MiPushClient.getAllTopic(this.f20927a));
            AbstractC6307m.m1831a(map6, Constants.EXTRA_KEY_TOPICS, m3930d2);
            map = c6263iu.f22500a;
            m3930d3 = C5936av.m3930d(MiPushClient.getAllUserAccount(this.f20927a));
            str = Constants.EXTRA_KEY_ACCOUNTS;
        }
        AbstractC6307m.m1831a(map, str, m3930d3);
        C5928ao.m3984a(this.f20927a).m3968a((C5928ao) c6263iu, EnumC6237hv.Notification, false, (C6251ii) null);
    }
}

package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.az;
import com.xiaomi.push.bo;
import com.xiaomi.push.g;
import com.xiaomi.push.hv;
import com.xiaomi.push.i;
import com.xiaomi.push.ii;
import com.xiaomi.push.iu;
import com.xiaomi.push.l;
import com.xiaomi.push.m;
import com.xiaomi.push.service.ba;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class aw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f8701a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ boolean f57a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(Context context, boolean z) {
        this.f8701a = context;
        this.f57a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2;
        Map<String, String> map;
        String d;
        String d2;
        String c2;
        String c3;
        b.m1a("do sync info");
        iu iuVar = new iu(ba.a(), false);
        b a2 = b.m36a(this.f8701a);
        iuVar.c(Cif.SyncInfo.f527a);
        iuVar.b(a2.m37a());
        iuVar.d(this.f8701a.getPackageName());
        HashMap hashMap = new HashMap();
        iuVar.f666a = hashMap;
        Context context = this.f8701a;
        m.a(hashMap, "app_version", g.m302a(context, context.getPackageName()));
        Map<String, String> map2 = iuVar.f666a;
        Context context2 = this.f8701a;
        m.a(map2, Constants.EXTRA_KEY_APP_VERSION_CODE, Integer.toString(g.a(context2, context2.getPackageName())));
        m.a(iuVar.f666a, "push_sdk_vn", "4_8_2");
        m.a(iuVar.f666a, "push_sdk_vc", Integer.toString(40082));
        m.a(iuVar.f666a, "token", a2.b());
        if (!l.m533d()) {
            String a3 = bo.a(i.d(this.f8701a));
            String f = i.f(this.f8701a);
            if (!TextUtils.isEmpty(f)) {
                a3 = a3 + Constants.ACCEPT_TIME_SEPARATOR_SP + f;
            }
            if (!TextUtils.isEmpty(a3)) {
                m.a(iuVar.f666a, Constants.EXTRA_KEY_IMEI_MD5, a3);
            }
        }
        az.a(this.f8701a).a(iuVar.f666a);
        m.a(iuVar.f666a, Constants.EXTRA_KEY_REG_ID, a2.m44c());
        m.a(iuVar.f666a, Constants.EXTRA_KEY_REG_SECRET, a2.d());
        m.a(iuVar.f666a, Constants.EXTRA_KEY_ACCEPT_TIME, MiPushClient.getAcceptTime(this.f8701a).replace(Constants.ACCEPT_TIME_SEPARATOR_SP, Constants.ACCEPT_TIME_SEPARATOR_SERVER));
        if (this.f57a) {
            Map<String, String> map3 = iuVar.f666a;
            c2 = av.c(MiPushClient.getAllAlias(this.f8701a));
            m.a(map3, Constants.EXTRA_KEY_ALIASES_MD5, c2);
            Map<String, String> map4 = iuVar.f666a;
            c3 = av.c(MiPushClient.getAllTopic(this.f8701a));
            m.a(map4, Constants.EXTRA_KEY_TOPICS_MD5, c3);
            map = iuVar.f666a;
            str2 = av.c(MiPushClient.getAllUserAccount(this.f8701a));
            str = Constants.EXTRA_KEY_ACCOUNTS_MD5;
        } else {
            Map<String, String> map5 = iuVar.f666a;
            d = av.d(MiPushClient.getAllAlias(this.f8701a));
            m.a(map5, Constants.EXTRA_KEY_ALIASES, d);
            Map<String, String> map6 = iuVar.f666a;
            d2 = av.d(MiPushClient.getAllTopic(this.f8701a));
            m.a(map6, Constants.EXTRA_KEY_TOPICS, d2);
            map = iuVar.f666a;
            str2 = av.d(MiPushClient.getAllUserAccount(this.f8701a));
            str = Constants.EXTRA_KEY_ACCOUNTS;
        }
        m.a(map, str, str2);
        ao.a(this.f8701a).a((ao) iuVar, hv.Notification, false, (ii) null);
    }
}

package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.e;
import com.xiaomi.channel.commonutils.android.h;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.string.d;
import com.xiaomi.xmpush.thrift.a;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.p;
import java.util.HashMap;

final class ae implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ boolean b;

    ae(Context context, boolean z) {
        this.a = context;
        this.b = z;
    }

    public void run() {
        b.a("do sync info");
        af afVar = new af(MiPushClient.generatePacketID(), false);
        c a2 = c.a(this.a);
        afVar.c(p.SyncInfo.T);
        afVar.b(a2.c());
        afVar.d(this.a.getPackageName());
        afVar.h = new HashMap();
        h.a(afVar.h, Constants.EXTRA_KEY_APP_VERSION, com.xiaomi.channel.commonutils.android.b.a(this.a, this.a.getPackageName()));
        h.a(afVar.h, Constants.EXTRA_KEY_APP_VERSION_CODE, Integer.toString(com.xiaomi.channel.commonutils.android.b.b(this.a, this.a.getPackageName())));
        h.a(afVar.h, "push_sdk_vn", "3_4_5");
        h.a(afVar.h, "push_sdk_vc", Integer.toString(30405));
        h.a(afVar.h, "token", a2.d());
        String a3 = d.a(e.c(this.a));
        String e = e.e(this.a);
        if (!TextUtils.isEmpty(e)) {
            a3 = a3 + Constants.ACCEPT_TIME_SEPARATOR_SP + e;
        }
        h.a(afVar.h, Constants.EXTRA_KEY_IMEI_MD5, a3);
        h.a(afVar.h, Constants.EXTRA_KEY_REG_ID, a2.e());
        h.a(afVar.h, Constants.EXTRA_KEY_REG_SECRET, a2.f());
        h.a(afVar.h, Constants.EXTRA_KEY_ACCEPT_TIME, MiPushClient.getAcceptTime(this.a).replace(Constants.ACCEPT_TIME_SEPARATOR_SP, "-"));
        if (this.b) {
            h.a(afVar.h, Constants.EXTRA_KEY_ALIASES_MD5, ad.c(MiPushClient.getAllAlias(this.a)));
            h.a(afVar.h, Constants.EXTRA_KEY_TOPICS_MD5, ad.c(MiPushClient.getAllTopic(this.a)));
            h.a(afVar.h, Constants.EXTRA_KEY_ACCOUNTS_MD5, ad.c(MiPushClient.getAllUserAccount(this.a)));
        } else {
            h.a(afVar.h, Constants.EXTRA_KEY_ALIASES, ad.d(MiPushClient.getAllAlias(this.a)));
            h.a(afVar.h, Constants.EXTRA_KEY_TOPICS, ad.d(MiPushClient.getAllTopic(this.a)));
            h.a(afVar.h, Constants.EXTRA_KEY_ACCOUNTS, ad.d(MiPushClient.getAllUserAccount(this.a)));
        }
        z.a(this.a).a(afVar, a.Notification, false, null);
    }
}

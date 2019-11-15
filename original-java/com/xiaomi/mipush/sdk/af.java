package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.android.e;
import com.xiaomi.channel.commonutils.android.h;
import com.xiaomi.channel.commonutils.misc.g;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.m;
import com.xiaomi.push.service.m.a;
import com.xiaomi.xmpush.thrift.f;
import com.xiaomi.xmpush.thrift.p;
import java.util.HashMap;
import java.util.Map;

public class af implements a {
    public af(Context context) {
        m.a(context).a((a) this);
    }

    private void b(String str, Context context) {
        com.xiaomi.xmpush.thrift.af afVar = new com.xiaomi.xmpush.thrift.af();
        afVar.c(p.ClientMIIDUpdate.T);
        afVar.b(c.a(context).c());
        afVar.a(MiPushClient.generatePacketID());
        HashMap hashMap = new HashMap();
        h.a((Map<String, String>) hashMap, Constants.EXTRA_KEY_MIID, str);
        afVar.a((Map<String, String>) hashMap);
        int b = e.b();
        if (b >= 0) {
            afVar.i().put("space_id", Integer.toString(b));
        }
        z.a(context).a(afVar, com.xiaomi.xmpush.thrift.a.Notification, true, null);
    }

    public void a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(MiPushClient.PREF_EXTRA, 0);
        long j = sharedPreferences.getLong("last_sync_miid_time", -1);
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        int a = aj.a(context).a(f.SyncMIIDFrequency.a(), 21600);
        if (j == -1) {
            sharedPreferences.edit().putLong("last_sync_miid_time", currentTimeMillis).commit();
        } else if (Math.abs(currentTimeMillis - j) > ((long) a)) {
            g.a(context).a((g.a) new ag(context), a);
            sharedPreferences.edit().putLong("last_sync_miid_time", currentTimeMillis).commit();
        }
    }

    public void a(String str, Context context) {
        b(str, context);
    }
}

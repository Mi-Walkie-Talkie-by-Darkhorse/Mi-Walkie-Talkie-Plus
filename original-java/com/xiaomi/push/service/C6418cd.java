package com.xiaomi.push.service;

import android.content.Context;
import android.util.Log;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6470v;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.service.XMPushService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.cd */
/* loaded from: classes2.dex */
public class C6418cd implements XMPushService.InterfaceC6331o {

    /* renamed from: a */
    private static Context f23154a;

    /* renamed from: a */
    private static final boolean f23156a = Log.isLoggable("UNDatas", 3);

    /* renamed from: a */
    private static final Map<Integer, Map<String, List<String>>> f23155a = new HashMap();

    public C6418cd(Context context) {
        f23154a = context;
    }

    /* renamed from: a */
    private static C6263iu m1391a(String str, String str2, String str3, String str4) {
        C6263iu c6263iu = new C6263iu();
        if (str3 != null) {
            c6263iu.m2176c(str3);
        }
        if (str != null) {
            c6263iu.m2180b(str);
        }
        if (str2 != null) {
            c6263iu.m2189a(str2);
        }
        if (str4 != null) {
            c6263iu.m2173d(str4);
        }
        c6263iu.m2185a(false);
        return c6263iu;
    }

    /* renamed from: a */
    private static void m1392a(Context context, C6263iu c6263iu) {
        if (f23156a) {
            AbstractC5876b.m4141b("UNDatas upload message notification:" + c6263iu);
        }
        C5978ak.m3784a(context).m3775a(new RunnableC6419ce(c6263iu));
    }

    /* renamed from: b */
    private static void m1390b() {
        HashMap hashMap = new HashMap();
        hashMap.putAll(f23155a);
        if (hashMap.size() > 0) {
            for (Integer num : hashMap.keySet()) {
                Map map = (Map) hashMap.get(num);
                if (map != null && map.size() > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (String str : map.keySet()) {
                        sb.append(str);
                        sb.append(Constants.COLON_SEPARATOR);
                        List list = (List) map.get(str);
                        if (!C6470v.m1228a(list)) {
                            for (int i = 0; i < list.size(); i++) {
                                if (i != 0) {
                                    sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                                }
                                sb.append((String) list.get(i));
                            }
                        }
                        sb.append(";");
                    }
                    C6263iu m1391a = m1391a(null, C6377ba.m1518a(), EnumC6248if.NotificationRemoved.f22236a, null);
                    m1391a.m2188a("removed_reason", String.valueOf(num));
                    m1391a.m2188a("all_delete_msgId_appId", sb.toString());
                    AbstractC5876b.m4141b("UNDatas upload all removed messages reason: " + num + " allIds: " + sb.toString());
                    m1392a(f23154a, m1391a);
                }
                f23155a.remove(num);
            }
        }
    }

    @Override // com.xiaomi.push.service.XMPushService.InterfaceC6331o
    /* renamed from: a */
    public void mo1393a() {
        Map<Integer, Map<String, List<String>>> map = f23155a;
        if (map.size() > 0) {
            synchronized (map) {
                m1390b();
            }
        }
    }
}

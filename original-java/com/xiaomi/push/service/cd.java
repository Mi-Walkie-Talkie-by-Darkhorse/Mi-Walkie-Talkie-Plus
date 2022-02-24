package com.xiaomi.push.service;

import android.content.Context;
import android.util.Log;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.Cif;
import com.xiaomi.push.ak;
import com.xiaomi.push.iu;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.v;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class cd implements XMPushService.o {

    /* renamed from: a  reason: collision with root package name */
    private static Context f9310a;

    /* renamed from: a  reason: collision with other field name */
    private static final boolean f983a = Log.isLoggable("UNDatas", 3);

    /* renamed from: a  reason: collision with other field name */
    private static final Map<Integer, Map<String, List<String>>> f982a = new HashMap();

    public cd(Context context) {
        f9310a = context;
    }

    private static iu a(String str, String str2, String str3, String str4) {
        iu iuVar = new iu();
        if (str3 != null) {
            iuVar.c(str3);
        }
        if (str != null) {
            iuVar.b(str);
        }
        if (str2 != null) {
            iuVar.a(str2);
        }
        if (str4 != null) {
            iuVar.d(str4);
        }
        iuVar.a(false);
        return iuVar;
    }

    private static void a(Context context, iu iuVar) {
        if (f983a) {
            b.b("UNDatas upload message notification:" + iuVar);
        }
        ak.a(context).a(new ce(iuVar));
    }

    private static void b() {
        HashMap hashMap = new HashMap();
        hashMap.putAll(f982a);
        if (hashMap.size() > 0) {
            for (Integer num : hashMap.keySet()) {
                Map map = (Map) hashMap.get(num);
                if (map != null && map.size() > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (String str : map.keySet()) {
                        sb.append(str);
                        sb.append(Constants.COLON_SEPARATOR);
                        List list = (List) map.get(str);
                        if (!v.a(list)) {
                            for (int i = 0; i < list.size(); i++) {
                                if (i != 0) {
                                    sb.append(Constants.ACCEPT_TIME_SEPARATOR_SP);
                                }
                                sb.append((String) list.get(i));
                            }
                        }
                        sb.append(";");
                    }
                    iu a2 = a(null, ba.a(), Cif.NotificationRemoved.f527a, null);
                    a2.a("removed_reason", String.valueOf(num));
                    a2.a("all_delete_msgId_appId", sb.toString());
                    b.b("UNDatas upload all removed messages reason: " + num + " allIds: " + sb.toString());
                    a(f9310a, a2);
                }
                f982a.remove(num);
            }
        }
    }

    @Override // com.xiaomi.push.service.XMPushService.o
    /* renamed from: a */
    public void mo351a() {
        if (f982a.size() > 0) {
            synchronized (f982a) {
                b();
            }
        }
    }
}

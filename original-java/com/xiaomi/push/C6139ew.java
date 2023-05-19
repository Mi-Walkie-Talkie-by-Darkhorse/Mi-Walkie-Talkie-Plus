package com.xiaomi.push;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.ifengyu.intercom.bean.QRConstants;
import com.xiaomi.push.service.C6457r;
import com.xiaomi.push.service.C6459s;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.xiaomi.push.ew */
/* loaded from: classes2.dex */
public class C6139ew {
    /* renamed from: a */
    public static void m3018a(Context context, String str, String str2, Map<String, String> map) {
        C6241hz c6241hz = new C6241hz();
        c6241hz.m2528d(str);
        c6241hz.m2532c("hb_name");
        c6241hz.m2544a("hb_channel");
        c6241hz.m2547a(1L);
        c6241hz.m2536b(str2);
        c6241hz.m2541a(false);
        c6241hz.m2537b(System.currentTimeMillis());
        c6241hz.m2521g(context.getPackageName());
        c6241hz.m2525e("com.xiaomi.xmsf");
        if (map == null) {
            map = new HashMap<>();
        }
        String str3 = null;
        C6457r m1294a = C6459s.m1294a(context);
        if (m1294a != null && !TextUtils.isEmpty(m1294a.f23220a)) {
            String[] split = m1294a.f23220a.split("@");
            if (split.length > 0) {
                str3 = split[0];
            }
        }
        map.put(QRConstants.PARAMETER_NAME_UUID, str3);
        map.put("model", Build.MODEL);
        map.put("avc", String.valueOf(C6175g.m2814a(context, context.getPackageName())));
        map.put("pvc", String.valueOf(40082));
        map.put("cvc", String.valueOf(47));
        c6241hz.m2542a(map);
        C6235ht m2571a = C6235ht.m2571a(context);
        if (m2571a != null) {
            m2571a.m2569a(c6241hz, context.getPackageName());
        }
    }

    /* renamed from: a */
    public static void m3017a(Context context, List<C6134es> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder();
        for (C6134es c6134es : list) {
            sb.append(c6134es.toString());
        }
        hashMap.put("wake_up_date", sb.toString());
        m3016a(context, hashMap);
    }

    /* renamed from: a */
    private static void m3016a(Context context, Map<String, String> map) {
        m3018a(context, "tiny_data_category_hb_policy", null, map);
    }

    /* renamed from: b */
    public static void m3015b(Context context, List<C6133er> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder();
        for (C6133er c6133er : list) {
            sb.append(c6133er.toString());
        }
        hashMap.put("ping_pong_date", sb.toString());
        m3016a(context, hashMap);
    }
}

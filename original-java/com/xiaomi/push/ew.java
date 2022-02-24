package com.xiaomi.push;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.push.service.r;
import com.xiaomi.push.service.s;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class ew {
    public static void a(Context context, String str, String str2, Map<String, String> map) {
        hz hzVar = new hz();
        hzVar.d(str);
        hzVar.c("hb_name");
        hzVar.a("hb_channel");
        hzVar.a(1L);
        hzVar.b(str2);
        hzVar.a(false);
        hzVar.b(System.currentTimeMillis());
        hzVar.g(context.getPackageName());
        hzVar.e("com.xiaomi.xmsf");
        if (map == null) {
            map = new HashMap<>();
        }
        String str3 = null;
        r a2 = s.m648a(context);
        if (a2 != null && !TextUtils.isEmpty(a2.f1006a)) {
            String[] split = a2.f1006a.split("@");
            if (split.length > 0) {
                str3 = split[0];
            }
        }
        map.put("uuid", str3);
        map.put("model", Build.MODEL);
        map.put("avc", String.valueOf(g.a(context, context.getPackageName())));
        map.put("pvc", String.valueOf(40082));
        map.put("cvc", String.valueOf(47));
        hzVar.a(map);
        ht a3 = ht.a(context);
        if (a3 != null) {
            a3.a(hzVar, context.getPackageName());
        }
    }

    public static void a(Context context, List<es> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder();
        for (es esVar : list) {
            sb.append(esVar.toString());
        }
        hashMap.put("wake_up_date", sb.toString());
        a(context, hashMap);
    }

    private static void a(Context context, Map<String, String> map) {
        a(context, "tiny_data_category_hb_policy", null, map);
    }

    public static void b(Context context, List<er> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder();
        for (er erVar : list) {
            sb.append(erVar.toString());
        }
        hashMap.put("ping_pong_date", sb.toString());
        a(context, hashMap);
    }
}

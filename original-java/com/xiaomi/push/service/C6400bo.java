package com.xiaomi.push.service;

import com.xiaomi.push.C6251ii;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.bo */
/* loaded from: classes2.dex */
public class C6400bo {
    /* renamed from: a */
    public static C6251ii m1452a(C6251ii c6251ii) {
        Map<String, String> map;
        if (c6251ii != null && (map = c6251ii.f22313b) != null) {
            map.remove("score_info");
        }
        return c6251ii;
    }
}

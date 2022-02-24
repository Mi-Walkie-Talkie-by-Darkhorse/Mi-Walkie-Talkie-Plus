package com.xiaomi.push.service;

import com.xiaomi.push.ii;
import java.util.Map;

/* loaded from: classes2.dex */
public class bo {
    public static ii a(ii iiVar) {
        Map<String, String> map;
        if (!(iiVar == null || (map = iiVar.f566b) == null)) {
            map.remove("score_info");
        }
        return iiVar;
    }
}

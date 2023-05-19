package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6410bw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.xiaomi.push.hs */
/* loaded from: classes2.dex */
public class C6234hs {
    /* renamed from: a */
    private static HashMap<String, ArrayList<C6241hz>> m2574a(Context context, List<C6241hz> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        HashMap<String, ArrayList<C6241hz>> hashMap = new HashMap<>();
        for (C6241hz c6241hz : list) {
            m2575a(context, c6241hz);
            ArrayList<C6241hz> arrayList = hashMap.get(c6241hz.m2534c());
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                hashMap.put(c6241hz.m2534c(), arrayList);
            }
            arrayList.add(c6241hz);
        }
        return hashMap;
    }

    /* renamed from: a */
    private static void m2577a(Context context, InterfaceC6236hu interfaceC6236hu, HashMap<String, ArrayList<C6241hz>> hashMap) {
        for (Map.Entry<String, ArrayList<C6241hz>> entry : hashMap.entrySet()) {
            try {
                ArrayList<C6241hz> value = entry.getValue();
                if (value != null && value.size() != 0) {
                    interfaceC6236hu.mo1306a(value, value.get(0).m2527e(), entry.getKey());
                }
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static void m2576a(Context context, InterfaceC6236hu interfaceC6236hu, List<C6241hz> list) {
        HashMap<String, ArrayList<C6241hz>> m2574a = m2574a(context, list);
        if (m2574a != null && m2574a.size() != 0) {
            m2577a(context, interfaceC6236hu, m2574a);
            return;
        }
        AbstractC5876b.m4147a("TinyData TinyDataCacheUploader.uploadTinyData itemsUploading == null || itemsUploading.size() == 0  ts:" + System.currentTimeMillis());
    }

    /* renamed from: a */
    private static void m2575a(Context context, C6241hz c6241hz) {
        if (c6241hz.f22003a) {
            c6241hz.m2544a("push_sdk_channel");
        }
        if (TextUtils.isEmpty(c6241hz.m2530d())) {
            c6241hz.m2523f(C6410bw.m1419a());
        }
        c6241hz.m2537b(System.currentTimeMillis());
        if (TextUtils.isEmpty(c6241hz.m2527e())) {
            c6241hz.m2525e(context.getPackageName());
        }
        if (TextUtils.isEmpty(c6241hz.m2534c())) {
            c6241hz.m2525e(c6241hz.m2527e());
        }
    }
}

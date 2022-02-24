package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.bw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class hs {
    private static HashMap<String, ArrayList<hz>> a(Context context, List<hz> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        HashMap<String, ArrayList<hz>> hashMap = new HashMap<>();
        for (hz hzVar : list) {
            a(context, hzVar);
            ArrayList<hz> arrayList = hashMap.get(hzVar.c());
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                hashMap.put(hzVar.c(), arrayList);
            }
            arrayList.add(hzVar);
        }
        return hashMap;
    }

    private static void a(Context context, hu huVar, HashMap<String, ArrayList<hz>> hashMap) {
        for (Map.Entry<String, ArrayList<hz>> entry : hashMap.entrySet()) {
            try {
                ArrayList<hz> value = entry.getValue();
                if (!(value == null || value.size() == 0)) {
                    huVar.a(value, value.get(0).e(), entry.getKey());
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Context context, hu huVar, List<hz> list) {
        HashMap<String, ArrayList<hz>> a2 = a(context, list);
        if (a2 == null || a2.size() == 0) {
            b.m1a("TinyData TinyDataCacheUploader.uploadTinyData itemsUploading == null || itemsUploading.size() == 0  ts:" + System.currentTimeMillis());
            return;
        }
        a(context, huVar, a2);
    }

    private static void a(Context context, hz hzVar) {
        if (hzVar.f499a) {
            hzVar.a("push_sdk_channel");
        }
        if (TextUtils.isEmpty(hzVar.d())) {
            hzVar.f(bw.a());
        }
        hzVar.b(System.currentTimeMillis());
        if (TextUtils.isEmpty(hzVar.e())) {
            hzVar.e(context.getPackageName());
        }
        if (TextUtils.isEmpty(hzVar.c())) {
            hzVar.e(hzVar.e());
        }
    }
}

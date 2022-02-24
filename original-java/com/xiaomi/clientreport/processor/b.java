package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.data.a;
import com.xiaomi.push.bs;
import java.io.File;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class b implements IPerfProcessor {

    /* renamed from: a  reason: collision with root package name */
    protected Context f8662a;

    /* renamed from: a  reason: collision with other field name */
    private HashMap<String, HashMap<String, a>> f21a;

    public b(Context context) {
        this.f8662a = context;
    }

    public static String a(a aVar) {
        return String.valueOf(aVar.production) + "#" + aVar.clientInterfaceId;
    }

    private String b(a aVar) {
        String str;
        int i = aVar.production;
        String str2 = aVar.clientInterfaceId;
        if (i <= 0 || TextUtils.isEmpty(str2)) {
            str = "";
        } else {
            str = String.valueOf(i) + "#" + str2;
        }
        File externalFilesDir = this.f8662a.getExternalFilesDir("perf");
        if (externalFilesDir == null) {
            com.xiaomi.channel.commonutils.logger.b.d("cannot get folder when to write perf");
            return null;
        }
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        return new File(externalFilesDir, str).getAbsolutePath();
    }

    private String c(a aVar) {
        String b2 = b(aVar);
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        for (int i = 0; i < 20; i++) {
            String str = b2 + i;
            if (bs.m109a(this.f8662a, str)) {
                return str;
            }
        }
        return null;
    }

    @Override // com.xiaomi.clientreport.processor.c
    public void a() {
        bs.a(this.f8662a, "perf", "perfUploading");
        File[] a2 = bs.m110a(this.f8662a, "perfUploading");
        if (a2 != null && a2.length > 0) {
            for (File file : a2) {
                if (file != null) {
                    List<String> a3 = e.a(this.f8662a, file.getAbsolutePath());
                    file.delete();
                    a(a3);
                }
            }
        }
    }

    @Override // com.xiaomi.clientreport.processor.d
    /* renamed from: a */
    public void mo6a(a aVar) {
        if ((aVar instanceof PerfClientReport) && this.f21a != null) {
            PerfClientReport perfClientReport = (PerfClientReport) aVar;
            String a2 = a((a) perfClientReport);
            String a3 = e.a(perfClientReport);
            HashMap<String, a> hashMap = this.f21a.get(a2);
            if (hashMap == null) {
                hashMap = new HashMap<>();
            }
            PerfClientReport perfClientReport2 = (PerfClientReport) hashMap.get(a3);
            if (perfClientReport2 != null) {
                perfClientReport.perfCounts += perfClientReport2.perfCounts;
                perfClientReport.perfLatencies += perfClientReport2.perfLatencies;
            }
            hashMap.put(a3, perfClientReport);
            this.f21a.put(a2, hashMap);
        }
    }

    public void a(List<String> list) {
        bs.a(this.f8662a, list);
    }

    public void a(a[] aVarArr) {
        String c2 = c(aVarArr[0]);
        if (!TextUtils.isEmpty(c2)) {
            e.a(c2, aVarArr);
        }
    }

    @Override // com.xiaomi.clientreport.processor.d
    public void b() {
        HashMap<String, HashMap<String, a>> hashMap = this.f21a;
        if (hashMap != null) {
            if (hashMap.size() > 0) {
                for (String str : this.f21a.keySet()) {
                    HashMap<String, a> hashMap2 = this.f21a.get(str);
                    if (hashMap2 != null && hashMap2.size() > 0) {
                        a[] aVarArr = new a[hashMap2.size()];
                        hashMap2.values().toArray(aVarArr);
                        a(aVarArr);
                    }
                }
            }
            this.f21a.clear();
        }
    }

    @Override // com.xiaomi.clientreport.processor.IPerfProcessor
    public void setPerfMap(HashMap<String, HashMap<String, a>> hashMap) {
        this.f21a = hashMap;
    }
}

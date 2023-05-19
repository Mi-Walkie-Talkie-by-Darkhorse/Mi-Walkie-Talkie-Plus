package com.xiaomi.clientreport.processor;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.data.C5878a;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.push.C6027bs;
import java.io.File;
import java.util.HashMap;
import java.util.List;

/* renamed from: com.xiaomi.clientreport.processor.b */
/* loaded from: classes2.dex */
public class C5890b implements IPerfProcessor {

    /* renamed from: a */
    protected Context f20844a;

    /* renamed from: a */
    private HashMap<String, HashMap<String, C5878a>> f20845a;

    public C5890b(Context context) {
        this.f20844a = context;
    }

    /* renamed from: a */
    public static String m4101a(C5878a c5878a) {
        return String.valueOf(c5878a.production) + "#" + c5878a.clientInterfaceId;
    }

    /* renamed from: b */
    private String m4099b(C5878a c5878a) {
        String str;
        int i = c5878a.production;
        String str2 = c5878a.clientInterfaceId;
        if (i <= 0 || TextUtils.isEmpty(str2)) {
            str = "";
        } else {
            str = String.valueOf(i) + "#" + str2;
        }
        File externalFilesDir = this.f20844a.getExternalFilesDir("perf");
        if (externalFilesDir == null) {
            AbstractC5876b.m4138d("cannot get folder when to write perf");
            return null;
        }
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        return new File(externalFilesDir, str).getAbsolutePath();
    }

    /* renamed from: c */
    private String m4098c(C5878a c5878a) {
        String m4099b = m4099b(c5878a);
        if (TextUtils.isEmpty(m4099b)) {
            return null;
        }
        for (int i = 0; i < 20; i++) {
            String str = m4099b + i;
            if (C6027bs.m3600a(this.f20844a, str)) {
                return str;
            }
        }
        return null;
    }

    @Override // com.xiaomi.clientreport.processor.InterfaceC5891c
    /* renamed from: a */
    public void mo4097a() {
        C6027bs.m3598a(this.f20844a, "perf", "perfUploading");
        File[] m3599a = C6027bs.m3599a(this.f20844a, "perfUploading");
        if (m3599a == null || m3599a.length <= 0) {
            return;
        }
        for (File file : m3599a) {
            if (file != null) {
                List<String> m4094a = C5893e.m4094a(this.f20844a, file.getAbsolutePath());
                file.delete();
                mo3099a(m4094a);
            }
        }
    }

    @Override // com.xiaomi.clientreport.processor.InterfaceC5892d
    /* renamed from: a */
    public void mo4096a(C5878a c5878a) {
        if ((c5878a instanceof PerfClientReport) && this.f20845a != null) {
            PerfClientReport perfClientReport = (PerfClientReport) c5878a;
            String m4101a = m4101a((C5878a) perfClientReport);
            String m4093a = C5893e.m4093a(perfClientReport);
            HashMap<String, C5878a> hashMap = this.f20845a.get(m4101a);
            if (hashMap == null) {
                hashMap = new HashMap<>();
            }
            PerfClientReport perfClientReport2 = (PerfClientReport) hashMap.get(m4093a);
            if (perfClientReport2 != null) {
                perfClientReport.perfCounts += perfClientReport2.perfCounts;
                perfClientReport.perfLatencies += perfClientReport2.perfLatencies;
            }
            hashMap.put(m4093a, perfClientReport);
            this.f20845a.put(m4101a, hashMap);
        }
    }

    /* renamed from: a */
    public void mo3099a(List<String> list) {
        C6027bs.m3597a(this.f20844a, list);
    }

    /* renamed from: a */
    public void m4100a(C5878a[] c5878aArr) {
        String m4098c = m4098c(c5878aArr[0]);
        if (TextUtils.isEmpty(m4098c)) {
            return;
        }
        C5893e.m4086a(m4098c, c5878aArr);
    }

    @Override // com.xiaomi.clientreport.processor.InterfaceC5892d
    /* renamed from: b */
    public void mo4095b() {
        HashMap<String, HashMap<String, C5878a>> hashMap = this.f20845a;
        if (hashMap == null) {
            return;
        }
        if (hashMap.size() > 0) {
            for (String str : this.f20845a.keySet()) {
                HashMap<String, C5878a> hashMap2 = this.f20845a.get(str);
                if (hashMap2 != null && hashMap2.size() > 0) {
                    C5878a[] c5878aArr = new C5878a[hashMap2.size()];
                    hashMap2.values().toArray(c5878aArr);
                    m4100a(c5878aArr);
                }
            }
        }
        this.f20845a.clear();
    }

    @Override // com.xiaomi.clientreport.processor.IPerfProcessor
    public void setPerfMap(HashMap<String, HashMap<String, C5878a>> hashMap) {
        this.f20845a = hashMap;
    }
}

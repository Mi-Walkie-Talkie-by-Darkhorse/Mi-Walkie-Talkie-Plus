package com.xiaomi.clientreport.manager;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.processor.IEventProcessor;
import com.xiaomi.clientreport.processor.IPerfProcessor;
import com.xiaomi.push.ak;
import com.xiaomi.push.bo;
import com.xiaomi.push.bp;
import com.xiaomi.push.bq;
import com.xiaomi.push.br;
import com.xiaomi.push.bs;
import com.xiaomi.push.bv;
import com.xiaomi.push.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f8651a;

    /* renamed from: a  reason: collision with other field name */
    private static volatile a f8a;

    /* renamed from: a  reason: collision with other field name */
    private Context f9a;

    /* renamed from: a  reason: collision with other field name */
    private Config f10a;

    /* renamed from: a  reason: collision with other field name */
    private IEventProcessor f11a;

    /* renamed from: a  reason: collision with other field name */
    private IPerfProcessor f12a;

    /* renamed from: a  reason: collision with other field name */
    private String f13a;

    /* renamed from: a  reason: collision with other field name */
    private ExecutorService f15a = Executors.newSingleThreadExecutor();

    /* renamed from: a  reason: collision with other field name */
    private HashMap<String, HashMap<String, com.xiaomi.clientreport.data.a>> f14a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, ArrayList<com.xiaomi.clientreport.data.a>> f8652b = new HashMap<>();

    static {
        f8651a = l.m527a() ? 30 : 10;
    }

    private a(Context context) {
        this.f9a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a() {
        HashMap<String, ArrayList<com.xiaomi.clientreport.data.a>> hashMap = this.f8652b;
        if (hashMap == null) {
            return 0;
        }
        int i = 0;
        for (String str : hashMap.keySet()) {
            ArrayList<com.xiaomi.clientreport.data.a> arrayList = this.f8652b.get(str);
            i += arrayList != null ? arrayList.size() : 0;
        }
        return i;
    }

    public static a a(Context context) {
        if (f8a == null) {
            synchronized (a.class) {
                if (f8a == null) {
                    f8a = new a(context);
                }
            }
        }
        return f8a;
    }

    private void a(ak.a aVar, int i) {
        ak.a(this.f9a).b(aVar, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b() {
        HashMap<String, HashMap<String, com.xiaomi.clientreport.data.a>> hashMap = this.f14a;
        int i = 0;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                HashMap<String, com.xiaomi.clientreport.data.a> hashMap2 = this.f14a.get(str);
                if (hashMap2 != null) {
                    for (String str2 : hashMap2.keySet()) {
                        com.xiaomi.clientreport.data.a aVar = hashMap2.get(str2);
                        if (aVar instanceof PerfClientReport) {
                            i = (int) (i + ((PerfClientReport) aVar).perfCounts);
                        }
                    }
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(EventClientReport eventClientReport) {
        IEventProcessor iEventProcessor = this.f11a;
        if (iEventProcessor != null) {
            iEventProcessor.mo6a(eventClientReport);
            if (a() >= 10) {
                d();
                ak.a(this.f9a).m69a("100888");
                return;
            }
            a(new d(this), f8651a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(PerfClientReport perfClientReport) {
        IPerfProcessor iPerfProcessor = this.f12a;
        if (iPerfProcessor != null) {
            iPerfProcessor.mo6a(perfClientReport);
            if (b() >= 10) {
                e();
                ak.a(this.f9a).m69a("100889");
                return;
            }
            a(new f(this), f8651a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            this.f11a.b();
        } catch (Exception e) {
            b.d("we: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        try {
            this.f12a.b();
        } catch (Exception e) {
            b.d("wp: " + e.getMessage());
        }
    }

    private void f() {
        if (a(this.f9a).m3a().isEventUploadSwitchOpen()) {
            bp bpVar = new bp(this.f9a);
            int eventUploadFrequency = (int) a(this.f9a).m3a().getEventUploadFrequency();
            if (eventUploadFrequency < 1800) {
                eventUploadFrequency = 1800;
            }
            if (System.currentTimeMillis() - bv.a(this.f9a).a("sp_client_report_status", "event_last_upload_time", 0L) > eventUploadFrequency * 1000) {
                ak.a(this.f9a).a(new h(this, bpVar), 10);
            }
            synchronized (a.class) {
                if (!ak.a(this.f9a).a((ak.a) bpVar, eventUploadFrequency)) {
                    ak.a(this.f9a).m69a("100886");
                    ak.a(this.f9a).a((ak.a) bpVar, eventUploadFrequency);
                }
            }
        }
    }

    private void g() {
        if (a(this.f9a).m3a().isPerfUploadSwitchOpen()) {
            bq bqVar = new bq(this.f9a);
            int perfUploadFrequency = (int) a(this.f9a).m3a().getPerfUploadFrequency();
            if (perfUploadFrequency < 1800) {
                perfUploadFrequency = 1800;
            }
            if (System.currentTimeMillis() - bv.a(this.f9a).a("sp_client_report_status", "perf_last_upload_time", 0L) > perfUploadFrequency * 1000) {
                ak.a(this.f9a).a(new i(this, bqVar), 15);
            }
            synchronized (a.class) {
                if (!ak.a(this.f9a).a((ak.a) bqVar, perfUploadFrequency)) {
                    ak.a(this.f9a).m69a("100887");
                    ak.a(this.f9a).a((ak.a) bqVar, perfUploadFrequency);
                }
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized Config m3a() {
        if (this.f10a == null) {
            this.f10a = Config.defaultConfig(this.f9a);
        }
        return this.f10a;
    }

    public EventClientReport a(int i, String str) {
        EventClientReport eventClientReport = new EventClientReport();
        eventClientReport.eventContent = str;
        eventClientReport.eventTime = System.currentTimeMillis();
        eventClientReport.eventType = i;
        eventClientReport.eventId = bo.a(6);
        eventClientReport.production = 1000;
        eventClientReport.reportType = 1001;
        eventClientReport.clientInterfaceId = "E100004";
        eventClientReport.setAppPackageName(this.f9a.getPackageName());
        eventClientReport.setSdkVersion(this.f13a);
        return eventClientReport;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m4a() {
        a(this.f9a).f();
        a(this.f9a).g();
    }

    public void a(Config config, IEventProcessor iEventProcessor, IPerfProcessor iPerfProcessor) {
        this.f10a = config;
        this.f11a = iEventProcessor;
        this.f12a = iPerfProcessor;
        iEventProcessor.setEventMap(this.f8652b);
        this.f12a.setPerfMap(this.f14a);
    }

    public void a(EventClientReport eventClientReport) {
        if (m3a().isEventUploadSwitchOpen()) {
            this.f15a.execute(new b(this, eventClientReport));
        }
    }

    public void a(PerfClientReport perfClientReport) {
        if (m3a().isPerfUploadSwitchOpen()) {
            this.f15a.execute(new c(this, perfClientReport));
        }
    }

    public void a(String str) {
        this.f13a = str;
    }

    public void a(boolean z, boolean z2, long j, long j2) {
        Config config = this.f10a;
        if (config == null) {
            return;
        }
        if (z != config.isEventUploadSwitchOpen() || z2 != this.f10a.isPerfUploadSwitchOpen() || j != this.f10a.getEventUploadFrequency() || j2 != this.f10a.getPerfUploadFrequency()) {
            long eventUploadFrequency = this.f10a.getEventUploadFrequency();
            long perfUploadFrequency = this.f10a.getPerfUploadFrequency();
            Config build = Config.getBuilder().setAESKey(bs.a(this.f9a)).setEventEncrypted(this.f10a.isEventEncrypted()).setEventUploadSwitchOpen(z).setEventUploadFrequency(j).setPerfUploadSwitchOpen(z2).setPerfUploadFrequency(j2).build(this.f9a);
            this.f10a = build;
            if (!build.isEventUploadSwitchOpen()) {
                ak.a(this.f9a).m69a("100886");
            } else if (eventUploadFrequency != build.getEventUploadFrequency()) {
                b.c(this.f9a.getPackageName() + "reset event job " + build.getEventUploadFrequency());
                f();
            }
            if (!this.f10a.isPerfUploadSwitchOpen()) {
                ak.a(this.f9a).m69a("100887");
            } else if (perfUploadFrequency != build.getPerfUploadFrequency()) {
                b.c(this.f9a.getPackageName() + " reset perf job " + build.getPerfUploadFrequency());
                g();
            }
        }
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m5b() {
        if (m3a().isEventUploadSwitchOpen()) {
            br brVar = new br();
            brVar.a(this.f9a);
            brVar.a(this.f11a);
            this.f15a.execute(brVar);
        }
    }

    public void c() {
        if (m3a().isPerfUploadSwitchOpen()) {
            br brVar = new br();
            brVar.a(this.f12a);
            brVar.a(this.f9a);
            this.f15a.execute(brVar);
        }
    }
}

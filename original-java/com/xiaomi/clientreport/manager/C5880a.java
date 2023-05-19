package com.xiaomi.clientreport.manager;

import android.content.Context;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.data.C5878a;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.processor.IEventProcessor;
import com.xiaomi.clientreport.processor.IPerfProcessor;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6024bp;
import com.xiaomi.push.C6025bq;
import com.xiaomi.push.C6027bs;
import com.xiaomi.push.C6030bv;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.RunnableC6026br;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: com.xiaomi.clientreport.manager.a */
/* loaded from: classes2.dex */
public class C5880a {

    /* renamed from: a */
    private static final int f20820a;

    /* renamed from: a */
    private static volatile C5880a f20821a;

    /* renamed from: a */
    private Context f20822a;

    /* renamed from: a */
    private Config f20823a;

    /* renamed from: a */
    private IEventProcessor f20824a;

    /* renamed from: a */
    private IPerfProcessor f20825a;

    /* renamed from: a */
    private String f20826a;

    /* renamed from: a */
    private ExecutorService f20828a = Executors.newSingleThreadExecutor();

    /* renamed from: a */
    private HashMap<String, HashMap<String, C5878a>> f20827a = new HashMap<>();

    /* renamed from: b */
    private HashMap<String, ArrayList<C5878a>> f20829b = new HashMap<>();

    static {
        f20820a = C6306l.m1853a() ? 30 : 10;
    }

    private C5880a(Context context) {
        this.f20822a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m4136a() {
        HashMap<String, ArrayList<C5878a>> hashMap = this.f20829b;
        if (hashMap != null) {
            int i = 0;
            for (String str : hashMap.keySet()) {
                ArrayList<C5878a> arrayList = this.f20829b.get(str);
                i += arrayList != null ? arrayList.size() : 0;
            }
            return i;
        }
        return 0;
    }

    /* renamed from: a */
    public static C5880a m4132a(Context context) {
        if (f20821a == null) {
            synchronized (C5880a.class) {
                if (f20821a == null) {
                    f20821a = new C5880a(context);
                }
            }
        }
        return f20821a;
    }

    /* renamed from: a */
    private void m4123a(C5978ak.AbstractRunnableC5979a abstractRunnableC5979a, int i) {
        C5978ak.m3784a(this.f20822a).m3771b(abstractRunnableC5979a, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public int m4120b() {
        HashMap<String, HashMap<String, C5878a>> hashMap = this.f20827a;
        int i = 0;
        if (hashMap != null) {
            for (String str : hashMap.keySet()) {
                HashMap<String, C5878a> hashMap2 = this.f20827a.get(str);
                if (hashMap2 != null) {
                    for (String str2 : hashMap2.keySet()) {
                        C5878a c5878a = hashMap2.get(str2);
                        if (c5878a instanceof PerfClientReport) {
                            i = (int) (i + ((PerfClientReport) c5878a).perfCounts);
                        }
                    }
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4118b(EventClientReport eventClientReport) {
        IEventProcessor iEventProcessor = this.f20824a;
        if (iEventProcessor != null) {
            iEventProcessor.mo4096a(eventClientReport);
            if (m4136a() < 10) {
                m4123a(new C5883d(this), f20820a);
                return;
            }
            m4113d();
            C5978ak.m3784a(this.f20822a).m3772a("100888");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4117b(PerfClientReport perfClientReport) {
        IPerfProcessor iPerfProcessor = this.f20825a;
        if (iPerfProcessor != null) {
            iPerfProcessor.mo4096a(perfClientReport);
            if (m4120b() < 10) {
                m4123a(new C5885f(this), f20820a);
                return;
            }
            m4112e();
            C5978ak.m3784a(this.f20822a).m3772a("100889");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m4113d() {
        try {
            this.f20824a.mo4095b();
        } catch (Exception e) {
            AbstractC5876b.m4138d("we: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m4112e() {
        try {
            this.f20825a.mo4095b();
        } catch (Exception e) {
            AbstractC5876b.m4138d("wp: " + e.getMessage());
        }
    }

    /* renamed from: f */
    private void m4111f() {
        if (m4132a(this.f20822a).m4135a().isEventUploadSwitchOpen()) {
            C6024bp c6024bp = new C6024bp(this.f20822a);
            int eventUploadFrequency = (int) m4132a(this.f20822a).m4135a().getEventUploadFrequency();
            if (eventUploadFrequency < 1800) {
                eventUploadFrequency = 1800;
            }
            if (System.currentTimeMillis() - C6030bv.m3595a(this.f20822a).m3594a("sp_client_report_status", "event_last_upload_time", 0L) > eventUploadFrequency * XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER) {
                C5978ak.m3784a(this.f20822a).m3774a(new RunnableC5887h(this, c6024bp), 10);
            }
            synchronized (C5880a.class) {
                if (!C5978ak.m3784a(this.f20822a).m3781a((C5978ak.AbstractRunnableC5979a) c6024bp, eventUploadFrequency)) {
                    C5978ak.m3784a(this.f20822a).m3772a("100886");
                    C5978ak.m3784a(this.f20822a).m3781a((C5978ak.AbstractRunnableC5979a) c6024bp, eventUploadFrequency);
                }
            }
        }
    }

    /* renamed from: g */
    private void m4110g() {
        if (m4132a(this.f20822a).m4135a().isPerfUploadSwitchOpen()) {
            C6025bq c6025bq = new C6025bq(this.f20822a);
            int perfUploadFrequency = (int) m4132a(this.f20822a).m4135a().getPerfUploadFrequency();
            if (perfUploadFrequency < 1800) {
                perfUploadFrequency = 1800;
            }
            if (System.currentTimeMillis() - C6030bv.m3595a(this.f20822a).m3594a("sp_client_report_status", "perf_last_upload_time", 0L) > perfUploadFrequency * XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER) {
                C5978ak.m3784a(this.f20822a).m3774a(new RunnableC5888i(this, c6025bq), 15);
            }
            synchronized (C5880a.class) {
                if (!C5978ak.m3784a(this.f20822a).m3781a((C5978ak.AbstractRunnableC5979a) c6025bq, perfUploadFrequency)) {
                    C5978ak.m3784a(this.f20822a).m3772a("100887");
                    C5978ak.m3784a(this.f20822a).m3781a((C5978ak.AbstractRunnableC5979a) c6025bq, perfUploadFrequency);
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized Config m4135a() {
        if (this.f20823a == null) {
            this.f20823a = Config.defaultConfig(this.f20822a);
        }
        return this.f20823a;
    }

    /* renamed from: a */
    public EventClientReport m4133a(int i, String str) {
        EventClientReport eventClientReport = new EventClientReport();
        eventClientReport.eventContent = str;
        eventClientReport.eventTime = System.currentTimeMillis();
        eventClientReport.eventType = i;
        eventClientReport.eventId = C6023bo.m3621a(6);
        eventClientReport.production = XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
        eventClientReport.reportType = 1001;
        eventClientReport.clientInterfaceId = "E100004";
        eventClientReport.setAppPackageName(this.f20822a.getPackageName());
        eventClientReport.setSdkVersion(this.f20826a);
        return eventClientReport;
    }

    /* renamed from: a */
    public void m4134a() {
        m4132a(this.f20822a).m4111f();
        m4132a(this.f20822a).m4110g();
    }

    /* renamed from: a */
    public void m4131a(Config config, IEventProcessor iEventProcessor, IPerfProcessor iPerfProcessor) {
        this.f20823a = config;
        this.f20824a = iEventProcessor;
        this.f20825a = iPerfProcessor;
        iEventProcessor.setEventMap(this.f20829b);
        this.f20825a.setPerfMap(this.f20827a);
    }

    /* renamed from: a */
    public void m4130a(EventClientReport eventClientReport) {
        if (m4135a().isEventUploadSwitchOpen()) {
            this.f20828a.execute(new RunnableC5881b(this, eventClientReport));
        }
    }

    /* renamed from: a */
    public void m4129a(PerfClientReport perfClientReport) {
        if (m4135a().isPerfUploadSwitchOpen()) {
            this.f20828a.execute(new RunnableC5882c(this, perfClientReport));
        }
    }

    /* renamed from: a */
    public void m4122a(String str) {
        this.f20826a = str;
    }

    /* renamed from: a */
    public void m4121a(boolean z, boolean z2, long j, long j2) {
        Config config = this.f20823a;
        if (config != null) {
            if (z == config.isEventUploadSwitchOpen() && z2 == this.f20823a.isPerfUploadSwitchOpen() && j == this.f20823a.getEventUploadFrequency() && j2 == this.f20823a.getPerfUploadFrequency()) {
                return;
            }
            long eventUploadFrequency = this.f20823a.getEventUploadFrequency();
            long perfUploadFrequency = this.f20823a.getPerfUploadFrequency();
            Config build = Config.getBuilder().setAESKey(C6027bs.m3603a(this.f20822a)).setEventEncrypted(this.f20823a.isEventEncrypted()).setEventUploadSwitchOpen(z).setEventUploadFrequency(j).setPerfUploadSwitchOpen(z2).setPerfUploadFrequency(j2).build(this.f20822a);
            this.f20823a = build;
            if (!build.isEventUploadSwitchOpen()) {
                C5978ak.m3784a(this.f20822a).m3772a("100886");
            } else if (eventUploadFrequency != build.getEventUploadFrequency()) {
                AbstractC5876b.m4139c(this.f20822a.getPackageName() + "reset event job " + build.getEventUploadFrequency());
                m4111f();
            }
            if (!this.f20823a.isPerfUploadSwitchOpen()) {
                C5978ak.m3784a(this.f20822a).m3772a("100887");
            } else if (perfUploadFrequency != build.getPerfUploadFrequency()) {
                AbstractC5876b.m4139c(this.f20822a.getPackageName() + " reset perf job " + build.getPerfUploadFrequency());
                m4110g();
            }
        }
    }

    /* renamed from: b */
    public void m4119b() {
        if (m4135a().isEventUploadSwitchOpen()) {
            RunnableC6026br runnableC6026br = new RunnableC6026br();
            runnableC6026br.m3606a(this.f20822a);
            runnableC6026br.m3605a(this.f20824a);
            this.f20828a.execute(runnableC6026br);
        }
    }

    /* renamed from: c */
    public void m4114c() {
        if (m4135a().isPerfUploadSwitchOpen()) {
            RunnableC6026br runnableC6026br = new RunnableC6026br();
            runnableC6026br.m3605a(this.f20825a);
            runnableC6026br.m3606a(this.f20822a);
            this.f20828a.execute(runnableC6026br);
        }
    }
}

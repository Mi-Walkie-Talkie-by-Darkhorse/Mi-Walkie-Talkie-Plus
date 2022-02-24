package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.manager.ClientReportClient;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.service.bw;
import com.xiaomi.push.service.bx;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class em {

    /* renamed from: a  reason: collision with root package name */
    private static a f8905a;

    /* renamed from: a  reason: collision with other field name */
    private static Map<String, Cif> f301a;

    /* loaded from: classes2.dex */
    public interface a {
        void uploader(Context context, hz hzVar);
    }

    public static int a(int i) {
        if (i > 0) {
            return i + 1000;
        }
        return -1;
    }

    public static int a(Enum r1) {
        if (r1 != null) {
            if (r1 instanceof hv) {
                return r1.ordinal() + 1001;
            }
            if (r1 instanceof Cif) {
                return r1.ordinal() + 2001;
            }
            if (r1 instanceof fl) {
                return r1.ordinal() + GLMapStaticValue.AM_PARAMETERNAME_PROCESS_REALCITY;
            }
        }
        return -1;
    }

    public static Config a(Context context) {
        boolean a2 = ax.a(context).a(ia.PerfUploadSwitch.a(), false);
        boolean a3 = ax.a(context).a(ia.EventUploadNewSwitch.a(), false);
        int a4 = ax.a(context).a(ia.PerfUploadFrequency.a(), 86400);
        return Config.getBuilder().setEventUploadSwitchOpen(a3).setEventUploadFrequency(ax.a(context).a(ia.EventUploadFrequency.a(), 86400)).setPerfUploadSwitchOpen(a2).setPerfUploadFrequency(a4).build(context);
    }

    public static EventClientReport a(Context context, String str, String str2, int i, long j, String str3) {
        EventClientReport a2 = a(str);
        a2.eventId = str2;
        a2.eventType = i;
        a2.eventTime = j;
        a2.eventContent = str3;
        return a2;
    }

    public static EventClientReport a(String str) {
        EventClientReport eventClientReport = new EventClientReport();
        eventClientReport.production = 1000;
        eventClientReport.reportType = 1001;
        eventClientReport.clientInterfaceId = str;
        return eventClientReport;
    }

    public static PerfClientReport a() {
        PerfClientReport perfClientReport = new PerfClientReport();
        perfClientReport.production = 1000;
        perfClientReport.reportType = 1000;
        perfClientReport.clientInterfaceId = "P100000";
        return perfClientReport;
    }

    public static PerfClientReport a(Context context, int i, long j, long j2) {
        PerfClientReport a2 = a();
        a2.code = i;
        a2.perfCounts = j;
        a2.perfLatencies = j2;
        return a2;
    }

    public static hz a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        hz hzVar = new hz();
        hzVar.d("category_client_report_data");
        hzVar.a("push_sdk_channel");
        hzVar.a(1L);
        hzVar.b(str);
        hzVar.a(true);
        hzVar.b(System.currentTimeMillis());
        hzVar.g(context.getPackageName());
        hzVar.e("com.xiaomi.xmsf");
        hzVar.f(bw.a());
        hzVar.c("quality_support");
        return hzVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static Cif m232a(String str) {
        Cif[] values;
        if (f301a == null) {
            synchronized (Cif.class) {
                if (f301a == null) {
                    f301a = new HashMap();
                    for (Cif ifVar : Cif.values()) {
                        f301a.put(ifVar.f527a.toLowerCase(), ifVar);
                    }
                }
            }
        }
        Cif ifVar2 = f301a.get(str.toLowerCase());
        return ifVar2 != null ? ifVar2 : Cif.Invalid;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static String m233a(int i) {
        return i == 1000 ? "E100000" : i == 3000 ? "E100002" : i == 2000 ? "E100001" : i == 6000 ? "E100003" : "";
    }

    /* renamed from: a  reason: collision with other method in class */
    public static void m234a(Context context) {
        ClientReportClient.updateConfig(context, a(context));
    }

    public static void a(Context context, Config config) {
        ClientReportClient.init(context, config, new ek(context), new el(context));
    }

    private static void a(Context context, hz hzVar) {
        if (m235a(context.getApplicationContext())) {
            bx.a(context.getApplicationContext(), hzVar);
            return;
        }
        a aVar = f8905a;
        if (aVar != null) {
            aVar.uploader(context, hzVar);
        }
    }

    public static void a(Context context, List<String> list) {
        if (list != null) {
            try {
                for (String str : list) {
                    hz a2 = a(context, str);
                    if (!bw.a(a2, false)) {
                        a(context, a2);
                    }
                }
            } catch (Throwable th) {
                b.d(th.getMessage());
            }
        }
    }

    public static void a(a aVar) {
        f8905a = aVar;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m235a(Context context) {
        return context != null && !TextUtils.isEmpty(context.getPackageName()) && "com.xiaomi.xmsf".equals(context.getPackageName());
    }
}

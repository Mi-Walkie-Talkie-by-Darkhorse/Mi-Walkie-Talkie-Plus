package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.utils.GLMapStaticValue;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.data.Config;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.manager.ClientReportClient;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.C6410bw;
import com.xiaomi.push.service.C6411bx;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: com.xiaomi.push.em */
/* loaded from: classes2.dex */
public class C6127em {

    /* renamed from: a */
    private static InterfaceC6128a f21445a;

    /* renamed from: a */
    private static Map<String, EnumC6248if> f21446a;

    /* renamed from: com.xiaomi.push.em$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC6128a {
        void uploader(Context context, C6241hz c6241hz);
    }

    /* renamed from: a */
    public static int m3097a(int i) {
        if (i > 0) {
            return i + XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
        }
        return -1;
    }

    /* renamed from: a */
    public static int m3085a(Enum r1) {
        if (r1 != null) {
            if (r1 instanceof EnumC6237hv) {
                return r1.ordinal() + 1001;
            }
            if (r1 instanceof EnumC6248if) {
                return r1.ordinal() + 2001;
            }
            if (r1 instanceof EnumC6157fl) {
                return r1.ordinal() + GLMapStaticValue.AM_PARAMETERNAME_PROCESS_REALCITY;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public static Config m3095a(Context context) {
        boolean m1531a = C6372ax.m1530a(context).m1531a(EnumC6243ia.PerfUploadSwitch.m2484a(), false);
        boolean m1531a2 = C6372ax.m1530a(context).m1531a(EnumC6243ia.EventUploadNewSwitch.m2484a(), false);
        int m1534a = C6372ax.m1530a(context).m1534a(EnumC6243ia.PerfUploadFrequency.m2484a(), 86400);
        return Config.getBuilder().setEventUploadSwitchOpen(m1531a2).setEventUploadFrequency(C6372ax.m1530a(context).m1534a(EnumC6243ia.EventUploadFrequency.m2484a(), 86400)).setPerfUploadSwitchOpen(m1531a).setPerfUploadFrequency(m1534a).build(context);
    }

    /* renamed from: a */
    public static EventClientReport m3088a(Context context, String str, String str2, int i, long j, String str3) {
        EventClientReport m3084a = m3084a(str);
        m3084a.eventId = str2;
        m3084a.eventType = i;
        m3084a.eventTime = j;
        m3084a.eventContent = str3;
        return m3084a;
    }

    /* renamed from: a */
    public static EventClientReport m3084a(String str) {
        EventClientReport eventClientReport = new EventClientReport();
        eventClientReport.production = XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
        eventClientReport.reportType = 1001;
        eventClientReport.clientInterfaceId = str;
        return eventClientReport;
    }

    /* renamed from: a */
    public static PerfClientReport m3098a() {
        PerfClientReport perfClientReport = new PerfClientReport();
        perfClientReport.production = XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
        perfClientReport.reportType = XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER;
        perfClientReport.clientInterfaceId = "P100000";
        return perfClientReport;
    }

    /* renamed from: a */
    public static PerfClientReport m3092a(Context context, int i, long j, long j2) {
        PerfClientReport m3098a = m3098a();
        m3098a.code = i;
        m3098a.perfCounts = j;
        m3098a.perfLatencies = j2;
        return m3098a;
    }

    /* renamed from: a */
    public static C6241hz m3089a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C6241hz c6241hz = new C6241hz();
        c6241hz.m2528d("category_client_report_data");
        c6241hz.m2544a("push_sdk_channel");
        c6241hz.m2547a(1L);
        c6241hz.m2536b(str);
        c6241hz.m2541a(true);
        c6241hz.m2537b(System.currentTimeMillis());
        c6241hz.m2521g(context.getPackageName());
        c6241hz.m2525e("com.xiaomi.xmsf");
        c6241hz.m2523f(C6410bw.m1419a());
        c6241hz.m2532c("quality_support");
        return c6241hz;
    }

    /* renamed from: a */
    public static EnumC6248if m3083a(String str) {
        EnumC6248if[] values;
        if (f21446a == null) {
            synchronized (EnumC6248if.class) {
                if (f21446a == null) {
                    f21446a = new HashMap();
                    for (EnumC6248if enumC6248if : EnumC6248if.values()) {
                        f21446a.put(enumC6248if.f22236a.toLowerCase(), enumC6248if);
                    }
                }
            }
        }
        EnumC6248if enumC6248if2 = f21446a.get(str.toLowerCase());
        return enumC6248if2 != null ? enumC6248if2 : EnumC6248if.Invalid;
    }

    /* renamed from: a */
    public static String m3096a(int i) {
        return i == 1000 ? "E100000" : i == 3000 ? "E100002" : i == 2000 ? "E100001" : i == 6000 ? "E100003" : "";
    }

    /* renamed from: a */
    public static void m3094a(Context context) {
        ClientReportClient.updateConfig(context, m3095a(context));
    }

    /* renamed from: a */
    public static void m3091a(Context context, Config config) {
        ClientReportClient.init(context, config, new C6125ek(context), new C6126el(context));
    }

    /* renamed from: a */
    private static void m3090a(Context context, C6241hz c6241hz) {
        if (m3093a(context.getApplicationContext())) {
            C6411bx.m1412a(context.getApplicationContext(), c6241hz);
            return;
        }
        InterfaceC6128a interfaceC6128a = f21445a;
        if (interfaceC6128a != null) {
            interfaceC6128a.uploader(context, c6241hz);
        }
    }

    /* renamed from: a */
    public static void m3087a(Context context, List<String> list) {
        if (list == null) {
            return;
        }
        try {
            for (String str : list) {
                C6241hz m3089a = m3089a(context, str);
                if (!C6410bw.m1417a(m3089a, false)) {
                    m3090a(context, m3089a);
                }
            }
        } catch (Throwable th) {
            AbstractC5876b.m4138d(th.getMessage());
        }
    }

    /* renamed from: a */
    public static void m3086a(InterfaceC6128a interfaceC6128a) {
        f21445a = interfaceC6128a;
    }

    /* renamed from: a */
    public static boolean m3093a(Context context) {
        return (context == null || TextUtils.isEmpty(context.getPackageName()) || !"com.xiaomi.xmsf".equals(context.getPackageName())) ? false : true;
    }
}

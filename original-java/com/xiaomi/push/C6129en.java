package com.xiaomi.push;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.autonavi.p090ae.gmap.utils.GLMapStaticValue;
import com.xiaomi.clientreport.data.C5878a;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.manager.ClientReportClient;

/* renamed from: com.xiaomi.push.en */
/* loaded from: classes2.dex */
public class C6129en {

    /* renamed from: a */
    private static volatile C6129en f21447a;

    /* renamed from: a */
    private Context f21448a;

    private C6129en(Context context) {
        this.f21448a = context;
    }

    /* renamed from: a */
    public static C6129en m3082a(Context context) {
        if (f21447a == null) {
            synchronized (C6129en.class) {
                if (f21447a == null) {
                    f21447a = new C6129en(context);
                }
            }
        }
        return f21447a;
    }

    /* renamed from: a */
    private void m3081a(C5878a c5878a) {
        if (c5878a instanceof PerfClientReport) {
            ClientReportClient.reportPerf(this.f21448a, (PerfClientReport) c5878a);
        } else if (c5878a instanceof EventClientReport) {
            ClientReportClient.reportEvent(this.f21448a, (EventClientReport) c5878a);
        }
    }

    /* renamed from: a */
    public void m3080a(String str, int i, long j, long j2) {
        if (i < 0 || j2 < 0 || j <= 0) {
            return;
        }
        PerfClientReport m3092a = C6127em.m3092a(this.f21448a, i, j, j2);
        m3092a.setAppPackageName(str);
        m3092a.setSdkVersion("4_8_2");
        m3081a(m3092a);
    }

    /* renamed from: a */
    public void m3079a(String str, Intent intent, int i, String str2) {
        if (intent == null) {
            return;
        }
        m3077a(str, C6127em.m3096a(intent.getIntExtra("eventMessageType", -1)), intent.getStringExtra("messageId"), i, System.currentTimeMillis(), str2);
    }

    /* renamed from: a */
    public void m3078a(String str, Intent intent, String str2) {
        if (intent == null) {
            return;
        }
        m3077a(str, C6127em.m3096a(intent.getIntExtra("eventMessageType", -1)), intent.getStringExtra("messageId"), GLMapStaticValue.AM_PARAMETERNAME_NETWORK, System.currentTimeMillis(), str2);
    }

    /* renamed from: a */
    public void m3077a(String str, String str2, String str3, int i, long j, String str4) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        EventClientReport m3088a = C6127em.m3088a(this.f21448a, str2, str3, i, j, str4);
        m3088a.setAppPackageName(str);
        m3088a.setSdkVersion("4_8_2");
        m3081a(m3088a);
    }

    /* renamed from: a */
    public void m3076a(String str, String str2, String str3, int i, String str4) {
        m3077a(str, str2, str3, i, System.currentTimeMillis(), str4);
    }

    /* renamed from: a */
    public void m3075a(String str, String str2, String str3, String str4) {
        m3077a(str, str2, str3, 5002, System.currentTimeMillis(), str4);
    }

    /* renamed from: b */
    public void m3074b(String str, String str2, String str3, String str4) {
        m3077a(str, str2, str3, GLMapStaticValue.AM_PARAMETERNAME_NETWORK, System.currentTimeMillis(), str4);
    }

    /* renamed from: c */
    public void m3073c(String str, String str2, String str3, String str4) {
        m3077a(str, str2, str3, 4002, System.currentTimeMillis(), str4);
    }
}

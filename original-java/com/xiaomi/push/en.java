package com.xiaomi.push;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import com.xiaomi.clientreport.data.EventClientReport;
import com.xiaomi.clientreport.data.PerfClientReport;
import com.xiaomi.clientreport.data.a;
import com.xiaomi.clientreport.manager.ClientReportClient;

/* loaded from: classes2.dex */
public class en {

    /* renamed from: a  reason: collision with root package name */
    private static volatile en f8906a;

    /* renamed from: a  reason: collision with other field name */
    private Context f302a;

    private en(Context context) {
        this.f302a = context;
    }

    public static en a(Context context) {
        if (f8906a == null) {
            synchronized (en.class) {
                if (f8906a == null) {
                    f8906a = new en(context);
                }
            }
        }
        return f8906a;
    }

    private void a(a aVar) {
        if (aVar instanceof PerfClientReport) {
            ClientReportClient.reportPerf(this.f302a, (PerfClientReport) aVar);
        } else if (aVar instanceof EventClientReport) {
            ClientReportClient.reportEvent(this.f302a, (EventClientReport) aVar);
        }
    }

    public void a(String str, int i, long j, long j2) {
        if (i >= 0 && j2 >= 0 && j > 0) {
            PerfClientReport a2 = em.a(this.f302a, i, j, j2);
            a2.setAppPackageName(str);
            a2.setSdkVersion("4_8_2");
            a(a2);
        }
    }

    public void a(String str, Intent intent, int i, String str2) {
        if (intent != null) {
            a(str, em.m233a(intent.getIntExtra("eventMessageType", -1)), intent.getStringExtra("messageId"), i, System.currentTimeMillis(), str2);
        }
    }

    public void a(String str, Intent intent, String str2) {
        if (intent != null) {
            a(str, em.m233a(intent.getIntExtra("eventMessageType", -1)), intent.getStringExtra("messageId"), GLMapStaticValue.AM_PARAMETERNAME_NETWORK, System.currentTimeMillis(), str2);
        }
    }

    public void a(String str, String str2, String str3, int i, long j, String str4) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            EventClientReport a2 = em.a(this.f302a, str2, str3, i, j, str4);
            a2.setAppPackageName(str);
            a2.setSdkVersion("4_8_2");
            a(a2);
        }
    }

    public void a(String str, String str2, String str3, int i, String str4) {
        a(str, str2, str3, i, System.currentTimeMillis(), str4);
    }

    public void a(String str, String str2, String str3, String str4) {
        a(str, str2, str3, 5002, System.currentTimeMillis(), str4);
    }

    public void b(String str, String str2, String str3, String str4) {
        a(str, str2, str3, GLMapStaticValue.AM_PARAMETERNAME_NETWORK, System.currentTimeMillis(), str4);
    }

    public void c(String str, String str2, String str3, String str4) {
        a(str, str2, str3, 4002, System.currentTimeMillis(), str4);
    }
}

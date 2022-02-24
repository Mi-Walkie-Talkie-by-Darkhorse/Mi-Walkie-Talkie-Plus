package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.clientreport.processor.IEventProcessor;
import com.xiaomi.clientreport.processor.IPerfProcessor;
import com.xiaomi.clientreport.processor.c;

/* loaded from: classes2.dex */
public class br implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Context f8788a;

    /* renamed from: a  reason: collision with other field name */
    private c f137a;

    public void a(Context context) {
        this.f8788a = context;
    }

    public void a(c cVar) {
        this.f137a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        bv a2;
        String str;
        long currentTimeMillis;
        try {
            if (this.f137a != null) {
                this.f137a.a();
            }
            b.c("begin read and send perf / event");
            if (this.f137a instanceof IEventProcessor) {
                a2 = bv.a(this.f8788a);
                str = "event_last_upload_time";
                currentTimeMillis = System.currentTimeMillis();
            } else if (this.f137a instanceof IPerfProcessor) {
                a2 = bv.a(this.f8788a);
                str = "perf_last_upload_time";
                currentTimeMillis = System.currentTimeMillis();
            } else {
                return;
            }
            a2.m111a("sp_client_report_status", str, currentTimeMillis);
        } catch (Exception e) {
            b.a(e);
        }
    }
}

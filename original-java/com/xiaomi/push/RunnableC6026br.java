package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.processor.IEventProcessor;
import com.xiaomi.clientreport.processor.IPerfProcessor;
import com.xiaomi.clientreport.processor.InterfaceC5891c;

/* renamed from: com.xiaomi.push.br */
/* loaded from: classes2.dex */
public class RunnableC6026br implements Runnable {

    /* renamed from: a */
    private Context f21120a;

    /* renamed from: a */
    private InterfaceC5891c f21121a;

    /* renamed from: a */
    public void m3606a(Context context) {
        this.f21120a = context;
    }

    /* renamed from: a */
    public void m3605a(InterfaceC5891c interfaceC5891c) {
        this.f21121a = interfaceC5891c;
    }

    @Override // java.lang.Runnable
    public void run() {
        C6030bv m3595a;
        String str;
        long currentTimeMillis;
        try {
            InterfaceC5891c interfaceC5891c = this.f21121a;
            if (interfaceC5891c != null) {
                interfaceC5891c.mo4097a();
            }
            AbstractC5876b.m4139c("begin read and send perf / event");
            InterfaceC5891c interfaceC5891c2 = this.f21121a;
            if (interfaceC5891c2 instanceof IEventProcessor) {
                m3595a = C6030bv.m3595a(this.f21120a);
                str = "event_last_upload_time";
                currentTimeMillis = System.currentTimeMillis();
            } else if (!(interfaceC5891c2 instanceof IPerfProcessor)) {
                return;
            } else {
                m3595a = C6030bv.m3595a(this.f21120a);
                str = "perf_last_upload_time";
                currentTimeMillis = System.currentTimeMillis();
            }
            m3595a.m3593a("sp_client_report_status", str, currentTimeMillis);
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
        }
    }
}

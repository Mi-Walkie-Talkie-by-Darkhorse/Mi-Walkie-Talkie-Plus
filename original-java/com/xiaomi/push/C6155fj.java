package com.xiaomi.push;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6152fh;
import com.xiaomi.push.service.XMJobService;

@TargetApi(21)
/* renamed from: com.xiaomi.push.fj */
/* loaded from: classes2.dex */
public class C6155fj implements C6152fh.InterfaceC6153a {

    /* renamed from: a */
    JobScheduler f21538a;

    /* renamed from: a */
    Context f21539a;

    /* renamed from: a */
    private boolean f21540a = false;

    C6155fj(Context context) {
        this.f21539a = context;
        this.f21538a = (JobScheduler) context.getSystemService("jobscheduler");
    }

    @Override // com.xiaomi.push.C6152fh.InterfaceC6153a
    /* renamed from: a */
    public void mo2926a() {
        this.f21540a = false;
        this.f21538a.cancel(1);
    }

    @Override // com.xiaomi.push.C6152fh.InterfaceC6153a
    /* renamed from: a */
    public void mo2924a(long j) {
    }

    @Override // com.xiaomi.push.C6152fh.InterfaceC6153a
    /* renamed from: a */
    public void mo2923a(boolean z) {
        if (z || this.f21540a) {
            long m2722b = C6198gp.m2722b();
            if (z) {
                mo2926a();
                m2722b -= SystemClock.elapsedRealtime() % m2722b;
            }
            this.f21540a = true;
            m2922b(m2722b);
        }
    }

    @Override // com.xiaomi.push.C6152fh.InterfaceC6153a
    /* renamed from: a */
    public boolean mo2925a() {
        return this.f21540a;
    }

    /* renamed from: b */
    void m2922b(long j) {
        JobInfo.Builder builder = new JobInfo.Builder(1, new ComponentName(this.f21539a.getPackageName(), XMJobService.class.getName()));
        builder.setMinimumLatency(j);
        builder.setOverrideDeadline(j);
        builder.setRequiredNetworkType(1);
        builder.setPersisted(false);
        JobInfo build = builder.build();
        AbstractC5876b.m4139c("schedule Job = " + build.getId() + " in " + j);
        this.f21538a.schedule(builder.build());
    }
}

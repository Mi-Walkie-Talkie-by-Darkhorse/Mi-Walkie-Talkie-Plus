package com.xiaomi.push;

import android.annotation.TargetApi;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.SystemClock;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.fh;
import com.xiaomi.push.service.XMJobService;

@TargetApi(21)
/* loaded from: classes2.dex */
public class fj implements fh.a {

    /* renamed from: a  reason: collision with root package name */
    JobScheduler f8943a;

    /* renamed from: a  reason: collision with other field name */
    Context f351a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f352a = false;

    fj(Context context) {
        this.f351a = context;
        this.f8943a = (JobScheduler) context.getSystemService("jobscheduler");
    }

    @Override // com.xiaomi.push.fh.a
    /* renamed from: a */
    public void mo276a() {
        this.f352a = false;
        this.f8943a.cancel(1);
    }

    @Override // com.xiaomi.push.fh.a
    public void a(long j) {
    }

    @Override // com.xiaomi.push.fh.a
    public void a(boolean z) {
        if (z || this.f352a) {
            long b2 = gp.b();
            if (z) {
                mo276a();
                b2 -= SystemClock.elapsedRealtime() % b2;
            }
            this.f352a = true;
            b(b2);
        }
    }

    @Override // com.xiaomi.push.fh.a
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo276a() {
        return this.f352a;
    }

    void b(long j) {
        JobInfo.Builder builder = new JobInfo.Builder(1, new ComponentName(this.f351a.getPackageName(), XMJobService.class.getName()));
        builder.setMinimumLatency(j);
        builder.setOverrideDeadline(j);
        builder.setRequiredNetworkType(1);
        builder.setPersisted(false);
        JobInfo build = builder.build();
        b.c("schedule Job = " + build.getId() + " in " + j);
        this.f8943a.schedule(builder.build());
    }
}

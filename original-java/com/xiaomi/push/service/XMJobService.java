package com.xiaomi.push.service;

import android.annotation.TargetApi;
import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bj;
import com.xiaomi.push.fh;

/* loaded from: classes2.dex */
public class XMJobService extends Service {

    /* renamed from: a  reason: collision with root package name */
    static Service f9197a;

    /* renamed from: a  reason: collision with other field name */
    private IBinder f855a = null;

    @TargetApi(21)
    /* loaded from: classes2.dex */
    static class a extends JobService {

        /* renamed from: a  reason: collision with root package name */
        Binder f9198a;

        /* renamed from: a  reason: collision with other field name */
        private Handler f856a;

        /* renamed from: com.xiaomi.push.service.XMJobService$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        private static class HandlerC0235a extends Handler {

            /* renamed from: a  reason: collision with root package name */
            JobService f9199a;

            HandlerC0235a(JobService jobService) {
                super(jobService.getMainLooper());
                this.f9199a = jobService;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    JobParameters jobParameters = (JobParameters) message.obj;
                    b.m1a("Job finished " + jobParameters.getJobId());
                    this.f9199a.jobFinished(jobParameters, false);
                    if (jobParameters.getJobId() == 1) {
                        fh.a(false);
                    }
                }
            }
        }

        a(Service service) {
            this.f9198a = null;
            this.f9198a = (Binder) bj.a((Object) this, "onBind", new Intent());
            bj.a((Object) this, "attachBaseContext", service);
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            b.m1a("Job started " + jobParameters.getJobId());
            Intent intent = new Intent(this, XMPushService.class);
            intent.setAction("com.xiaomi.push.timer");
            intent.setPackage(getPackageName());
            startService(intent);
            if (this.f856a == null) {
                this.f856a = new HandlerC0235a(this);
            }
            Handler handler = this.f856a;
            handler.sendMessage(Message.obtain(handler, 1, jobParameters));
            return true;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            b.m1a("Job stop " + jobParameters.getJobId());
            return false;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder = this.f855a;
        return iBinder != null ? iBinder : new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f855a = new a(this).f9198a;
        }
        f9197a = this;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f9197a = null;
    }
}

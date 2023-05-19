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
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6016bj;
import com.xiaomi.push.C6152fh;

/* loaded from: classes2.dex */
public class XMJobService extends Service {

    /* renamed from: a */
    static Service f22863a;

    /* renamed from: a */
    private IBinder f22864a = null;

    @TargetApi(21)
    /* renamed from: com.xiaomi.push.service.XMJobService$a  reason: invalid class name */
    /* loaded from: classes2.dex */
    static class jobJobServiceC6315a extends JobService {

        /* renamed from: a */
        Binder f22865a;

        /* renamed from: a */
        private Handler f22866a;

        /* renamed from: com.xiaomi.push.service.XMJobService$a$a */
        /* loaded from: classes2.dex */
        private static class HandlerC6316a extends Handler {

            /* renamed from: a */
            JobService f22867a;

            HandlerC6316a(JobService jobService) {
                super(jobService.getMainLooper());
                this.f22867a = jobService;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                JobParameters jobParameters = (JobParameters) message.obj;
                AbstractC5876b.m4147a("Job finished " + jobParameters.getJobId());
                this.f22867a.jobFinished(jobParameters, false);
                if (jobParameters.getJobId() == 1) {
                    C6152fh.m2930a(false);
                }
            }
        }

        jobJobServiceC6315a(Service service) {
            this.f22865a = null;
            this.f22865a = (Binder) C6016bj.m3648a((Object) this, "onBind", new Intent());
            C6016bj.m3648a((Object) this, "attachBaseContext", service);
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            AbstractC5876b.m4147a("Job started " + jobParameters.getJobId());
            Intent intent = new Intent(this, XMPushService.class);
            intent.setAction("com.xiaomi.push.timer");
            intent.setPackage(getPackageName());
            startService(intent);
            if (this.f22866a == null) {
                this.f22866a = new HandlerC6316a(this);
            }
            Handler handler = this.f22866a;
            handler.sendMessage(Message.obtain(handler, 1, jobParameters));
            return true;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            AbstractC5876b.m4147a("Job stop " + jobParameters.getJobId());
            return false;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinder = this.f22864a;
        return iBinder != null ? iBinder : new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f22864a = new jobJobServiceC6315a(this).f22865a;
        }
        f22863a = this;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f22863a = null;
    }
}

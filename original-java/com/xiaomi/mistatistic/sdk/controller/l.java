package com.xiaomi.mistatistic.sdk.controller;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.mistatistic.sdk.CustomSettings;
import com.xiaomi.mistatistic.sdk.controller.asyncjobs.b;
import com.xiaomi.mistatistic.sdk.controller.asyncjobs.c;
import com.xiaomi.mistatistic.sdk.data.h;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: RemoteDataUploadManager */
public class l {
    /* access modifiers changed from: private */
    public static AtomicBoolean a = new AtomicBoolean(false);

    /* compiled from: RemoteDataUploadManager */
    public class a implements com.xiaomi.mistatistic.sdk.controller.d.a {
        public a() {
        }

        public void a() {
            l.this.a(false);
        }
    }

    public void a() {
        a(true);
    }

    public void a(boolean z) {
        if (!CustomSettings.isDataUploadingEnabled()) {
            h.a("upload is disabled.", (Throwable) null);
            return;
        }
        h.a("trigger upload job with retry: " + z);
        if (a.compareAndSet(false, true)) {
            h.d("upload job start, set Uploading " + a.get());
            if (c()) {
                f();
                e();
                p.a().d();
                return;
            }
            a.set(false);
            h.d("upload is not allowed by the server. set Uploading " + a.get());
        } else if (z) {
            h.a(String.format("sUploading %s, trigger uploading job with delay %d", new Object[]{Boolean.valueOf(a.get()), Long.valueOf(FileTracerConfig.DEF_FLUSH_INTERVAL)}));
            d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new a(), (long) FileTracerConfig.DEF_FLUSH_INTERVAL);
        }
    }

    public static boolean b() {
        return a.get();
    }

    private void e() {
        d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new b(p.a().f(), new com.xiaomi.mistatistic.sdk.controller.asyncjobs.b.a() {
            public void a(String str, long j, long j2, int i) {
                if (!TextUtils.isEmpty(str)) {
                    l.this.a(str, j, j2, i);
                    return;
                }
                l.a.set(false);
                h.a("RDUM", "packing completed with empty data, set Uploading " + l.a.get());
            }
        }));
    }

    /* access modifiers changed from: private */
    public void a(String str, long j, long j2, int i) {
        final long j3 = j;
        final long j4 = j2;
        d.b().a((com.xiaomi.mistatistic.sdk.controller.d.a) new c(str, new com.xiaomi.mistatistic.sdk.controller.asyncjobs.c.a() {
            public void a(boolean z) {
                if (z) {
                    l.this.a(j3, j4);
                    return;
                }
                l.a.set(false);
                h.a("RDUM", "upload failed, set Uploading " + l.a.get());
            }
        }, i));
    }

    /* access modifiers changed from: private */
    public void a(long j, long j2) {
        final long j3 = j;
        final long j4 = j2;
        d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new com.xiaomi.mistatistic.sdk.controller.d.a() {
            public void a() {
                try {
                    new f().a(j3, j4);
                } catch (Throwable th) {
                    h.a("RDUM", "doDeleting exception: ", th);
                }
                l.a.set(false);
                h.a("RDUM", "delete done, set Uploading " + l.a.get());
            }
        });
    }

    private void f() {
        d.a().a((com.xiaomi.mistatistic.sdk.controller.d.a) new com.xiaomi.mistatistic.sdk.controller.d.a() {
            public void a() {
                l.this.g();
            }
        });
    }

    /* access modifiers changed from: private */
    public void g() {
        try {
            if (CustomSettings.isUploadForegroundPackageEnabled() && VERSION.SDK_INT <= 21) {
                ArrayList arrayList = new ArrayList();
                List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) c.a().getSystemService("activity")).getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                        if (runningAppProcessInfo.importance == 100) {
                            arrayList.add(runningAppProcessInfo.processName);
                        }
                    }
                    LocalEventRecorder.insertEvent(new h("mistat_basic", "foreground_package", TextUtils.join(Constants.ACCEPT_TIME_SEPARATOR_SP, arrayList)));
                }
            }
        } catch (Throwable th) {
            h.a("", th);
        }
    }

    public static void a(long j) {
        long currentTimeMillis = System.currentTimeMillis() + j;
        k.b(c.a(), "next_upload_ts", currentTimeMillis);
        h.a("RDUM", "update next upload time to %d according to server delay %dms", Long.valueOf(currentTimeMillis), Long.valueOf(j));
    }

    public static boolean c() {
        return System.currentTimeMillis() > k.a(c.a(), "next_upload_ts", 0);
    }
}

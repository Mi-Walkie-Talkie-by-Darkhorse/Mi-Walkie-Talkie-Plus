package com.ifengyu.intercom.service.p215b;

import android.os.Environment;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.breakpoint.BreakpointInfo;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.io.File;

/* renamed from: com.ifengyu.intercom.service.b.a */
/* loaded from: classes2.dex */
public class ApkDownloadManager {

    /* renamed from: b */
    private static final String f14677b = "a";

    /* renamed from: c */
    public static volatile ApkDownloadManager f14678c;

    /* renamed from: a */
    public boolean f14679a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ApkDownloadManager.java */
    /* renamed from: com.ifengyu.intercom.service.b.a$a */
    /* loaded from: classes2.dex */
    public class C4331a extends DownloadListener2 {

        /* renamed from: a */
        private long f14680a;

        /* renamed from: b */
        private long f14681b;

        /* renamed from: c */
        private ApkDownloadNotifier f14682c;

        C4331a(ApkDownloadManager apkDownloadManager) {
        }

        /* renamed from: a */
        private int m10683a(long j, long j2) {
            int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i <= 0 || j < j2) {
                if (i <= 0 || j != 0) {
                    return (int) (((((float) j) * 1.0f) / ((float) j2)) * 100.0f);
                }
                return 0;
            }
            return 100;
        }

        @Override // com.liulishuo.okdownload.core.listener.DownloadListener2, com.liulishuo.okdownload.DownloadListener
        public void fetchEnd(@NonNull DownloadTask downloadTask, int i, long j) {
        }

        @Override // com.liulishuo.okdownload.core.listener.DownloadListener2, com.liulishuo.okdownload.DownloadListener
        public void fetchProgress(@NonNull DownloadTask downloadTask, int i, long j) {
            long j2 = this.f14681b + j;
            this.f14681b = j2;
            this.f14682c.m10678e(m10683a(j2, this.f14680a));
        }

        @Override // com.liulishuo.okdownload.core.listener.DownloadListener2, com.liulishuo.okdownload.DownloadListener
        public void fetchStart(@NonNull DownloadTask downloadTask, int i, long j) {
            BreakpointInfo info = downloadTask.getInfo();
            if (info != null) {
                this.f14680a = info.getTotalLength();
            }
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            String str = ApkDownloadManager.f14677b;
            C4971k.m8659a(str, "taskEnd->cause: " + endCause.toString());
            ApkDownloadManager.m10684c().f14679a = false;
            if (endCause == EndCause.COMPLETED && downloadTask.getFile() != null) {
                String absolutePath = downloadTask.getFile().getAbsolutePath();
                if (!new File(absolutePath).exists()) {
                    UIUtils.m8593y(R.string.update_file_check_error);
                    return;
                } else {
                    this.f14682c.m10679d(absolutePath);
                    return;
                }
            }
            UIUtils.m8593y(R.string.update_download_failed);
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            String str = ApkDownloadManager.f14677b;
            C4971k.m8659a(str, "taskStart->task: " + downloadTask.toString());
            ApkDownloadManager.m10684c().f14679a = true;
            ApkDownloadNotifier apkDownloadNotifier = new ApkDownloadNotifier(UIUtils.m8613e(), downloadTask.getId());
            this.f14682c = apkDownloadNotifier;
            apkDownloadNotifier.m10677f();
            UIUtils.m8593y(R.string.update_downloading);
        }
    }

    /* renamed from: c */
    public static ApkDownloadManager m10684c() {
        if (f14678c == null) {
            synchronized (ApkDownloadManager.class) {
                if (f14678c == null) {
                    f14678c = new ApkDownloadManager();
                }
            }
        }
        return f14678c;
    }

    /* renamed from: b */
    public void m10685b(String str, String str2) {
        File externalFilesDir = BaseApp.m8712b().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        if (externalFilesDir == null) {
            return;
        }
        new DownloadTask.Builder(str, externalFilesDir).setAutoCallbackToUIThread(true).setFilename("intercom.apk").setMinIntervalMillisCallbackProcess(XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER).build().enqueue(new C4331a(this));
    }
}

package com.ifengyu.intercom.lite.g;

import android.annotation.SuppressLint;
import android.os.Environment;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.lite.d.e;
import com.ifengyu.intercom.lite.d.f;
import com.ifengyu.intercom.lite.enums.DeviceTypeEnum;
import com.ifengyu.intercom.lite.http.entity.FirmwareInfo;
import com.ifengyu.intercom.lite.http.entity.WrapFirmwareInfo;
import com.ifengyu.library.a.l;
import com.ifengyu.library.base.BaseApp;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.File;

/* compiled from: UpgradeManager.java */
/* loaded from: classes2.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5585a = "s";

    /* renamed from: b  reason: collision with root package name */
    private static s f5586b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UpgradeManager.java */
    /* loaded from: classes2.dex */
    public class a extends DownloadListener2 {
        a(s sVar) {
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            String str = s.f5585a;
            com.ifengyu.blelib.a.a(str, "taskEnd->cause: " + endCause.toString());
            if (endCause != EndCause.COMPLETED || downloadTask.getFile() == null) {
                String str2 = s.f5585a;
                StringBuilder sb = new StringBuilder();
                sb.append("taskEnd->realCause: ");
                sb.append(exc != null ? exc.toString() : "");
                com.ifengyu.blelib.a.b(str2, sb.toString());
                return;
            }
            r.a(BaseApp.b()).a(downloadTask.getFile().getAbsolutePath());
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            String str = s.f5585a;
            com.ifengyu.blelib.a.a(str, "taskStart->task: " + downloadTask.toString());
        }
    }

    public static s b() {
        if (f5586b == null) {
            f5586b = new s();
        }
        return f5586b;
    }

    @SuppressLint({"CheckResult"})
    public void a(int i) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        e.a().a(DeviceTypeEnum.LITE.a(), String.valueOf(i), d0.N(), valueOf, a0.b(d0.O() + valueOf)).compose(f.a()).subscribeOn(Schedulers.io()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.lite.g.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                s.this.a((WrapFirmwareInfo) obj);
            }
        }, b.f5567a);
    }

    public /* synthetic */ void a(WrapFirmwareInfo wrapFirmwareInfo) throws Exception {
        String str = f5585a;
        com.ifengyu.blelib.a.a(str, "checkLiteVersion->wrapFirmwareInfo: " + wrapFirmwareInfo.toString());
        FirmwareInfo lite = wrapFirmwareInfo.getLite();
        if (lite == null) {
            com.ifengyu.blelib.a.b(f5585a, "checkLiteVersion->lite is null");
            return;
        }
        r a2 = r.a(BaseApp.b());
        a2.a(lite);
        String a3 = a0.a(a2.b());
        if (!l.b(a3) && a3.equals(lite.getMD5())) {
            com.ifengyu.blelib.a.a(f5585a, "checkLiteVersion->lite latest firmware already exists, no need to download repeatedly");
        } else if (l.b(lite.getSource())) {
            com.ifengyu.blelib.a.b(f5585a, "checkLiteVersion->lite source is null");
        } else {
            a(lite.getSource());
        }
    }

    private void a(String str) {
        File externalFilesDir = BaseApp.b().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        if (externalFilesDir != null) {
            new DownloadTask.Builder(str, externalFilesDir).setAutoCallbackToUIThread(true).build().enqueue(new a(this));
        }
    }
}

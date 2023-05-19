package com.ifengyu.intercom.device.lite.p160d;

import android.annotation.SuppressLint;
import android.os.Environment;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.device.lite.event.LiteEvent;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.MD5Util;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.C4975r;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import io.reactivex.functions.Consumer;
import java.io.File;

/* renamed from: com.ifengyu.intercom.device.lite.d.s */
/* loaded from: classes2.dex */
public class LiteUpgradeManager {

    /* renamed from: a */
    private static final String f12198a = "s";

    /* renamed from: b */
    private static LiteUpgradeManager f12199b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiteUpgradeManager.java */
    /* renamed from: com.ifengyu.intercom.device.lite.d.s$a */
    /* loaded from: classes2.dex */
    public class C3202a extends DownloadListener2 {
        C3202a(LiteUpgradeManager liteUpgradeManager) {
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            String str = LiteUpgradeManager.f12198a;
            C4971k.m8659a(str, "taskEnd->cause: " + endCause.toString());
            if (endCause != EndCause.COMPLETED || downloadTask.getFile() == null) {
                String str2 = LiteUpgradeManager.f12198a;
                StringBuilder sb = new StringBuilder();
                sb.append("taskEnd->realCause: ");
                sb.append(exc != null ? exc.toString() : "");
                C4971k.m8657c(str2, sb.toString());
                return;
            }
            LiteFirmwarePreferenceManager.m14150d(BaseApp.m8712b()).m14148f(downloadTask.getFile().getAbsolutePath());
            RxBus.m11806d().m11805e(LiteEvent.HAVE_NEW_UPDATE);
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            String str = LiteUpgradeManager.f12198a;
            C4971k.m8659a(str, "taskStart->task: " + downloadTask.toString());
        }
    }

    /* renamed from: c */
    private void m14145c(String str) {
        File externalFilesDir = BaseApp.m8712b().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        if (externalFilesDir == null) {
            return;
        }
        new DownloadTask.Builder(str, externalFilesDir).setAutoCallbackToUIThread(true).build().enqueue(new C3202a(this));
    }

    /* renamed from: d */
    public static LiteUpgradeManager m14144d() {
        if (f12199b == null) {
            f12199b = new LiteUpgradeManager();
        }
        return f12199b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public /* synthetic */ void m14142f(VersionInfo versionInfo) throws Exception {
        String str = f12198a;
        C4971k.m8659a(str, "check lite Version Info: " + versionInfo.toString());
        LiteFirmwarePreferenceManager m14150d = LiteFirmwarePreferenceManager.m14150d(BaseApp.m8712b());
        m14150d.m14149e(versionInfo);
        String m11041a = MD5Util.m11041a(m14150d.m14152b());
        if (!C4975r.m8620b(m11041a) && m11041a.equals(versionInfo.getMd5())) {
            C4971k.m8659a(str, "checkLiteVersion->lite latest firmware already exists, no need to download repeatedly");
            RxBus.m11806d().m11805e(LiteEvent.HAVE_NEW_UPDATE);
        } else if (C4975r.m8620b(versionInfo.getSource())) {
            C4971k.m8657c(str, "checkLiteVersion->lite source is null");
        } else if (versionInfo.isHasNewVersion()) {
            m14145c(versionInfo.getSource());
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: b */
    public void m14146b(int i, int i2) {
        AppServiceClient.m11355a().m11387T("lite", i, i2, "zh_cn").compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.lite.d.a
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteUpgradeManager.this.m14142f((VersionInfo) obj);
            }
        }, C3200p.f12194a);
    }
}

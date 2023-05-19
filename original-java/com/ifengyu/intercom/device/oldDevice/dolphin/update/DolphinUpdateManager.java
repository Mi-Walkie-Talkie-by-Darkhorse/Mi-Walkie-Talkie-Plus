package com.ifengyu.intercom.device.oldDevice.dolphin.update;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.httpold.download.HttpDownloadFile;
import com.ifengyu.intercom.httpold.download.OnDownloadListener;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.UIUtils;
import com.tencent.open.SocialConstants;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.k */
/* loaded from: classes2.dex */
public class DolphinUpdateManager {

    /* renamed from: g */
    private static volatile DolphinUpdateManager f13032g;

    /* renamed from: d */
    private String f13036d;

    /* renamed from: a */
    private final Set<OnDownloadListener> f13033a = new HashSet();

    /* renamed from: b */
    private final HashMap<String, String> f13034b = new HashMap<>();

    /* renamed from: c */
    private int f13035c = -1;

    /* renamed from: e */
    private OnCheckDolphinUpdateCallback f13037e = null;

    /* renamed from: f */
    private OnCheckDolphinUpdateCallback f13038f = null;

    /* compiled from: DolphinUpdateManager.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.update.k$a */
    /* loaded from: classes2.dex */
    private class HandlerC3608a extends Handler {
        public HandlerC3608a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 7) {
                if (i != 8) {
                    return;
                }
                for (OnDownloadListener onDownloadListener : DolphinUpdateManager.this.f13033a) {
                    if (onDownloadListener != null) {
                        onDownloadListener.mo12391j();
                    }
                }
                return;
            }
            for (OnDownloadListener onDownloadListener2 : DolphinUpdateManager.this.f13033a) {
                if (onDownloadListener2 != null) {
                    onDownloadListener2.mo12392b(DolphinUpdateManager.this.f13036d + "/mcu_bin.bin", (String) DolphinUpdateManager.this.f13034b.get("md5"));
                }
            }
        }
    }

    private DolphinUpdateManager() {
    }

    /* renamed from: f */
    public static DolphinUpdateManager m13109f() {
        if (f13032g == null) {
            synchronized (DolphinUpdateManager.class) {
                if (f13032g == null) {
                    f13032g = new DolphinUpdateManager();
                    MiBus.getInstance().m6411j(f13032g);
                }
            }
        }
        return f13032g;
    }

    /* renamed from: h */
    private void m13107h() {
        C4161y.m11052c("UpdateManager", "onFailure");
        OnCheckDolphinUpdateCallback onCheckDolphinUpdateCallback = this.f13038f;
        if (onCheckDolphinUpdateCallback != null) {
            onCheckDolphinUpdateCallback.mo13063i(true);
        }
    }

    /* renamed from: i */
    private void m13106i(boolean z) {
        C4161y.m11054a("UpdateManager", "onSuccess");
        if (this.f13035c == -1) {
            C4161y.m11054a("UpdateManager", "paramUpdateEvent == null");
        } else if (!Boolean.parseBoolean(this.f13034b.get("hasNewVersion"))) {
            OnCheckDolphinUpdateCallback onCheckDolphinUpdateCallback = this.f13037e;
            if (onCheckDolphinUpdateCallback != null) {
                onCheckDolphinUpdateCallback.mo13063i(true);
            }
            OnCheckDolphinUpdateCallback onCheckDolphinUpdateCallback2 = this.f13038f;
            if (onCheckDolphinUpdateCallback2 != null) {
                onCheckDolphinUpdateCallback2.mo13063i(true);
            }
        } else if (z) {
            OnCheckDolphinUpdateCallback onCheckDolphinUpdateCallback3 = this.f13037e;
            if (onCheckDolphinUpdateCallback3 != null) {
                onCheckDolphinUpdateCallback3.mo13063i(false);
            }
        } else {
            OnCheckDolphinUpdateCallback onCheckDolphinUpdateCallback4 = this.f13038f;
            if (onCheckDolphinUpdateCallback4 != null) {
                onCheckDolphinUpdateCallback4.mo13063i(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ HashMap m13104k(VersionInfo versionInfo) throws Exception {
        this.f13034b.put("hasNewVersion", String.valueOf(versionInfo.isHasNewVersion()));
        this.f13034b.put("versionCode", String.valueOf(versionInfo.getVersionCode()));
        this.f13034b.put("versionName", versionInfo.getVersionName());
        this.f13034b.put(XiaomiOAuthConstants.EXTRA_INFO, versionInfo.getInfo());
        this.f13034b.put(SocialConstants.PARAM_SOURCE, versionInfo.getSource());
        this.f13034b.put("md5", versionInfo.getMd5());
        this.f13034b.put("lang", versionInfo.getLang());
        this.f13034b.put("mode", String.valueOf(versionInfo.getMode()));
        return this.f13034b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ void m13102m(boolean z, HashMap hashMap) throws Exception {
        C4161y.m11054a("UpdateManager", "check Dolphin Version success");
        m13106i(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m13100o(Throwable th) throws Exception {
        th.printStackTrace();
        m13107h();
    }

    public void addDownloadListener(OnDownloadListener onDownloadListener) {
        if (onDownloadListener != null) {
            this.f13033a.add(onDownloadListener);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: d */
    public void m13111d(final boolean z, int i) {
        this.f13035c = i;
        this.f13034b.clear();
        AppServiceClient.m11355a().m11387T("mcu", i, MiTalkClientUtil.m11207i().getInt("versionHW", -1), MethodsUtils.m11297c() ? "en_us" : "zh_cn").compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.device.oldDevice.dolphin.update.a
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return DolphinUpdateManager.this.m13104k((VersionInfo) obj);
            }
        }).subscribe(new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.dolphin.update.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DolphinUpdateManager.this.m13102m(z, (HashMap) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.device.oldDevice.dolphin.update.c
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DolphinUpdateManager.this.m13100o((Throwable) obj);
            }
        });
    }

    /* renamed from: e */
    public void m13110e(int i, int i2, String str) {
        this.f13036d = UIUtils.m8613e().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
        if (i != -1) {
            new HttpDownloadFile(this.f13034b.get(SocialConstants.PARAM_SOURCE)).m12389b(this.f13036d, "mcu_bin.bin", new HandlerC3608a());
        }
    }

    /* renamed from: g */
    public HashMap<String, String> m13108g() {
        return this.f13034b;
    }

    /* renamed from: p */
    public void m13099p() {
        this.f13037e = null;
    }

    /* renamed from: q */
    public void m13098q() {
        this.f13038f = null;
    }

    /* renamed from: r */
    public void m13097r(OnCheckDolphinUpdateCallback onCheckDolphinUpdateCallback) {
        this.f13037e = onCheckDolphinUpdateCallback;
    }

    public void removeDownloadListener(OnDownloadListener onDownloadListener) {
        if (onDownloadListener != null) {
            this.f13033a.remove(onDownloadListener);
        }
    }

    /* renamed from: s */
    public void m13096s(OnCheckDolphinUpdateCallback onCheckDolphinUpdateCallback) {
        this.f13038f = onCheckDolphinUpdateCallback;
    }
}

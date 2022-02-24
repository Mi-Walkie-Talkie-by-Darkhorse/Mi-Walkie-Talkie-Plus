package com.ifengyu.intercom.update.dolphin;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import androidx.core.app.NotificationCompat;
import androidx.core.content.FileProvider;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.n;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.network.OnDownloadListener;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.widget.dialog.a0;
import com.tencent.open.SocialConstants;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public class UpdateManager implements j {
    private static volatile UpdateManager l;
    private String e;
    private String f;
    private boolean i;

    /* renamed from: a  reason: collision with root package name */
    private Set<OnDownloadListener> f7111a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, String> f7112b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private HashMap<String, String> f7113c = new HashMap<>();
    private int d = -1;
    private com.ifengyu.intercom.network.a g = null;
    private com.ifengyu.intercom.network.b h = null;
    private com.ifengyu.intercom.network.d.a j = new a();
    private com.ifengyu.intercom.network.d.a k = new b();

    /* loaded from: classes2.dex */
    public enum CHECK_CONDITION {
        APK,
        MCU
    }

    /* loaded from: classes2.dex */
    class a implements com.ifengyu.intercom.network.d.a {
        a() {
        }

        @Override // com.ifengyu.intercom.network.d.a
        public boolean a(String str) {
            return com.ifengyu.intercom.network.c.a(UpdateManager.this.f7112b, str);
        }
    }

    /* loaded from: classes2.dex */
    class b implements com.ifengyu.intercom.network.d.a {
        b() {
        }

        @Override // com.ifengyu.intercom.network.d.a
        public boolean a(String str) {
            return com.ifengyu.intercom.network.c.b(UpdateManager.this.f7113c, str);
        }
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7119a;

        static {
            int[] iArr = new int[CHECK_CONDITION.values().length];
            f7119a = iArr;
            try {
                iArr[CHECK_CONDITION.APK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7119a[CHECK_CONDITION.MCU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    private class d extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private com.ifengyu.intercom.network.d.b f7120a;

        /* renamed from: b  reason: collision with root package name */
        private NotificationManager f7121b;

        /* renamed from: c  reason: collision with root package name */
        private Notification f7122c;
        private int d = 0;
        private Activity e;
        private CHECK_CONDITION f;
        private NotificationCompat.b g;

        public d(Activity activity, com.ifengyu.intercom.network.d.b bVar, CHECK_CONDITION check_condition) {
            this.e = activity;
            this.f = check_condition;
            this.f7120a = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int a2;
            int i = message.what;
            if (i != 5) {
                if (i != 6) {
                    if (i == 7) {
                        if (this.f == CHECK_CONDITION.APK) {
                            this.f7121b.cancel(0);
                            this.g.a(100, 100, false);
                            this.g.b(k0.c(R.string.mitalki_download_complete));
                            Notification a3 = this.g.a();
                            this.f7122c = a3;
                            a3.flags = 16;
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.addFlags(268435456);
                            String str = k0.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath() + "/mitalki.apk";
                            if (Build.VERSION.SDK_INT >= 24) {
                                Uri uriForFile = FileProvider.getUriForFile(this.e, this.e.getApplicationContext().getPackageName() + ".provider", new File(str));
                                intent.addFlags(1);
                                intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
                            } else {
                                intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
                            }
                            this.f7122c.contentIntent = PendingIntent.getActivity(MiTalkiApp.b(), 0, intent, 0);
                            this.f7121b.notify(0, this.f7122c);
                            UpdateManager.this.i = false;
                        }
                        int i2 = c.f7119a[this.f.ordinal()];
                        if (i2 == 1) {
                            for (OnDownloadListener onDownloadListener : UpdateManager.this.f7111a) {
                                if (onDownloadListener != null) {
                                    onDownloadListener.a(UpdateManager.this.f + File.separator + "mitalki.apk");
                                }
                            }
                            UpdateManager.this.a(this.e, "mitalki.apk");
                        } else if (i2 == 2) {
                            for (OnDownloadListener onDownloadListener2 : UpdateManager.this.f7111a) {
                                if (onDownloadListener2 != null) {
                                    onDownloadListener2.a(UpdateManager.this.e + "/mcu_bin.bin", (String) UpdateManager.this.f7113c.get("md5"));
                                }
                            }
                        }
                    } else if (i == 8) {
                        CHECK_CONDITION check_condition = this.f;
                        if (check_condition == CHECK_CONDITION.APK) {
                            this.f7121b.cancel(0);
                            this.g.a(100, 100, false);
                            this.g.b(k0.c(R.string.mitalki_download_failed));
                            Notification a4 = this.g.a();
                            this.f7122c = a4;
                            a4.flags = 16;
                            this.f7121b.notify(0, a4);
                            UpdateManager.this.i = false;
                        } else if (check_condition == CHECK_CONDITION.MCU) {
                            for (OnDownloadListener onDownloadListener3 : UpdateManager.this.f7111a) {
                                if (onDownloadListener3 != null) {
                                    onDownloadListener3.h();
                                }
                            }
                        }
                    }
                } else if (this.f == CHECK_CONDITION.APK && (a2 = n.a(this.f7120a.b(), this.f7120a.a())) != this.d) {
                    this.g.a(this.f7120a.a(), this.f7120a.b(), false);
                    this.g.b(k0.a((int) R.string.mitalki_downloading, Integer.valueOf(a2)));
                    Notification a5 = this.g.a();
                    this.f7122c = a5;
                    this.f7121b.notify(0, a5);
                    this.d = a2;
                }
            } else if (this.f == CHECK_CONDITION.APK) {
                this.f7121b = (NotificationManager) this.e.getSystemService("notification");
                NotificationCompat.b bVar = new NotificationCompat.b(MiTalkiApp.b());
                this.g = bVar;
                bVar.a(R.mipmap.ic_launcher);
                this.g.a(BitmapFactory.decodeResource(MiTalkiApp.b().getResources(), R.mipmap.ic_launcher));
                this.g.a(false);
                this.g.b(true);
                this.g.c(false);
                this.g.b(MiTalkiApp.b().getResources().getString(R.string.app_name));
                this.g.a(100, 0, false);
                this.f7122c = this.g.a();
                this.f7122c.contentIntent = PendingIntent.getActivity(MiTalkiApp.b(), 0, new Intent(MiTalkiApp.b(), MainActivity.class), 0);
                Notification notification = this.f7122c;
                notification.flags = 32;
                this.f7121b.notify(0, notification);
                UpdateManager.this.i = true;
            }
        }
    }

    /* loaded from: classes2.dex */
    public class e extends com.ifengyu.intercom.network.d.d {

        /* renamed from: a  reason: collision with root package name */
        private Activity f7123a;

        /* renamed from: b  reason: collision with root package name */
        private CHECK_CONDITION f7124b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f7125c;

        public e(UpdateManager updateManager, Activity activity, CHECK_CONDITION check_condition) {
            this(activity, check_condition, true);
        }

        @Override // com.ifengyu.intercom.network.d.d
        public void b() {
            z.b("UpdateManager", "onFailure");
            if (this.f7124b == CHECK_CONDITION.MCU && UpdateManager.this.h != null) {
                UpdateManager.this.h.a(this.f7124b, true);
            }
        }

        @Override // com.ifengyu.intercom.network.d.d
        public void c() {
            z.a("UpdateManager", "onSuccess");
            if (this.f7124b == CHECK_CONDITION.MCU && UpdateManager.this.d == -1) {
                z.a("UpdateManager", "paramUpdateEvent == null");
                return;
            }
            int i = c.f7119a[this.f7124b.ordinal()];
            if (i != 1) {
                if (i != 2 || UpdateManager.this.f7113c.get("versionCode") == null) {
                    return;
                }
                if (UpdateManager.this.d < 1 || UpdateManager.this.d >= Integer.parseInt((String) UpdateManager.this.f7113c.get("versionCode"))) {
                    if (UpdateManager.this.g != null) {
                        UpdateManager.this.g.a(this.f7124b, true);
                    }
                    if (UpdateManager.this.h != null) {
                        UpdateManager.this.h.a(this.f7124b, true);
                    }
                } else if (this.f7125c) {
                    if (UpdateManager.this.g != null) {
                        UpdateManager.this.g.a(this.f7124b, false);
                    }
                } else if (UpdateManager.this.h != null) {
                    UpdateManager.this.h.a(this.f7124b, false);
                }
            } else if (UpdateManager.this.f7112b.get("versionCode") != null) {
                if (UpdateManager.e() >= Integer.parseInt((String) UpdateManager.this.f7112b.get("versionCode"))) {
                    for (OnDownloadListener onDownloadListener : UpdateManager.this.f7111a) {
                        if (onDownloadListener != null) {
                            onDownloadListener.b(this.f7124b, true);
                        }
                    }
                    return;
                }
                for (OnDownloadListener onDownloadListener2 : UpdateManager.this.f7111a) {
                    if (onDownloadListener2 != null) {
                        onDownloadListener2.b(this.f7124b, false);
                    }
                }
                if (this.f7125c) {
                    new a0(this.f7123a, UpdateManager.d(), UpdateManager.this.f7112b, this.f7124b, UpdateManager.this.i).b();
                }
            }
        }

        public e(Activity activity, CHECK_CONDITION check_condition, boolean z) {
            this.f7123a = activity;
            this.f7124b = check_condition;
            this.f7125c = z;
        }
    }

    private UpdateManager() {
        new HashMap();
    }

    public void addDownloadListener(OnDownloadListener onDownloadListener) {
        if (onDownloadListener != null) {
            this.f7111a.add(onDownloadListener);
        }
    }

    public void removeDownloadListener(OnDownloadListener onDownloadListener) {
        if (onDownloadListener != null) {
            this.f7111a.remove(onDownloadListener);
        }
    }

    public static UpdateManager d() {
        if (l == null) {
            synchronized (UpdateManager.class) {
                if (l == null) {
                    l = new UpdateManager();
                    com.ifengyu.intercom.eventbus.a.a().b(l);
                }
            }
        }
        return l;
    }

    public static int e() {
        try {
            return MiTalkiApp.b().getPackageManager().getPackageInfo(MiTalkiApp.b().getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public void b() {
        this.g = null;
    }

    public void c() {
        this.h = null;
    }

    private String a(String str) {
        StringBuilder sb = new StringBuilder("https://api.ifengyu.com/v2/version");
        String valueOf = String.valueOf(System.currentTimeMillis());
        sb.append("/?action=version&type=");
        sb.append(str);
        sb.append("&userid=");
        sb.append(d0.N());
        sb.append("&time=");
        sb.append(valueOf);
        sb.append("&sign=");
        sb.append(com.ifengyu.intercom.i.a0.b(d0.O() + valueOf));
        sb.append("&lang=");
        sb.append(c0.a() ? "en_us" : "zh_cn");
        if ("mcu".equals(str)) {
            try {
                int l2 = d0.l();
                StringBuilder sb2 = new StringBuilder();
                if (l2 > 0) {
                    sb2.append((l2 / 16777216) % 256);
                    sb2.append(".");
                    sb2.append((l2 / 65536) % 256);
                    sb2.append(".");
                    sb2.append(l2 % 65536);
                }
                sb.append("&hwVersion=");
                sb.append(d0.j().getInt("versionHW", -1));
                sb.append("&appVersion=");
                sb.append(MiTalkiApp.b().getPackageManager().getPackageInfo(k0.d(), 0).versionName);
                sb.append("&mcuVersion=");
                sb.append(sb2.toString());
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        z.c("UpdateManager", "post：" + sb.toString());
        return sb.toString();
    }

    public void a(e eVar) {
        this.f7112b.clear();
        new com.ifengyu.intercom.network.d.c(a("android"), null).a(this.j, eVar);
    }

    public void a(e eVar, int i) {
        this.d = i;
        this.f7113c.clear();
        new com.ifengyu.intercom.network.d.c(a("mcu"), null).a(this.k, eVar);
    }

    @Override // com.ifengyu.intercom.update.dolphin.j
    public void a(Activity activity, int i, int i2, CHECK_CONDITION check_condition) {
        if (check_condition == CHECK_CONDITION.APK) {
            if (Environment.getExternalStorageState().equals("mounted")) {
                this.f = k0.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
                com.ifengyu.intercom.network.d.b bVar = new com.ifengyu.intercom.network.d.b(this.f7112b.get(SocialConstants.PARAM_SOURCE));
                bVar.a(this.f, "mitalki.apk", new d(activity, bVar, CHECK_CONDITION.APK));
            }
        } else if (check_condition == CHECK_CONDITION.MCU && i != -1) {
            com.ifengyu.intercom.network.d.b bVar2 = new com.ifengyu.intercom.network.d.b(this.f7113c.get(SocialConstants.PARAM_SOURCE));
            String absolutePath = k0.a().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
            this.e = absolutePath;
            bVar2.a(absolutePath, "mcu_bin.bin", new d(activity, bVar2, CHECK_CONDITION.MCU));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity, String str) {
        File file = new File(this.f, str);
        if (!file.exists()) {
            c0.a((CharSequence) k0.c(R.string.toast_download_errored), false);
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        if (Build.VERSION.SDK_INT >= 24) {
            Uri uriForFile = FileProvider.getUriForFile(activity, activity.getApplicationContext().getPackageName() + ".provider", file);
            intent.addFlags(1);
            intent.addFlags(2);
            intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
        } else {
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        }
        activity.startActivity(intent);
    }

    public void a(com.ifengyu.intercom.network.a aVar) {
        if (aVar != null) {
            this.g = aVar;
        }
    }

    public void a(com.ifengyu.intercom.network.b bVar) {
        if (bVar != null) {
            this.h = bVar;
        }
    }

    public HashMap<String, String> a() {
        return this.f7113c;
    }
}

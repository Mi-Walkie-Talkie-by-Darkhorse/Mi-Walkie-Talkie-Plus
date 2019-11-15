package com.ifengyu.intercom.update.dolphin;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.support.v4.content.FileProvider;
import android.support.v7.app.NotificationCompat.Builder;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.i;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.t;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.network.OnDownloadListener;
import com.ifengyu.intercom.network.a.d;
import com.ifengyu.intercom.network.c;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.widget.dialog.ac;
import com.tencent.open.SocialConstants;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

public class UpdateManager implements j {
    private static volatile UpdateManager b;
    /* access modifiers changed from: private */
    public Set<OnDownloadListener> a = new HashSet();
    /* access modifiers changed from: private */
    public HashMap<String, String> c = new HashMap<>();
    /* access modifiers changed from: private */
    public HashMap<String, String> d = new HashMap<>();
    private HashMap<String, String> e = new HashMap<>();
    /* access modifiers changed from: private */
    public int f = -1;
    /* access modifiers changed from: private */
    public String g;
    /* access modifiers changed from: private */
    public String h;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.network.a i = null;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.network.b j = null;
    /* access modifiers changed from: private */
    public boolean k;
    private com.ifengyu.intercom.network.a.a l = new com.ifengyu.intercom.network.a.a() {
        public boolean a(String str) {
            return c.b(UpdateManager.this.c, str);
        }
    };
    private com.ifengyu.intercom.network.a.a m = new com.ifengyu.intercom.network.a.a() {
        public boolean a(String str) {
            return c.a(UpdateManager.this.d, str);
        }
    };

    public enum CHECK_CONDITION {
        APK,
        MCU
    }

    private class a extends Handler {
        private com.ifengyu.intercom.network.a.b b;
        private NotificationManager c;
        private Notification d;
        private int e = 0;
        private Activity f;
        private CHECK_CONDITION g;
        private Builder h;

        public a(Activity activity, com.ifengyu.intercom.network.a.b bVar, CHECK_CONDITION check_condition) {
            this.f = activity;
            this.g = check_condition;
            this.b = bVar;
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 5:
                    if (this.g == CHECK_CONDITION.APK) {
                        this.c = (NotificationManager) this.f.getSystemService("notification");
                        this.h = new Builder(MiTalkiApp.a());
                        this.h.setSmallIcon(R.mipmap.icon);
                        this.h.setLargeIcon(BitmapFactory.decodeResource(MiTalkiApp.a().getResources(), R.mipmap.icon));
                        this.h.setAutoCancel(false);
                        this.h.setOngoing(true);
                        this.h.setShowWhen(false);
                        this.h.setContentTitle(MiTalkiApp.a().getResources().getString(R.string.app_name));
                        this.h.setProgress(100, 0, false);
                        this.d = this.h.build();
                        Intent intent = new Intent(MiTalkiApp.a(), MainActivity.class);
                        this.d.contentIntent = PendingIntent.getActivity(MiTalkiApp.a(), 0, intent, 0);
                        this.d.flags = 32;
                        this.c.notify(0, this.d);
                        UpdateManager.this.k = true;
                        return;
                    }
                    return;
                case 6:
                    if (this.g == CHECK_CONDITION.APK) {
                        int a2 = i.a((float) this.b.a(), (float) this.b.b());
                        if (a2 != this.e) {
                            this.h.setProgress(this.b.b(), this.b.a(), false);
                            this.h.setContentTitle(ad.a((int) R.string.mitalki_downloading, Integer.valueOf(a2)));
                            this.d = this.h.build();
                            this.c.notify(0, this.d);
                            this.e = a2;
                            return;
                        }
                        return;
                    }
                    return;
                case 7:
                    if (this.g == CHECK_CONDITION.APK) {
                        this.c.cancel(0);
                        this.h.setProgress(100, 100, false);
                        this.h.setContentTitle(ad.a((int) R.string.mitalki_download_complete));
                        this.d = this.h.build();
                        this.d.flags = 16;
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.addFlags(268435456);
                        String str = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki" + "/" + "mitalki.apk";
                        if (VERSION.SDK_INT >= 24) {
                            Uri uriForFile = FileProvider.getUriForFile(this.f, this.f.getApplicationContext().getPackageName() + ".provider", new File(str));
                            intent2.addFlags(1);
                            intent2.setDataAndType(uriForFile, "application/vnd.android.package-archive");
                        } else {
                            intent2.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
                        }
                        this.d.contentIntent = PendingIntent.getActivity(MiTalkiApp.a(), 0, intent2, 0);
                        this.c.notify(0, this.d);
                        UpdateManager.this.k = false;
                    }
                    switch (this.g) {
                        case APK:
                            for (OnDownloadListener onDownloadListener : UpdateManager.this.a) {
                                if (onDownloadListener != null) {
                                    onDownloadListener.a(UpdateManager.this.h + File.separator + "mitalki.apk");
                                }
                            }
                            UpdateManager.this.a(this.f, "mitalki.apk");
                            return;
                        case MCU:
                            for (OnDownloadListener onDownloadListener2 : UpdateManager.this.a) {
                                if (onDownloadListener2 != null) {
                                    onDownloadListener2.a(UpdateManager.this.g + "/" + "mcu_bin.bin", (String) UpdateManager.this.d.get("md5"));
                                }
                            }
                            return;
                        default:
                            return;
                    }
                case 8:
                    if (this.g == CHECK_CONDITION.APK) {
                        this.c.cancel(0);
                        this.h.setProgress(100, 100, false);
                        this.h.setContentTitle(ad.a((int) R.string.mitalki_download_failed));
                        this.d = this.h.build();
                        this.d.flags = 16;
                        this.c.notify(0, this.d);
                        UpdateManager.this.k = false;
                        return;
                    } else if (this.g == CHECK_CONDITION.MCU) {
                        for (OnDownloadListener onDownloadListener3 : UpdateManager.this.a) {
                            if (onDownloadListener3 != null) {
                                onDownloadListener3.a();
                            }
                        }
                        return;
                    } else {
                        return;
                    }
                default:
                    return;
            }
        }
    }

    public class b extends d {
        private Activity b;
        private CHECK_CONDITION c;
        private boolean d;

        public b(UpdateManager updateManager, Activity activity, CHECK_CONDITION check_condition) {
            this(activity, check_condition, true);
        }

        public b(Activity activity, CHECK_CONDITION check_condition, boolean z) {
            this.b = activity;
            this.c = check_condition;
            this.d = z;
        }

        public void b() {
            s.b("UpdateManager", "onSuccess");
            if (this.c == CHECK_CONDITION.MCU && UpdateManager.this.f == -1) {
                s.b("UpdateManager", "paramUpdateEvent == null");
                return;
            }
            switch (this.c) {
                case APK:
                    if (UpdateManager.this.c.get("versionCode") == null) {
                        return;
                    }
                    if (UpdateManager.b() >= Integer.parseInt((String) UpdateManager.this.c.get("versionCode"))) {
                        for (OnDownloadListener onDownloadListener : UpdateManager.this.a) {
                            if (onDownloadListener != null) {
                                onDownloadListener.a(this.c, true);
                            }
                        }
                        return;
                    }
                    for (OnDownloadListener onDownloadListener2 : UpdateManager.this.a) {
                        if (onDownloadListener2 != null) {
                            onDownloadListener2.a(this.c, false);
                        }
                    }
                    if (this.d) {
                        new ac(this.b, UpdateManager.a(), UpdateManager.this.c, this.c, UpdateManager.this.k).b();
                        return;
                    }
                    return;
                case MCU:
                    if (UpdateManager.this.d.get("versionCode") == null) {
                        return;
                    }
                    if (UpdateManager.this.f < 1 || UpdateManager.this.f >= Integer.parseInt((String) UpdateManager.this.d.get("versionCode"))) {
                        if (UpdateManager.this.i != null) {
                            UpdateManager.this.i.a(this.c, true);
                        }
                        if (UpdateManager.this.j != null) {
                            UpdateManager.this.j.a(this.c, true);
                            return;
                        }
                        return;
                    } else if (this.d) {
                        if (UpdateManager.this.i != null) {
                            UpdateManager.this.i.a(this.c, false);
                            return;
                        }
                        return;
                    } else if (UpdateManager.this.j != null) {
                        UpdateManager.this.j.a(this.c, false);
                        return;
                    } else {
                        return;
                    }
                default:
                    return;
            }
        }

        public void c() {
            s.e("UpdateManager", "onFailure");
            if (this.c == CHECK_CONDITION.MCU && UpdateManager.this.j != null) {
                UpdateManager.this.j.a(this.c, true);
            }
        }
    }

    private UpdateManager() {
    }

    public static UpdateManager a() {
        if (b == null) {
            synchronized (UpdateManager.class) {
                if (b == null) {
                    b = new UpdateManager();
                    com.ifengyu.intercom.eventbus.a.a().a((Object) b);
                }
            }
        }
        return b;
    }

    public static int b() {
        boolean z = false;
        try {
            return MiTalkiApp.a().getPackageManager().getPackageInfo(MiTalkiApp.a().getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e2) {
            ThrowableExtension.printStackTrace(e2);
            return z;
        }
    }

    private String a(String str) {
        StringBuilder sb = new StringBuilder(com.ifengyu.intercom.network.d.c + "/v2/version");
        String valueOf = String.valueOf(System.currentTimeMillis());
        sb.append("/?action=version&type=").append(str).append("&userid=").append(w.K()).append("&time=").append(valueOf).append("&sign=").append(t.a(w.L() + valueOf)).append("&lang=").append(v.a() ? "en_us" : "zh_cn");
        if ("mcu".equals(str)) {
            try {
                int l2 = w.l();
                StringBuilder sb2 = new StringBuilder();
                if (l2 > 0) {
                    sb2.append((l2 / 16777216) % 256);
                    sb2.append(".");
                    sb2.append((l2 / 65536) % 256);
                    sb2.append(".");
                    sb2.append(l2 % 65536);
                }
                sb.append("&hwVersion=").append(w.c().getInt("versionHW", -1)).append("&appVersion=").append(MiTalkiApp.a().getPackageManager().getPackageInfo(ad.c(), 0).versionName).append("&mcuVersion=").append(sb2.toString());
            } catch (NameNotFoundException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
        s.c("UpdateManager", "post：" + sb.toString());
        return sb.toString();
    }

    public void a(b bVar) {
        this.c.clear();
        new com.ifengyu.intercom.network.a.c(a("android"), null).a(this.l, bVar);
    }

    public void a(b bVar, int i2) {
        this.f = i2;
        this.d.clear();
        new com.ifengyu.intercom.network.a.c(a("mcu"), null).a(this.m, bVar);
    }

    public void a(Activity activity, int i2, int i3, CHECK_CONDITION check_condition) {
        this.g = ad.a().getFilesDir().getAbsolutePath();
        if (check_condition == CHECK_CONDITION.APK) {
            if (Environment.getExternalStorageState().equals("mounted")) {
                this.h = Environment.getExternalStorageDirectory() + File.separator + "mitalki";
                com.ifengyu.intercom.network.a.b bVar = new com.ifengyu.intercom.network.a.b((String) this.c.get(SocialConstants.PARAM_SOURCE));
                bVar.a(this.h, "mitalki.apk", new a(activity, bVar, CHECK_CONDITION.APK));
            }
        } else if (check_condition == CHECK_CONDITION.MCU && i2 != -1) {
            com.ifengyu.intercom.network.a.b bVar2 = new com.ifengyu.intercom.network.a.b((String) this.d.get(SocialConstants.PARAM_SOURCE));
            bVar2.a(this.g, "mcu_bin.bin", new a(activity, bVar2, CHECK_CONDITION.MCU));
        }
    }

    /* access modifiers changed from: private */
    public void a(Activity activity, String str) {
        File file = new File(this.h, str);
        if (!file.exists()) {
            v.a((CharSequence) ad.a((int) R.string.toast_download_errored), false);
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        if (VERSION.SDK_INT >= 24) {
            Uri uriForFile = FileProvider.getUriForFile(activity, activity.getApplicationContext().getPackageName() + ".provider", file);
            intent.addFlags(1);
            intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
        } else {
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        }
        activity.startActivity(intent);
    }

    public void addDownloadListener(OnDownloadListener onDownloadListener) {
        if (onDownloadListener != null) {
            this.a.add(onDownloadListener);
        }
    }

    public void removeDownloadListener(OnDownloadListener onDownloadListener) {
        if (onDownloadListener != null) {
            this.a.remove(onDownloadListener);
        }
    }

    public void a(com.ifengyu.intercom.network.a aVar) {
        if (aVar != null) {
            this.i = aVar;
        }
    }

    public void c() {
        this.i = null;
    }

    public void a(com.ifengyu.intercom.network.b bVar) {
        if (bVar != null) {
            this.j = bVar;
        }
    }

    public void d() {
        this.j = null;
    }

    public HashMap<String, String> e() {
        return this.d;
    }
}

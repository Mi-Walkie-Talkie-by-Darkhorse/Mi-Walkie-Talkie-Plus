package com.ifengyu.intercom.service.p215b;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.utils.FileProviderHelper;
import com.ifengyu.library.utils.UIUtils;
import java.io.File;

/* renamed from: com.ifengyu.intercom.service.b.b */
/* loaded from: classes2.dex */
public class ApkDownloadNotifier {

    /* renamed from: a */
    private Context f14683a;

    /* renamed from: b */
    private NotificationManager f14684b;

    /* renamed from: c */
    private NotificationCompat.C0442b f14685c;

    /* renamed from: d */
    private int f14686d;

    /* renamed from: e */
    private int f14687e;

    public ApkDownloadNotifier(Context context, int i) {
        this.f14683a = context;
        this.f14686d = i;
        NotificationCompat.C0442b c0442b = new NotificationCompat.C0442b(context, "channel1");
        c0442b.m24076m(R.mipmap.ic_launcher);
        c0442b.m24085d(false);
        c0442b.m24079j(true);
        c0442b.m24077l(false);
        c0442b.m24081h(context.getString(R.string.app_name));
        c0442b.m24082g(context.getString(R.string.update_download_coming));
        this.f14685c = c0442b;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("channel1", "com.ifengyu.intercom", 2);
            notificationChannel.enableLights(false);
            notificationChannel.enableVibration(false);
            notificationChannel.setSound(null, null);
            m10681b().createNotificationChannel(notificationChannel);
        }
    }

    /* renamed from: a */
    private Intent m10682a(Context context, File file) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        FileProviderHelper.m8670c(context, intent, "application/vnd.android.package-archive", file, true);
        return intent;
    }

    /* renamed from: b */
    private NotificationManager m10681b() {
        if (this.f14684b == null) {
            this.f14684b = (NotificationManager) this.f14683a.getSystemService("notification");
        }
        return this.f14684b;
    }

    /* renamed from: c */
    private void m10680c(Context context, File file) {
        context.startActivity(m10682a(context, file));
    }

    /* renamed from: d */
    public void m10679d(String str) {
        File file = new File(str);
        if (file.isFile() && file.exists()) {
            Intent m10682a = m10682a(this.f14683a, file);
            NotificationCompat.C0442b c0442b = this.f14685c;
            c0442b.m24082g(this.f14683a.getString(R.string.update_download_complete));
            c0442b.m24078k(0, 0, false);
            c0442b.m24085d(true);
            c0442b.m24079j(false);
            c0442b.m24081h(UIUtils.m8602p(R.string.update_download_progress, 100));
            c0442b.m24083f(PendingIntent.getActivity(this.f14683a, this.f14686d << 3, m10682a, 134217728));
            m10681b().notify(this.f14686d, this.f14685c.m24088a());
            m10680c(this.f14683a, file);
            return;
        }
        m10681b().cancel(this.f14686d);
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: e */
    public void m10678e(int i) {
        if (i == this.f14687e || i % 5 != 0) {
            return;
        }
        this.f14685c.m24078k(100, i, false);
        this.f14685c.m24081h(UIUtils.m8602p(R.string.update_download_progress, Integer.valueOf(i)));
        m10681b().notify(this.f14686d, this.f14685c.m24088a());
        this.f14687e = i;
    }

    /* renamed from: f */
    public void m10677f() {
        Notification m24088a = this.f14685c.m24088a();
        m24088a.contentIntent = PendingIntent.getActivity(this.f14683a, 200, new Intent(BaseApp.m8712b(), MainActivity.class), 134217728);
        m24088a.flags = 32;
        m10681b().notify(this.f14686d, m24088a);
    }
}

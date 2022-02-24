package com.ifengyu.intercom.service;

import android.app.IntentService;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import com.ifengyu.intercom.i.z;

/* loaded from: classes2.dex */
public class MiTalkiControlService extends IntentService {
    public MiTalkiControlService() {
        super("MiTalkiControlService");
    }

    private void a() {
        z.a("MiTalkiControlService", "handleStartup");
        if (a.a(getApplicationContext())) {
            a.a().a();
        }
    }

    private void b() {
        if (Build.VERSION.SDK_INT >= 26) {
            ((NotificationManager) getSystemService("notification")).createNotificationChannel(new NotificationChannel("com.ifengyu.intercom", "fengyu", 3));
            startForeground(1, new NotificationCompat.b(this, "com.ifengyu.intercom").a());
        }
    }

    @Override // android.app.IntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        b();
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            z.a("MiTalkiControlService", "Received intent with action " + action);
            if ("com.ifengyu.intercom.ACTION_STARTUP".equals(action)) {
                a();
            }
        }
    }
}

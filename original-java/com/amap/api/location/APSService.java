package com.amap.api.location;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.amap.api.col.sl.ca;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.f;
import com.amap.api.col.sl.fq;
import com.amap.api.col.sl.fw;

public class APSService extends Service {
    APSServiceBase a;
    int b = 0;
    boolean c = false;

    public IBinder onBind(Intent intent) {
        try {
            return this.a.onBind(intent);
        } catch (Throwable th) {
            fq.a(th, "APSService", "onBind");
            return null;
        }
    }

    public void onCreate() {
        try {
            if (fw.d(this)) {
                this.a = (APSServiceBase) cy.a(this, fq.b(), ca.c("AY29tLmFtYXAuYXBpLmxvY2F0aW9uLkFQU1NlcnZpY2VXcmFwcGVy"), f.class, new Class[]{Context.class}, new Object[]{this});
            } else if (this.a == null) {
                this.a = new f(this);
            }
        } catch (Throwable th) {
        }
        try {
            if (this.a == null) {
                this.a = new f(this);
            }
            this.a.onCreate();
        } catch (Throwable th2) {
            fq.a(th2, "APSService", "onCreate");
        }
        super.onCreate();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent != null) {
            try {
                int intExtra = intent.getIntExtra("g", 0);
                if (intExtra == 1) {
                    int intExtra2 = intent.getIntExtra("i", 0);
                    Notification notification = (Notification) intent.getParcelableExtra("h");
                    if (!(intExtra2 == 0 || notification == null)) {
                        startForeground(intExtra2, notification);
                        this.c = true;
                        this.b++;
                    }
                } else if (intExtra == 2) {
                    if (intent.getBooleanExtra("j", true) && this.b > 0) {
                        this.b--;
                    }
                    if (this.b <= 0) {
                        stopForeground(true);
                        this.c = false;
                    } else {
                        stopForeground(false);
                    }
                }
            } catch (Throwable th) {
            }
        }
        try {
            return this.a.onStartCommand(intent, i, i2);
        } catch (Throwable th2) {
            fq.a(th2, "APSService", "onStartCommand");
            return super.onStartCommand(intent, i, i2);
        }
    }

    public void onDestroy() {
        try {
            this.a.onDestroy();
            if (this.c) {
                stopForeground(true);
            }
        } catch (Throwable th) {
            fq.a(th, "APSService", "onDestroy");
        }
        super.onDestroy();
    }
}

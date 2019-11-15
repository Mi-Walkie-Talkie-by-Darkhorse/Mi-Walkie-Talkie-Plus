package com.ifengyu.intercom.service;

import android.app.IntentService;
import android.content.Intent;
import com.ifengyu.intercom.b.s;

public class MiTalkiControlService extends IntentService {
    public MiTalkiControlService() {
        super("MiTalkiControlService");
    }

    /* access modifiers changed from: protected */
    public void onHandleIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            s.b("MiTalkiControlService", "Received intent with action " + action);
            if ("com.ifengyu.intercom.ACTION_STARTUP".equals(action)) {
                a();
            }
        }
    }

    private void a() {
        s.b("MiTalkiControlService", "handleStartup");
        if (a.a(getApplicationContext())) {
            a.b().b();
        }
    }
}

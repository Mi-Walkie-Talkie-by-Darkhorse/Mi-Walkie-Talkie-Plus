package com.xiaomi.push.service;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;

class be extends Handler {
    final /* synthetic */ XMPushService a;

    be(XMPushService xMPushService) {
        this.a = xMPushService;
    }

    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (message != null) {
            switch (message.what) {
                case 17:
                    if (message.obj != null) {
                        this.a.onStart((Intent) message.obj, XMPushService.c);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}

package com.xiaomi.push.service;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

/* loaded from: classes2.dex */
class cn extends Handler {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9321a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(XMPushService xMPushService) {
        this.f9321a = xMPushService;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String str;
        super.handleMessage(message);
        if (message != null) {
            try {
                int i = message.what;
                if (i != 17) {
                    if (i == 18) {
                        Message obtain = Message.obtain((Handler) null, 0);
                        obtain.what = 18;
                        Bundle bundle = new Bundle();
                        str = this.f9321a.f876a;
                        bundle.putString("xmsf_region", str);
                        obtain.setData(bundle);
                        message.replyTo.send(obtain);
                    }
                } else if (message.obj != null) {
                    this.f9321a.onStart((Intent) message.obj, 1);
                }
            } catch (Throwable unused) {
            }
        }
    }
}

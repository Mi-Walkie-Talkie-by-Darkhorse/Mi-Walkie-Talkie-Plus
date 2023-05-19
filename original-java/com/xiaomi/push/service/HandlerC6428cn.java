package com.xiaomi.push.service;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

/* renamed from: com.xiaomi.push.service.cn */
/* loaded from: classes2.dex */
class HandlerC6428cn extends Handler {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23171a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HandlerC6428cn(XMPushService xMPushService) {
        this.f23171a = xMPushService;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String str;
        super.handleMessage(message);
        if (message != null) {
            try {
                int i = message.what;
                if (i == 17) {
                    Object obj = message.obj;
                    if (obj != null) {
                        this.f23171a.onStart((Intent) obj, 1);
                    }
                } else if (i == 18) {
                    Message obtain = Message.obtain((Handler) null, 0);
                    obtain.what = 18;
                    Bundle bundle = new Bundle();
                    str = this.f23171a.f22889a;
                    bundle.putString("xmsf_region", str);
                    obtain.setData(bundle);
                    message.replyTo.send(obtain);
                }
            } catch (Throwable unused) {
            }
        }
    }
}

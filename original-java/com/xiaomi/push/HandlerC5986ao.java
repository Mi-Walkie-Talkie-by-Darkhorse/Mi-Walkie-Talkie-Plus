package com.xiaomi.push;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.push.C5983an;

/* renamed from: com.xiaomi.push.ao */
/* loaded from: classes2.dex */
class HandlerC5986ao extends Handler {

    /* renamed from: a */
    final /* synthetic */ C5983an f21019a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC5986ao(C5983an c5983an, Looper looper) {
        super(looper);
        this.f21019a = c5983an;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        C5983an.AbstractC5985b abstractC5985b = (C5983an.AbstractC5985b) message.obj;
        int i = message.what;
        if (i == 0) {
            abstractC5985b.m3758a();
        } else if (i == 1) {
            abstractC5985b.mo1430c();
        }
        super.handleMessage(message);
    }
}

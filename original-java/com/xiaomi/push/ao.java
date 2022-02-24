package com.xiaomi.push;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.push.an;

/* loaded from: classes2.dex */
class ao extends Handler {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ an f8744a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ao(an anVar, Looper looper) {
        super(looper);
        this.f8744a = anVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        an.b bVar = (an.b) message.obj;
        int i = message.what;
        if (i == 0) {
            bVar.a();
        } else if (i == 1) {
            bVar.mo162c();
        }
        super.handleMessage(message);
    }
}

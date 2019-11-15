package com.xiaomi.channel.commonutils.misc;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.xiaomi.channel.commonutils.misc.i.b;

class j extends Handler {
    final /* synthetic */ i a;

    j(i iVar, Looper looper) {
        this.a = iVar;
        super(looper);
    }

    public void handleMessage(Message message) {
        b bVar = (b) message.obj;
        if (message.what == 0) {
            bVar.a();
        } else if (message.what == 1) {
            bVar.c();
        }
        super.handleMessage(message);
    }
}

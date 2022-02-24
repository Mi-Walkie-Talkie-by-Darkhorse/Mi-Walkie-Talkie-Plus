package com.ifengyu.intercom.network.d;

import android.os.Handler;
import android.os.Message;

/* compiled from: HttpHandler.java */
/* loaded from: classes2.dex */
public abstract class d extends Handler {
    public void a() {
    }

    public void a(Message message) {
    }

    public void a(String str) {
    }

    public void a(boolean z) {
    }

    public void b() {
    }

    public abstract void c();

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        a();
        int i = message.what;
        if (i == 1) {
            c();
            a(true);
        } else if (i == 2) {
            b();
            a(false);
        } else if (i == 3) {
            a(message.getData().getString("data_on_net"));
        } else if (i == 4) {
            a(message);
        }
    }
}

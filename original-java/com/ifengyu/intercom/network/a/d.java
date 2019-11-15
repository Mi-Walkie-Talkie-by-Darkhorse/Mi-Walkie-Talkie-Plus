package com.ifengyu.intercom.network.a;

import android.os.Handler;
import android.os.Message;

/* compiled from: HttpHandler */
public abstract class d extends Handler {
    public final void handleMessage(Message message) {
        a();
        switch (message.what) {
            case 1:
                b();
                a(true);
                return;
            case 2:
                c();
                a(false);
                return;
            case 3:
                a(message.getData().getString("data_on_net"));
                return;
            case 4:
                a(message);
                return;
            default:
                return;
        }
    }

    public void a() {
    }

    public void b() {
    }

    public void c() {
    }

    public void a(boolean z) {
    }

    public void a(String str) {
    }

    public void a(Message message) {
    }
}

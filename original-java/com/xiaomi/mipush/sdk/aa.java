package com.xiaomi.mipush.sdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class aa extends Handler {
    final /* synthetic */ z a;

    aa(z zVar, Looper looper) {
        this.a = zVar;
        super(looper);
    }

    public void dispatchMessage(Message message) {
        String str = (String) message.obj;
        int i = message.arg1;
        synchronized (u.class) {
            if (u.a(this.a.c).e(str)) {
                if (u.a(this.a.c).c(str) < 10) {
                    if (1 == i && "disable_syncing".equals(u.a(this.a.c).a())) {
                        this.a.a(str, true);
                    } else if (i == 0 && "enable_syncing".equals(u.a(this.a.c).a())) {
                        this.a.a(str, false);
                    }
                    u.a(this.a.c).b(str);
                } else {
                    u.a(this.a.c).d(str);
                }
            }
        }
    }
}

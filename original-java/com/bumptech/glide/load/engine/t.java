package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.util.i;

/* compiled from: ResourceRecycler */
class t {
    private boolean a;
    private final Handler b = new Handler(Looper.getMainLooper(), new a());

    /* compiled from: ResourceRecycler */
    private static class a implements Callback {
        a() {
        }

        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((q) message.obj).e();
            return true;
        }
    }

    t() {
    }

    public void a(q<?> qVar) {
        i.a();
        if (this.a) {
            this.b.obtainMessage(1, qVar).sendToTarget();
            return;
        }
        this.a = true;
        qVar.e();
        this.a = false;
    }
}

package com.xiaomi.mipush.sdk;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.xiaomi.channel.commonutils.logger.b;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public abstract class BaseService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private a f8663a;

    /* loaded from: classes2.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<BaseService> f8664a;

        public a(WeakReference<BaseService> weakReference) {
            this.f8664a = weakReference;
        }

        public void a() {
            if (hasMessages(1001)) {
                removeMessages(1001);
            }
            sendEmptyMessageDelayed(1001, 1000L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<BaseService> weakReference;
            BaseService baseService;
            if (message.what == 1001 && (weakReference = this.f8664a) != null && (baseService = weakReference.get()) != null) {
                b.c("TimeoutHandler " + baseService.toString() + " kill self");
                if (!baseService.mo17a()) {
                    baseService.stopSelf();
                    return;
                }
                b.c("TimeoutHandler has job");
                sendEmptyMessageDelayed(1001, 1000L);
            }
        }
    }

    /* renamed from: a */
    protected abstract boolean mo17a();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        if (this.f8663a == null) {
            this.f8663a = new a(new WeakReference(this));
        }
        this.f8663a.a();
    }
}

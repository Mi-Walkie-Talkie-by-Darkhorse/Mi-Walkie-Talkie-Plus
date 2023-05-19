package com.xiaomi.mipush.sdk;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public abstract class BaseService extends Service {

    /* renamed from: a */
    private HandlerC5902a f20848a;

    /* renamed from: com.xiaomi.mipush.sdk.BaseService$a */
    /* loaded from: classes2.dex */
    public static class HandlerC5902a extends Handler {

        /* renamed from: a */
        private WeakReference<BaseService> f20849a;

        public HandlerC5902a(WeakReference<BaseService> weakReference) {
            this.f20849a = weakReference;
        }

        /* renamed from: a */
        public void m4084a() {
            if (hasMessages(1001)) {
                removeMessages(1001);
            }
            sendEmptyMessageDelayed(1001, 1000L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<BaseService> weakReference;
            BaseService baseService;
            if (message.what != 1001 || (weakReference = this.f20849a) == null || (baseService = weakReference.get()) == null) {
                return;
            }
            AbstractC5876b.m4139c("TimeoutHandler " + baseService.toString() + " kill self");
            if (!baseService.mo4049a()) {
                baseService.stopSelf();
                return;
            }
            AbstractC5876b.m4139c("TimeoutHandler has job");
            sendEmptyMessageDelayed(1001, 1000L);
        }
    }

    /* renamed from: a */
    protected abstract boolean mo4049a();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        if (this.f20848a == null) {
            this.f20848a = new HandlerC5902a(new WeakReference(this));
        }
        this.f20848a.m4084a();
    }
}

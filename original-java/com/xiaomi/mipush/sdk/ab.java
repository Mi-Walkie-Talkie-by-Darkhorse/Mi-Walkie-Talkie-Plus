package com.xiaomi.mipush.sdk;

import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.channel.commonutils.network.d;
import com.xiaomi.push.service.aq;

class ab extends ContentObserver {
    final /* synthetic */ z a;

    ab(z zVar, Handler handler) {
        this.a = zVar;
        super(handler);
    }

    public void onChange(boolean z) {
        this.a.l = Integer.valueOf(aq.a(this.a.c).b());
        if (this.a.l.intValue() != 0) {
            this.a.c.getContentResolver().unregisterContentObserver(this);
            if (d.d(this.a.c)) {
                this.a.d();
            }
        }
    }
}

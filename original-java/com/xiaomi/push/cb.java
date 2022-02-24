package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ci;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class cb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private String f8799a;

    /* renamed from: a  reason: collision with other field name */
    private WeakReference<Context> f150a;

    public cb(String str, WeakReference<Context> weakReference) {
        this.f8799a = str;
        this.f150a = weakReference;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        WeakReference<Context> weakReference = this.f150a;
        if (weakReference != null && (context = weakReference.get()) != null) {
            if (co.a(this.f8799a) > ca.f148a) {
                ce a2 = ce.a(this.f8799a);
                cd a3 = cd.a(this.f8799a);
                a2.a(a3);
                a3.a(cc.a(context, this.f8799a, 1000));
                ci.a(context).a((ci.a) a2);
                return;
            }
            b.b("=====> do not need clean db");
        }
    }
}

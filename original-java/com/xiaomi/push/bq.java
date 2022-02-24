package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.clientreport.manager.a;
import com.xiaomi.push.ak;

/* loaded from: classes2.dex */
public class bq extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f8787a;

    public bq(Context context) {
        this.f8787a = context;
    }

    private boolean a() {
        return a.a(this.f8787a).m3a().isPerfUploadSwitchOpen();
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "100887";
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (a()) {
                a.a(this.f8787a).c();
                b.c(this.f8787a.getPackageName() + " perf begin upload");
            }
        } catch (Exception e) {
            b.d("fail to send perf data. " + e);
        }
    }
}

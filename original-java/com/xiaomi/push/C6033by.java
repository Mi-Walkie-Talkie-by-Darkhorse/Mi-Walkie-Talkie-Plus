package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.by */
/* loaded from: classes2.dex */
public class C6033by extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ C6031bw f21138a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6033by(C6031bw c6031bw) {
        this.f21138a = c6031bw;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "10054";
    }

    @Override // java.lang.Runnable
    public void run() {
        String m3577c;
        Context context;
        Context context2;
        AbstractC5876b.m4139c("exec== DbSizeControlJob");
        m3577c = this.f21138a.m3577c();
        context = this.f21138a.f21125a;
        RunnableC6038cb runnableC6038cb = new RunnableC6038cb(m3577c, new WeakReference(context));
        context2 = this.f21138a.f21125a;
        C6045ci.m3519a(context2).m3516a(runnableC6038cb);
        this.f21138a.m3578b("check_time");
    }
}

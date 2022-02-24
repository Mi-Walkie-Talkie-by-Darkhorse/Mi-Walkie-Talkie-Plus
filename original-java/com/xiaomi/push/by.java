package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ak;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class by extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bw f8794a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(bw bwVar) {
        this.f8794a = bwVar;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "10054";
    }

    @Override // java.lang.Runnable
    public void run() {
        String c2;
        Context context;
        Context context2;
        b.c("exec== DbSizeControlJob");
        c2 = this.f8794a.c();
        context = this.f8794a.f139a;
        cb cbVar = new cb(c2, new WeakReference(context));
        context2 = this.f8794a.f139a;
        ci.a(context2).a(cbVar);
        this.f8794a.b("check_time");
    }
}

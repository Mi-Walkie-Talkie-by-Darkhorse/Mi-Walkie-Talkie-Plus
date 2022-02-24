package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class bz extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bw f8795a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bz(bw bwVar) {
        this.f8795a = bwVar;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "10053";
    }

    @Override // java.lang.Runnable
    public void run() {
        cm cmVar;
        cm cmVar2;
        Context context;
        cmVar = this.f8795a.f142a;
        if (cmVar != null) {
            cmVar2 = this.f8795a.f142a;
            context = this.f8795a.f139a;
            cmVar2.b(context);
            this.f8795a.b("delete_time");
        }
    }
}

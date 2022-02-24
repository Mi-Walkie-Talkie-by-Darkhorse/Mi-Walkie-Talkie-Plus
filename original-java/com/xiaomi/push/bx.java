package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ak;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class bx extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bw f8793a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(bw bwVar) {
        this.f8793a = bwVar;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "10052";
    }

    @Override // java.lang.Runnable
    public void run() {
        cm cmVar;
        cm cmVar2;
        Context context;
        b.c("exec== mUploadJob");
        cmVar = this.f8793a.f142a;
        if (cmVar != null) {
            cmVar2 = this.f8793a.f142a;
            context = this.f8793a.f139a;
            cmVar2.a(context);
            this.f8793a.b("upload_time");
        }
    }
}

package com.xiaomi.push;

import android.content.Context;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.y */
/* loaded from: classes2.dex */
public class C6474y extends AbstractRunnableC6473x {

    /* renamed from: a */
    final /* synthetic */ Runnable f23264a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6474y(Context context, File file, Runnable runnable) {
        super(context, file, null);
        this.f23264a = runnable;
    }

    @Override // com.xiaomi.push.AbstractRunnableC6473x
    /* renamed from: a */
    protected void mo1222a(Context context) {
        Runnable runnable = this.f23264a;
        if (runnable != null) {
            runnable.run();
        }
    }
}

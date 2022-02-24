package com.xiaomi.push;

import android.content.Context;
import java.io.File;

/* loaded from: classes2.dex */
class y extends x {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Runnable f9374a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(Context context, File file, Runnable runnable) {
        super(context, file, null);
        this.f9374a = runnable;
    }

    @Override // com.xiaomi.push.x
    protected void a(Context context) {
        Runnable runnable = this.f9374a;
        if (runnable != null) {
            runnable.run();
        }
    }
}

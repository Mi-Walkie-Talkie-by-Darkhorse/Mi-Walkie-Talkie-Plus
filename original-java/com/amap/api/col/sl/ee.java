package com.amap.api.col.sl;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* compiled from: ByteJoinDataStrategy */
public final class ee extends ek {
    ByteArrayOutputStream a = new ByteArrayOutputStream();

    public ee() {
    }

    public ee(ek ekVar) {
        super(ekVar);
    }

    /* access modifiers changed from: protected */
    public final byte[] a(byte[] bArr) {
        byte[] byteArray = this.a.toByteArray();
        try {
            this.a.close();
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
        }
        this.a = new ByteArrayOutputStream();
        return byteArray;
    }

    public final void b(byte[] bArr) {
        try {
            this.a.write(bArr);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }
}

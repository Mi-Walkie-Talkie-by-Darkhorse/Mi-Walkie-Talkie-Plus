package com.amap.api.col.sl;

import android.content.Context;
import android.os.Build;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayOutputStream;

/* compiled from: StatisticsHeaderDataStrategy */
public final class ei extends ek {
    public static int a = 13;
    public static int b = 6;
    private Context e;

    public ei(Context context, ek ekVar) {
        super(ekVar);
        this.e = context;
    }

    /* access modifiers changed from: protected */
    public final byte[] a(byte[] bArr) {
        byte[] a2 = a(this.e);
        byte[] bArr2 = new byte[(a2.length + bArr.length)];
        System.arraycopy(a2, 0, bArr2, 0, a2.length);
        System.arraycopy(bArr, 0, bArr2, a2.length, bArr.length);
        return bArr2;
    }

    private static byte[] a(Context context) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[0];
        try {
            ca.a(byteArrayOutputStream, "1.2." + a + "." + b);
            ca.a(byteArrayOutputStream, "Android");
            ca.a(byteArrayOutputStream, bu.t(context));
            ca.a(byteArrayOutputStream, bu.l(context));
            ca.a(byteArrayOutputStream, bu.h(context));
            ca.a(byteArrayOutputStream, Build.MANUFACTURER);
            ca.a(byteArrayOutputStream, Build.MODEL);
            ca.a(byteArrayOutputStream, Build.DEVICE);
            ca.a(byteArrayOutputStream, bu.u(context));
            ca.a(byteArrayOutputStream, bp.c(context));
            ca.a(byteArrayOutputStream, bp.d(context));
            ca.a(byteArrayOutputStream, bp.f(context));
            byteArrayOutputStream.write(new byte[]{0});
            bArr = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                th = th;
                ThrowableExtension.printStackTrace(th);
                return bArr;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return bArr;
    }
}

package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* compiled from: HeaderAddStrategy */
public final class eg extends ek {
    private Context a;
    private String b;
    private cd e;
    private Object[] f;

    public eg(Context context, ek ekVar, cd cdVar, String str, Object... objArr) {
        super(ekVar);
        this.a = context;
        this.b = str;
        this.e = cdVar;
        this.f = objArr;
    }

    /* access modifiers changed from: protected */
    public final byte[] a(byte[] bArr) throws CertificateException, NoSuchAlgorithmException, IOException, BadPaddingException, IllegalBlockSizeException, NoSuchPaddingException, InvalidKeyException, InvalidKeySpecException {
        String a2 = ca.a(bArr);
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        Context context = this.a;
        String a3 = ca.a(this.e.b(ca.a(b())));
        StringBuilder sb = new StringBuilder();
        sb.append("{\"pinfo\":\"").append(a3).append("\",\"els\":[");
        sb.append(a2);
        sb.append("]}");
        return ca.a(sb.toString());
    }

    private String b() {
        String str = "";
        try {
            return String.format(ca.c(this.b), this.f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            cm.c(th, "ofm", "gpj");
            return str;
        }
    }
}

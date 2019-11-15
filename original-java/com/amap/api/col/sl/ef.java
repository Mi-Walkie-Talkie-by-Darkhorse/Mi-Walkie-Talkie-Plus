package com.amap.api.col.sl;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* compiled from: EncryptRsaDataStrategy */
public final class ef extends ek {
    private cd a = new cg();

    public ef() {
    }

    public ef(ek ekVar) {
        super(ekVar);
    }

    /* access modifiers changed from: protected */
    public final byte[] a(byte[] bArr) throws CertificateException, NoSuchAlgorithmException, IOException, BadPaddingException, IllegalBlockSizeException, NoSuchPaddingException, InvalidKeyException, InvalidKeySpecException {
        return this.a.b(bArr);
    }
}

package com.tencent.bugly.mimsg.proguard;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

/* compiled from: BUGLY */
public final class af implements ag {
    private String a = null;

    public final byte[] a(byte[] bArr) throws Exception {
        if (this.a == null || bArr == null) {
            return null;
        }
        Cipher instance = Cipher.getInstance("DES/CBC/PKCS5Padding");
        instance.init(2, SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(this.a.getBytes("UTF-8"))), new IvParameterSpec(this.a.getBytes("UTF-8")));
        return instance.doFinal(bArr);
    }

    public final byte[] b(byte[] bArr) throws Exception, NoSuchAlgorithmException {
        if (this.a == null || bArr == null) {
            return null;
        }
        Cipher instance = Cipher.getInstance("DES/CBC/PKCS5Padding");
        instance.init(1, SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(this.a.getBytes("UTF-8"))), new IvParameterSpec(this.a.getBytes("UTF-8")));
        return instance.doFinal(bArr);
    }

    public final void a(String str) {
        if (str != null) {
            this.a = str;
        }
    }
}

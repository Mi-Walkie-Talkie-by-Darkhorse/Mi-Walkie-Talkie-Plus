package com.xiaomi.accountsdk.diagnosis.encrypt;

import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes2.dex */
public class f {
    public static PublicKey a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return a(str.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e) {
                throw new c("getPublicKey", e.getCause());
            }
        } else {
            throw new IllegalStateException("public key should not be empty");
        }
    }

    public static PublicKey a(byte[] bArr) {
        if (bArr != null) {
            try {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr))).getPublicKey();
            } catch (CertificateException e) {
                throw new c("getPublicKey", e.getCause());
            }
        } else {
            throw new IllegalStateException("public key bytes should not be empty");
        }
    }

    public static byte[] a(byte[] bArr, Key key) {
        try {
            return a(bArr, key, 1);
        } catch (c e) {
            throw new c("encrypt", e.getCause());
        }
    }

    public static byte[] a(byte[] bArr, Key key, int i) {
        try {
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(i, key);
            return instance.doFinal(bArr);
        } catch (InvalidKeyException e) {
            throw new c(e.getCause());
        } catch (NoSuchAlgorithmException e2) {
            throw new c(e2.getCause());
        } catch (BadPaddingException e3) {
            throw new c(e3.getCause());
        } catch (IllegalBlockSizeException e4) {
            throw new c(e4.getCause());
        } catch (NoSuchPaddingException e5) {
            throw new c(e5.getCause());
        }
    }
}

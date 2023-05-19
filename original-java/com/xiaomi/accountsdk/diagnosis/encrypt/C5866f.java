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

/* renamed from: com.xiaomi.accountsdk.diagnosis.encrypt.f */
/* loaded from: classes2.dex */
public class C5866f {
    /* renamed from: a */
    public static PublicKey m4177a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalStateException("public key should not be empty");
        }
        try {
            return m4176a(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new C5862c("getPublicKey", e.getCause());
        }
    }

    /* renamed from: a */
    public static PublicKey m4176a(byte[] bArr) {
        if (bArr != null) {
            try {
                return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr))).getPublicKey();
            } catch (CertificateException e) {
                throw new C5862c("getPublicKey", e.getCause());
            }
        }
        throw new IllegalStateException("public key bytes should not be empty");
    }

    /* renamed from: a */
    public static byte[] m4175a(byte[] bArr, Key key) {
        try {
            return m4174a(bArr, key, 1);
        } catch (C5862c e) {
            throw new C5862c("encrypt", e.getCause());
        }
    }

    /* renamed from: a */
    public static byte[] m4174a(byte[] bArr, Key key, int i) {
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(i, key);
            return cipher.doFinal(bArr);
        } catch (InvalidKeyException e) {
            throw new C5862c(e.getCause());
        } catch (NoSuchAlgorithmException e2) {
            throw new C5862c(e2.getCause());
        } catch (BadPaddingException e3) {
            throw new C5862c(e3.getCause());
        } catch (IllegalBlockSizeException e4) {
            throw new C5862c(e4.getCause());
        } catch (NoSuchPaddingException e5) {
            throw new C5862c(e5.getCause());
        }
    }
}

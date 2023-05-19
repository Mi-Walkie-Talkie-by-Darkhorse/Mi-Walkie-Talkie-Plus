package com.xiaomi.accountsdk.diagnosis.encrypt;

import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.mipush.sdk.Constants;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

/* loaded from: classes2.dex */
public class PassportEnvEncryptUtils {

    /* loaded from: classes2.dex */
    public static class EncryptException extends Exception {
        public EncryptException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes2.dex */
    public static class EncryptResult {
        public String content;
        public String encryptedKey;
    }

    /* renamed from: a */
    private static String m4188a(String str, SecretKey secretKey) {
        try {
            return new C5860a(secretKey.getEncoded()).m4186a(str);
        } catch (C5861b e) {
            throw new EncryptException(e);
        }
    }

    /* renamed from: a */
    private static SecretKey m4189a() {
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            keyGenerator.init(new SecureRandom());
            return keyGenerator.generateKey();
        } catch (NoSuchAlgorithmException e) {
            throw new EncryptException(e);
        }
    }

    public static EncryptResult encrypt(String str) {
        EncryptResult encryptResult = new EncryptResult();
        SecretKey m4189a = m4189a();
        try {
            String encodeToString = Base64.encodeToString(C5866f.m4175a(Base64.encode(m4189a.getEncoded(), 10), C5866f.m4177a("-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWBw0IzANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNjExMDQwNzA5MjNaFw0xNzExMDQwNzA5MjNa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCHcPEm9Wo8/LWHL8mohOV5YalTgZLzng+nWCEkIRP//6GohYlI\nh3dvGpueJvQ3Sany/3dLx0x6MQKA34NxRyoO37R/LgPZUfe6eWzHQeColBBHxTED\nbCqDh46Gv5vogjqHRl4+q2WGCmZOIfmPjNHQWG8sMIZyTqFCLc6gk9vSewIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAHaPnscaxSPh0N0Z5OgQ6PcWr5uYPLMweatYGZRH\nSFxwSqYXpqIowuRxmrBj+oE5rG5rzFCtNjCBoeMVy/7JXZr9Juaw9NCWaTaqrmIV\nP4nK/0kizCvkx3088OOCGextGeZUC9/PCbVUEcRvGLwSrvgqiC1KG4ufeIdQWBaJ\n8ZlG\n-----END CERTIFICATE-----\n")), 10);
            encryptResult.content = m4188a(str, m4189a);
            encryptResult.encryptedKey = encodeToString;
            return encryptResult;
        } catch (C5862c e) {
            throw new EncryptException(e);
        }
    }

    public static EncryptResult encrypt(String[] strArr) {
        return encrypt(TextUtils.join(Constants.COLON_SEPARATOR, strArr));
    }
}

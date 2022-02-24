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

    private static String a(String str, SecretKey secretKey) {
        try {
            return new a(secretKey.getEncoded()).a(str);
        } catch (b e) {
            throw new EncryptException(e);
        }
    }

    private static SecretKey a() {
        try {
            KeyGenerator instance = KeyGenerator.getInstance("AES");
            instance.init(new SecureRandom());
            return instance.generateKey();
        } catch (NoSuchAlgorithmException e) {
            throw new EncryptException(e);
        }
    }

    public static EncryptResult encrypt(String str) {
        EncryptResult encryptResult = new EncryptResult();
        SecretKey a2 = a();
        try {
            String encodeToString = Base64.encodeToString(f.a(Base64.encode(a2.getEncoded(), 10), f.a("-----BEGIN CERTIFICATE-----\nMIICDzCCAXigAwIBAgIEWBw0IzANBgkqhkiG9w0BAQUFADBMMQswCQYDVQQGEwJD\nTjEPMA0GA1UEChMGeGlhb21pMQ8wDQYDVQQLEwZ4aWFvbWkxGzAZBgNVBAMTEmFj\nY291bnQueGlhb21pLmNvbTAeFw0xNjExMDQwNzA5MjNaFw0xNzExMDQwNzA5MjNa\nMEwxCzAJBgNVBAYTAkNOMQ8wDQYDVQQKEwZ4aWFvbWkxDzANBgNVBAsTBnhpYW9t\naTEbMBkGA1UEAxMSYWNjb3VudC54aWFvbWkuY29tMIGfMA0GCSqGSIb3DQEBAQUA\nA4GNADCBiQKBgQCHcPEm9Wo8/LWHL8mohOV5YalTgZLzng+nWCEkIRP//6GohYlI\nh3dvGpueJvQ3Sany/3dLx0x6MQKA34NxRyoO37R/LgPZUfe6eWzHQeColBBHxTED\nbCqDh46Gv5vogjqHRl4+q2WGCmZOIfmPjNHQWG8sMIZyTqFCLc6gk9vSewIDAQAB\nMA0GCSqGSIb3DQEBBQUAA4GBAHaPnscaxSPh0N0Z5OgQ6PcWr5uYPLMweatYGZRH\nSFxwSqYXpqIowuRxmrBj+oE5rG5rzFCtNjCBoeMVy/7JXZr9Juaw9NCWaTaqrmIV\nP4nK/0kizCvkx3088OOCGextGeZUC9/PCbVUEcRvGLwSrvgqiC1KG4ufeIdQWBaJ\n8ZlG\n-----END CERTIFICATE-----\n")), 10);
            encryptResult.content = a(str, a2);
            encryptResult.encryptedKey = encodeToString;
            return encryptResult;
        } catch (c e) {
            throw new EncryptException(e);
        }
    }

    public static EncryptResult encrypt(String[] strArr) {
        return encrypt(TextUtils.join(Constants.COLON_SEPARATOR, strArr));
    }
}

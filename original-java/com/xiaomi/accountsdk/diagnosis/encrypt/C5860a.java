package com.xiaomi.accountsdk.diagnosis.encrypt;

import android.util.Base64;
import android.util.Log;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.xiaomi.accountsdk.diagnosis.encrypt.a */
/* loaded from: classes2.dex */
public class C5860a {

    /* renamed from: a */
    private SecretKeySpec f20787a;

    public C5860a(byte[] bArr) {
        if (bArr == null) {
            throw new SecurityException("aes key is null");
        }
        if (bArr.length != 16) {
            Log.e("AESCoder", "aesKey is invalid");
        }
        this.f20787a = new SecretKeySpec(bArr, "AES");
    }

    /* renamed from: a */
    public String m4186a(String str) {
        try {
            return Base64.encodeToString(m4185a(str.getBytes("UTF-8")), 2);
        } catch (Exception e) {
            throw new C5861b("fail to encrypt by aescoder", e);
        }
    }

    /* renamed from: a */
    protected byte[] m4187a() {
        return "0102030405060708".getBytes();
    }

    /* renamed from: a */
    public byte[] m4185a(byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, this.f20787a, new IvParameterSpec(m4187a()));
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            throw new C5861b("fail to encrypt by aescoder", e);
        }
    }
}

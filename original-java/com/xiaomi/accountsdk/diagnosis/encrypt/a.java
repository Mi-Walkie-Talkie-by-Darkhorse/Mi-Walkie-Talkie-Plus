package com.xiaomi.accountsdk.diagnosis.encrypt;

import android.util.Base64;
import android.util.Log;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private SecretKeySpec f8631a;

    public a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length != 16) {
                Log.e("AESCoder", "aesKey is invalid");
            }
            this.f8631a = new SecretKeySpec(bArr, "AES");
            return;
        }
        throw new SecurityException("aes key is null");
    }

    public String a(String str) {
        try {
            return Base64.encodeToString(a(str.getBytes("UTF-8")), 2);
        } catch (Exception e) {
            throw new b("fail to encrypt by aescoder", e);
        }
    }

    protected byte[] a() {
        return "0102030405060708".getBytes();
    }

    public byte[] a(byte[] bArr) {
        try {
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(1, this.f8631a, new IvParameterSpec(a()));
            return instance.doFinal(bArr);
        } catch (Exception e) {
            throw new b("fail to encrypt by aescoder", e);
        }
    }
}

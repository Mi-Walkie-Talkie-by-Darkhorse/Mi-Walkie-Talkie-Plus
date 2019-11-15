package com.tencent.bugly.mimsg.proguard;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: BUGLY */
public final class ae implements ag {
    private String a = null;

    public final byte[] a(byte[] bArr) throws Exception {
        if (this.a == null || bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(bArr[i] + Token.SEPARATOR);
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.a.getBytes(), "AES");
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
        instance.init(2, secretKeySpec, new IvParameterSpec(this.a.getBytes()));
        byte[] doFinal = instance.doFinal(bArr);
        StringBuffer stringBuffer2 = new StringBuffer();
        int length2 = doFinal.length;
        for (int i2 = 0; i2 < length2; i2++) {
            stringBuffer2.append(doFinal[i2] + Token.SEPARATOR);
        }
        return doFinal;
    }

    public final byte[] b(byte[] bArr) throws Exception, NoSuchAlgorithmException {
        if (this.a == null || bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(bArr[i] + Token.SEPARATOR);
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.a.getBytes(), "AES");
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
        instance.init(1, secretKeySpec, new IvParameterSpec(this.a.getBytes()));
        byte[] doFinal = instance.doFinal(bArr);
        StringBuffer stringBuffer2 = new StringBuffer();
        int length2 = doFinal.length;
        for (int i2 = 0; i2 < length2; i2++) {
            stringBuffer2.append(doFinal[i2] + Token.SEPARATOR);
        }
        return doFinal;
    }

    public final void a(String str) {
        if (str != null) {
            for (int length = str.length(); length < 16; length++) {
                str = str + "0";
            }
            this.a = str.substring(0, 16);
        }
    }
}

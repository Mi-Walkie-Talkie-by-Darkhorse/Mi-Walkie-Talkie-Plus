package com.mi.milinkforgame.sdk.util.crypt;

import android.util.Base64;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.jboss.netty.handler.codec.http.HttpConstants;

public abstract class Cryptor {
    private static final byte[] IV = {100, 23, 84, 114, 72, 0, 4, 97, 73, 97, 2, 52, 84, 102, 18, HttpConstants.SP};
    private static final int RSA_1024_ENCYPT_LEN = 117;

    public static byte[] decrypt(byte[] bArr, byte[] bArr2) {
        int i = 0;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, new IvParameterSpec(IV));
            byte[] update = instance.update(bArr, 0, bArr.length);
            byte[] doFinal = instance.doFinal();
            int length = (doFinal == null ? 0 : doFinal.length) + (update == null ? 0 : update.length);
            if (length <= 0) {
                return null;
            }
            byte[] bArr3 = new byte[length];
            if (update != null) {
                System.arraycopy(update, 0, bArr3, 0, update.length);
                i = update.length;
            }
            if (doFinal != null) {
                System.arraycopy(doFinal, 0, bArr3, i, doFinal.length);
            }
            return bArr3;
        } catch (Exception e) {
            MiLinkLog.e("crypt", (Throwable) e);
            return null;
        }
    }

    private static String bytesToHex(byte[] bArr) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bArr.length; i++) {
            stringBuffer.append(charArray[(bArr[i] & 255) >> 4]);
            stringBuffer.append(charArray[bArr[i] & 15]);
        }
        return stringBuffer.toString();
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(1, secretKeySpec, new IvParameterSpec(IV));
            return instance.doFinal(bArr);
        } catch (Exception e) {
            MiLinkLog.e("crypt", (Throwable) e);
            return null;
        }
    }

    private static PublicKey getPublicKey(String str) throws Exception {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 2)));
    }

    public static byte[] encryptRSA(byte[] bArr, String str) {
        int i = 0;
        try {
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(1, getPublicKey(str));
            int length = bArr.length;
            int i2 = 117;
            byte[] bArr2 = new byte[2048];
            int i3 = 0;
            while (true) {
                int i4 = i;
                int i5 = i2;
                if (i4 + 117 > length) {
                    i2 = length - i4;
                } else {
                    i2 = i5;
                }
                byte[] doFinal = instance.doFinal(bArr, i4, i2);
                int length2 = doFinal.length;
                if (i3 + length2 > bArr2.length) {
                    byte[] bArr3 = new byte[(bArr2.length * 2)];
                    System.arraycopy(bArr2, 0, bArr3, 0, i3);
                    bArr2 = bArr3;
                }
                System.arraycopy(doFinal, 0, bArr2, i3, length2);
                i = i4 + i2;
                i3 += length2;
                if (i >= length) {
                    byte[] bArr4 = new byte[i3];
                    System.arraycopy(bArr2, 0, bArr4, 0, i3);
                    return bArr4;
                }
            }
        } catch (Exception e) {
            MiLinkLog.e("crypt", (Throwable) e);
            return null;
        }
    }
}

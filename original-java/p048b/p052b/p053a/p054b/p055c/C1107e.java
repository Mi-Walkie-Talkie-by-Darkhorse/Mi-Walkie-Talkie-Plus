package p048b.p052b.p053a.p054b.p055c;

import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Objects;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: b.b.a.b.c.e */
/* loaded from: classes.dex */
public class C1107e {
    /* renamed from: a */
    public static SecretKey m21180a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws NoSuchAlgorithmException, InvalidKeySpecException {
        if (bArr.length == 16 && bArr2.length == 16 && bArr3.length == 16) {
            return new SecretKeySpec(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(C1105c.m21184a(m21177d(bArr, bArr2, bArr3)).toCharArray(), bArr4, BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT, 128)).getEncoded(), "AES");
        }
        throw new IllegalArgumentException("invalid data for generating the key.");
    }

    /* renamed from: b */
    private static byte[] m21179b(byte[] bArr, int i) {
        Objects.requireNonNull(bArr, "bytes must not be null.");
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (i < 0) {
                bArr[i2] = (byte) (bArr[i2] << (-i));
            } else {
                bArr[i2] = (byte) (bArr[i2] >> i);
            }
        }
        return bArr;
    }

    /* renamed from: c */
    private static byte[] m21178c(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            throw new NullPointerException("left or right must not be null.");
        }
        if (bArr.length == bArr2.length) {
            byte[] bArr3 = new byte[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
            }
            return bArr3;
        }
        throw new IllegalArgumentException("left and right must be the same length.");
    }

    /* renamed from: d */
    public static byte[] m21177d(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        m21179b(bArr, -4);
        byte[] m21178c = m21178c(bArr, bArr2);
        m21179b(m21178c, 6);
        return m21178c(m21178c, bArr3);
    }
}

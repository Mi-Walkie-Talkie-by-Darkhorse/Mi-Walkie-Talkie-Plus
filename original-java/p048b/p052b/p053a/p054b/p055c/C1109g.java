package p048b.p052b.p053a.p054b.p055c;

import android.content.Context;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: b.b.a.b.c.g */
/* loaded from: classes.dex */
public class C1109g extends C1108f {

    /* renamed from: c */
    private final Map<String, String> f5272c;

    /* renamed from: d */
    private final Object f5273d;

    /* renamed from: e */
    private SecretKey f5274e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1109g(Context context, String str) {
        super(context, str);
        this.f5272c = new HashMap();
        this.f5273d = new Object();
        try {
            String m21174a = m21174a("/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138");
            String m21174a2 = m21174a("/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C");
            String m21174a3 = m21174a("/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B");
            String m21174a4 = m21174a("/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD");
            if (m21174a == null || m21174a2 == null || m21174a3 == null || m21174a4 == null) {
                return;
            }
            this.f5274e = C1107e.m21180a(C1105c.m21183b(m21174a), C1105c.m21183b(m21174a2), C1105c.m21183b(m21174a3), C1105c.m21183b(m21174a4));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException unused) {
            Log.e("SecurityResourcesReader", "Exception when reading the 'K&I' for 'Config'.");
            this.f5274e = null;
        }
    }

    /* renamed from: a */
    private String m21174a(String str) {
        return super.mo21173a(str, null);
    }

    /* renamed from: c */
    private static byte[] m21172c(SecretKey secretKey, byte[] bArr) throws GeneralSecurityException {
        if (secretKey == null || bArr == null) {
            throw new NullPointerException("key or cipherText must not be null.");
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, 1, 17);
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKey, new IvParameterSpec(copyOfRange));
        return cipher.doFinal(bArr, copyOfRange.length + 1, (bArr.length - copyOfRange.length) - 1);
    }

    @Override // p048b.p052b.p053a.p054b.p055c.C1108f, p048b.p052b.p053a.p054b.p055c.InterfaceC1104b
    /* renamed from: a */
    public String mo21173a(String str, String str2) {
        if (this.f5274e == null) {
            Log.e("SecurityResourcesReader", "KEY is null return def directly");
            return str2;
        }
        synchronized (this.f5273d) {
            String str3 = this.f5272c.get(str);
            if (str3 != null) {
                return str3;
            }
            String m21174a = m21174a(str);
            if (m21174a == null) {
                return str2;
            }
            try {
                String str4 = new String(m21172c(this.f5274e, C1105c.m21183b(m21174a)), "UTF-8");
                this.f5272c.put(str, str4);
                return str4;
            } catch (UnsupportedEncodingException | GeneralSecurityException unused) {
                Log.e("SecurityResourcesReader", "Exception when reading the 'V' for 'Config'.");
                return str2;
            }
        }
    }
}

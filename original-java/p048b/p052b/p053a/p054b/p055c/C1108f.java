package p048b.p052b.p053a.p054b.p055c;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: b.b.a.b.c.f */
/* loaded from: classes.dex */
class C1108f implements InterfaceC1104b {

    /* renamed from: a */
    private final Context f5270a;

    /* renamed from: b */
    private final String f5271b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1108f(Context context, String str) {
        this.f5270a = context;
        this.f5271b = str;
    }

    /* renamed from: a */
    private static String m21176a(String str) {
        try {
            return "agc_" + C1105c.m21184a(m21175b(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    /* renamed from: b */
    private static byte[] m21175b(byte[] bArr) throws NoSuchAlgorithmException {
        return MessageDigest.getInstance("SHA-256").digest(bArr);
    }

    @Override // p048b.p052b.p053a.p054b.p055c.InterfaceC1104b
    /* renamed from: a */
    public String mo21173a(String str, String str2) {
        int identifier;
        String m21176a = m21176a(str);
        if (TextUtils.isEmpty(m21176a) || (identifier = this.f5270a.getResources().getIdentifier(m21176a, "string", this.f5271b)) == 0) {
            return str2;
        }
        try {
            return this.f5270a.getResources().getString(identifier);
        } catch (Resources.NotFoundException unused) {
            return str2;
        }
    }
}

package p048b.p052b.p053a.p054b.p055c;

import android.content.Context;
import java.util.Objects;
import p048b.p052b.p053a.p054b.AbstractC1101a;
import p048b.p052b.p053a.p054b.AbstractC1102b;

/* renamed from: b.b.a.b.c.a */
/* loaded from: classes.dex */
public class C1103a extends AbstractC1101a {

    /* renamed from: c */
    private final Context f5263c;

    /* renamed from: d */
    private final String f5264d;

    /* renamed from: e */
    private AbstractC1102b f5265e;

    /* renamed from: f */
    private volatile InterfaceC1104b f5266f;

    /* renamed from: g */
    private final Object f5267g = new Object();

    public C1103a(Context context, String str) {
        this.f5263c = context;
        this.f5264d = str;
    }

    /* renamed from: d */
    private static String m21186d(String str) {
        int i = 0;
        if (str.length() > 0) {
            while (str.charAt(i) == '/') {
                i++;
            }
        }
        return '/' + str.substring(i);
    }

    @Override // p048b.p052b.p053a.p054b.AbstractC1101a
    /* renamed from: c */
    public String mo21187c(String str) {
        return m21185e(str, null);
    }

    /* renamed from: e */
    public String m21185e(String str, String str2) {
        Objects.requireNonNull(str, "path must not be null.");
        if (this.f5266f == null) {
            synchronized (this.f5267g) {
                if (this.f5266f == null) {
                    AbstractC1102b abstractC1102b = this.f5265e;
                    if (abstractC1102b != null) {
                        this.f5266f = new C1106d(abstractC1102b.m21188b());
                        this.f5265e.m21189a();
                        throw null;
                    }
                    this.f5266f = new C1109g(this.f5263c, this.f5264d);
                }
            }
        }
        return this.f5266f.mo21173a(m21186d(str), str2);
    }
}

package p048b.p052b.p059c.p060a.p061a.p062a.p064e;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: b.b.c.a.a.a.e.b */
/* loaded from: classes2.dex */
public abstract class AbstractC1128b {
    /* renamed from: a */
    public static void m21128a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
                C1129c.m21123d("IOUtil", "closeSecure IOException");
            }
        }
    }

    /* renamed from: b */
    public static void m21127b(InputStream inputStream) {
        m21128a(inputStream);
    }
}

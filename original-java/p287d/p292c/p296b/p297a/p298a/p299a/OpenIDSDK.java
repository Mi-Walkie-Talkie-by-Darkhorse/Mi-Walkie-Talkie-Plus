package p287d.p292c.p296b.p297a.p298a.p299a;

import android.content.Context;
import p287d.p292c.p293a.p294a.p295a.IOpenID;

/* renamed from: d.c.b.a.a.a.a */
/* loaded from: classes3.dex */
public class OpenIDSDK {
    /* renamed from: a */
    public static void m833a(Context context) {
        IOpenID.C6534b.f23702b = IOpenID.C6535c.C6537b.f23709a.m835b(context.getApplicationContext());
        IOpenID.C6534b.f23701a = true;
    }

    /* renamed from: b */
    public static boolean m832b() {
        if (IOpenID.C6534b.f23701a) {
            return IOpenID.C6534b.f23702b;
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    /* renamed from: c */
    public static String m831c(Context context) {
        if (IOpenID.C6534b.f23701a) {
            return IOpenID.C6535c.C6537b.f23709a.m836a(context.getApplicationContext(), "OUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }
}

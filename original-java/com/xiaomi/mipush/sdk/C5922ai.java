package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6020bl;
import com.xiaomi.push.C6210h;
import com.xiaomi.push.C6253ik;
import com.xiaomi.push.C6254il;
import com.xiaomi.push.C6255im;
import com.xiaomi.push.C6259iq;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6265iw;
import com.xiaomi.push.C6266ix;
import com.xiaomi.push.C6267iy;
import com.xiaomi.push.C6273ja;
import com.xiaomi.push.C6275jc;
import com.xiaomi.push.C6277je;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.InterfaceC6279jg;
import java.nio.ByteBuffer;

/* renamed from: com.xiaomi.mipush.sdk.ai */
/* loaded from: classes2.dex */
public class C5922ai {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static <T extends InterfaceC6279jg<T, ?>> C6260ir m4018a(Context context, T t, EnumC6237hv enumC6237hv) {
        return m4017a(context, t, enumC6237hv, !enumC6237hv.equals(EnumC6237hv.Registration), context.getPackageName(), C5938b.m3923a(context).m3928a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static <T extends InterfaceC6279jg<T, ?>> C6260ir m4017a(Context context, T t, EnumC6237hv enumC6237hv, boolean z, String str, String str2) {
        return m4016a(context, t, enumC6237hv, z, str, str2, true);
    }

    /* renamed from: a */
    protected static <T extends InterfaceC6279jg<T, ?>> C6260ir m4016a(Context context, T t, EnumC6237hv enumC6237hv, boolean z, String str, String str2, boolean z2) {
        String str3;
        byte[] m1933a = C6278jf.m1933a(t);
        if (m1933a != null) {
            C6260ir c6260ir = new C6260ir();
            if (z) {
                String m3907d = C5938b.m3923a(context).m3907d();
                if (TextUtils.isEmpty(m3907d)) {
                    str3 = "regSecret is empty, return null";
                } else {
                    try {
                        m1933a = C6210h.m2665b(C6020bl.m3632a(m3907d), m1933a);
                    } catch (Exception unused) {
                        AbstractC5876b.m4138d("encryption error. ");
                    }
                }
            }
            C6253ik c6253ik = new C6253ik();
            c6253ik.f22331a = 5L;
            c6253ik.f22332a = "fakeid";
            c6260ir.m2226a(c6253ik);
            c6260ir.m2222a(ByteBuffer.wrap(m1933a));
            c6260ir.m2228a(enumC6237hv);
            c6260ir.m2216b(z2);
            c6260ir.m2217b(str);
            c6260ir.m2221a(z);
            c6260ir.m2223a(str2);
            return c6260ir;
        }
        str3 = "invoke convertThriftObjectToBytes method, return null.";
        AbstractC5876b.m4147a(str3);
        return null;
    }

    /* renamed from: a */
    public static InterfaceC6279jg m4019a(Context context, C6260ir c6260ir) {
        byte[] m2229a;
        if (c6260ir.m2218b()) {
            byte[] m3865a = C5946i.m3865a(context, c6260ir, EnumC5942e.ASSEMBLE_PUSH_FCM);
            if (m3865a == null) {
                m3865a = C6020bl.m3632a(C5938b.m3923a(context).m3907d());
            }
            try {
                m2229a = C6210h.m2666a(m3865a, c6260ir.m2229a());
            } catch (Exception e) {
                throw new C5959u("the aes decrypt failed.", e);
            }
        } else {
            m2229a = c6260ir.m2229a();
        }
        InterfaceC6279jg m4015a = m4015a(c6260ir.m2234a(), c6260ir.f22472b);
        if (m4015a != null) {
            C6278jf.m1932a(m4015a, m2229a);
        }
        return m4015a;
    }

    /* renamed from: a */
    private static InterfaceC6279jg m4015a(EnumC6237hv enumC6237hv, boolean z) {
        switch (C5923aj.f20892a[enumC6237hv.ordinal()]) {
            case 1:
                return new C6265iw();
            case 2:
                return new C6275jc();
            case 3:
                return new C6273ja();
            case 4:
                return new C6277je();
            case 5:
                return new C6267iy();
            case 6:
                return new C6254il();
            case 7:
                return new C6259iq();
            case 8:
                return new C6266ix();
            case 9:
                if (z) {
                    return new C6263iu();
                }
                C6255im c6255im = new C6255im();
                c6255im.m2305a(true);
                return c6255im;
            case 10:
                return new C6259iq();
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static <T extends InterfaceC6279jg<T, ?>> C6260ir m4014b(Context context, T t, EnumC6237hv enumC6237hv, boolean z, String str, String str2) {
        return m4016a(context, t, enumC6237hv, z, str, str2, false);
    }
}

package com.xiaomi.push.service;

import android.content.Context;
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

/* renamed from: com.xiaomi.push.service.cb */
/* loaded from: classes2.dex */
public class C6416cb {
    /* renamed from: a */
    public static InterfaceC6279jg m1396a(Context context, C6260ir c6260ir) {
        if (c6260ir.m2218b()) {
            return null;
        }
        byte[] m2229a = c6260ir.m2229a();
        InterfaceC6279jg m1395a = m1395a(c6260ir.m2234a(), c6260ir.f22472b);
        if (m1395a != null) {
            C6278jf.m1932a(m1395a, m2229a);
        }
        return m1395a;
    }

    /* renamed from: a */
    private static InterfaceC6279jg m1395a(EnumC6237hv enumC6237hv, boolean z) {
        switch (C6417cc.f23153a[enumC6237hv.ordinal()]) {
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
}

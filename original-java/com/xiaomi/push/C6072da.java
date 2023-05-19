package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.push.da */
/* loaded from: classes2.dex */
public class C6072da {
    /* renamed from: a */
    public static int m3406a(Context context, int i) {
        int m2601a = C6228ho.m2601a(context);
        if (-1 == m2601a) {
            return -1;
        }
        return (i * (m2601a == 0 ? 13 : 11)) / 10;
    }

    /* renamed from: a */
    public static int m3405a(EnumC6237hv enumC6237hv) {
        return C6127em.m3097a(enumC6237hv.m2566a());
    }

    /* renamed from: a */
    public static int m3404a(InterfaceC6279jg interfaceC6279jg, EnumC6237hv enumC6237hv) {
        int m3097a;
        switch (C6073db.f21230a[enumC6237hv.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                return C6127em.m3097a(enumC6237hv.m2566a());
            case 11:
                m3097a = C6127em.m3097a(enumC6237hv.m2566a());
                if (interfaceC6279jg != null) {
                    try {
                        if (interfaceC6279jg instanceof C6255im) {
                            String str = ((C6255im) interfaceC6279jg).f22398d;
                            if (!TextUtils.isEmpty(str) && C6127em.m3085a(C6127em.m3083a(str)) != -1) {
                                m3097a = C6127em.m3085a(C6127em.m3083a(str));
                                break;
                            }
                        } else if (interfaceC6279jg instanceof C6263iu) {
                            String str2 = ((C6263iu) interfaceC6279jg).f22505d;
                            if (!TextUtils.isEmpty(str2)) {
                                if (C6127em.m3085a(C6127em.m3083a(str2)) != -1) {
                                    m3097a = C6127em.m3085a(C6127em.m3083a(str2));
                                }
                                if (EnumC6248if.UploadTinyData.equals(C6127em.m3083a(str2))) {
                                    return -1;
                                }
                            }
                        }
                    } catch (Exception unused) {
                        AbstractC5876b.m4138d("PERF_ERROR : parse Notification type error");
                        return m3097a;
                    }
                }
                break;
            case 12:
                m3097a = C6127em.m3097a(enumC6237hv.m2566a());
                if (interfaceC6279jg != null) {
                    try {
                        if (interfaceC6279jg instanceof C6259iq) {
                            String m2246b = ((C6259iq) interfaceC6279jg).m2246b();
                            if (!TextUtils.isEmpty(m2246b) && EnumC6157fl.m2920a(m2246b) != -1) {
                                m3097a = EnumC6157fl.m2920a(m2246b);
                                break;
                            }
                        } else if (interfaceC6279jg instanceof C6258ip) {
                            String m2276a = ((C6258ip) interfaceC6279jg).m2276a();
                            if (!TextUtils.isEmpty(m2276a) && EnumC6157fl.m2920a(m2276a) != -1) {
                                return EnumC6157fl.m2920a(m2276a);
                            }
                        }
                    } catch (Exception unused2) {
                        AbstractC5876b.m4138d("PERF_ERROR : parse Command type error");
                        break;
                    }
                }
                break;
            default:
                return -1;
        }
        return m3097a;
    }

    /* renamed from: a */
    public static void m3403a(String str, Context context, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        int m3406a = m3406a(context, i2);
        if (i != C6127em.m3085a(EnumC6248if.UploadTinyData)) {
            C6129en.m3082a(context.getApplicationContext()).m3080a(str, i, 1L, m3406a);
        }
    }

    /* renamed from: a */
    public static void m3402a(String str, Context context, C6260ir c6260ir, int i) {
        EnumC6237hv m2234a;
        if (context == null || c6260ir == null || (m2234a = c6260ir.m2234a()) == null) {
            return;
        }
        int m3405a = m3405a(m2234a);
        if (i <= 0) {
            byte[] m1933a = C6278jf.m1933a(c6260ir);
            i = m1933a != null ? m1933a.length : 0;
        }
        m3403a(str, context, m3405a, i);
    }

    /* renamed from: a */
    public static void m3401a(String str, Context context, InterfaceC6279jg interfaceC6279jg, EnumC6237hv enumC6237hv, int i) {
        m3403a(str, context, m3404a(interfaceC6279jg, enumC6237hv), i);
    }

    /* renamed from: a */
    public static void m3400a(String str, Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        C6260ir c6260ir = new C6260ir();
        try {
            C6278jf.m1932a(c6260ir, bArr);
            m3402a(str, context, c6260ir, bArr.length);
        } catch (C6285jl unused) {
            AbstractC5876b.m4147a("fail to convert bytes to container");
        }
    }
}

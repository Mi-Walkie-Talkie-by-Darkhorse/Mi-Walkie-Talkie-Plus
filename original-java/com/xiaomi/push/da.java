package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
public class da {
    public static int a(Context context, int i) {
        int a2 = ho.a(context);
        if (-1 == a2) {
            return -1;
        }
        return (i * (a2 == 0 ? 13 : 11)) / 10;
    }

    public static int a(hv hvVar) {
        return em.a(hvVar.a());
    }

    public static int a(jg jgVar, hv hvVar) {
        int a2;
        switch (db.f8831a[hvVar.ordinal()]) {
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
                return em.a(hvVar.a());
            case 11:
                a2 = em.a(hvVar.a());
                if (jgVar != null) {
                    try {
                        if (jgVar instanceof im) {
                            String str = ((im) jgVar).f612d;
                            if (!TextUtils.isEmpty(str) && em.a(em.m232a(str)) != -1) {
                                a2 = em.a(em.m232a(str));
                                break;
                            }
                        } else if (jgVar instanceof iu) {
                            String str2 = ((iu) jgVar).f671d;
                            if (!TextUtils.isEmpty(str2)) {
                                if (em.a(em.m232a(str2)) != -1) {
                                    a2 = em.a(em.m232a(str2));
                                }
                                if (Cif.UploadTinyData.equals(em.m232a(str2))) {
                                    return -1;
                                }
                            }
                        }
                    } catch (Exception unused) {
                        b.d("PERF_ERROR : parse Notification type error");
                        return a2;
                    }
                }
                break;
            case 12:
                a2 = em.a(hvVar.a());
                if (jgVar != null) {
                    try {
                        if (jgVar instanceof iq) {
                            String b2 = ((iq) jgVar).b();
                            if (!TextUtils.isEmpty(b2) && fl.a(b2) != -1) {
                                a2 = fl.a(b2);
                                break;
                            }
                        } else if (jgVar instanceof ip) {
                            String a3 = ((ip) jgVar).a();
                            if (!TextUtils.isEmpty(a3) && fl.a(a3) != -1) {
                                return fl.a(a3);
                            }
                        }
                    } catch (Exception unused2) {
                        b.d("PERF_ERROR : parse Command type error");
                        break;
                    }
                }
                break;
            default:
                return -1;
        }
        return a2;
    }

    public static void a(String str, Context context, int i, int i2) {
        if (i > 0 && i2 > 0) {
            int a2 = a(context, i2);
            if (i != em.a(Cif.UploadTinyData)) {
                en.a(context.getApplicationContext()).a(str, i, 1L, a2);
            }
        }
    }

    public static void a(String str, Context context, ir irVar, int i) {
        hv a2;
        if (context != null && irVar != null && (a2 = irVar.a()) != null) {
            int a3 = a(a2);
            if (i <= 0) {
                byte[] a4 = jf.a(irVar);
                i = a4 != null ? a4.length : 0;
            }
            a(str, context, a3, i);
        }
    }

    public static void a(String str, Context context, jg jgVar, hv hvVar, int i) {
        a(str, context, a(jgVar, hvVar), i);
    }

    public static void a(String str, Context context, byte[] bArr) {
        if (context != null && bArr != null && bArr.length > 0) {
            ir irVar = new ir();
            try {
                jf.a(irVar, bArr);
                a(str, context, irVar, bArr.length);
            } catch (jl unused) {
                b.m1a("fail to convert bytes to container");
            }
        }
    }
}

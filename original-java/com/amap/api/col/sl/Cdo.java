package com.amap.api.col.sl;

import android.content.Context;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.amap.api.col.sl.do reason: invalid class name */
/* compiled from: BinaryRequest */
public abstract class Cdo extends ds {
    protected Context a;
    protected bz b;

    public abstract byte[] d();

    public abstract byte[] g();

    public boolean i() {
        return true;
    }

    public Cdo(Context context, bz bzVar) {
        if (context != null) {
            this.a = context.getApplicationContext();
        }
        this.b = bzVar;
    }

    public Map<String, String> b() {
        String f = bp.f(this.a);
        String a2 = bs.a();
        String a3 = bs.a(this.a, a2, "key=" + f);
        HashMap hashMap = new HashMap();
        hashMap.put(Key.TS, a2);
        hashMap.put("key", f);
        hashMap.put("scode", a3);
        return hashMap;
    }

    public final byte[] e() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(a());
            byteArrayOutputStream.write(l());
            byteArrayOutputStream.write(m());
            byteArrayOutputStream.write(n());
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                cj.a(th, "bre", "geb");
                return byteArray;
            }
        } catch (Throwable th2) {
            cj.a(th2, "bre", "geb");
        }
        return null;
    }

    private static byte[] a() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(ca.a("PANDORA$"));
            byteArrayOutputStream.write(new byte[]{1});
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                cj.a(th, "bre", "gbh");
                return byteArray;
            }
        } catch (Throwable th2) {
            cj.a(th2, "bre", "gbh");
        }
        return null;
    }

    private byte[] l() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(new byte[]{3});
            if (i()) {
                byte[] a2 = bs.a(this.a, k());
                byteArrayOutputStream.write(a(a2));
                byteArrayOutputStream.write(a2);
            } else {
                byteArrayOutputStream.write(new byte[]{0, 0});
            }
            byte[] a3 = ca.a(h());
            if (a3 == null || a3.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(a(a3));
                byteArrayOutputStream.write(a3);
            }
            byte[] a4 = ca.a(j());
            if (a4 == null || a4.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(a(a4));
                byteArrayOutputStream.write(a4);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                cj.a(th, "bre", "gred");
                return byteArray;
            }
        } catch (Throwable th2) {
            cj.a(th2, "bre", "gred");
        }
        return new byte[]{0};
    }

    public String j() {
        return String.format("platform=Android&sdkversion=%s&product=%s", new Object[]{this.b.c(), this.b.a()});
    }

    /* access modifiers changed from: protected */
    public String h() {
        return "2.1";
    }

    protected static byte[] a(byte[] bArr) {
        int length = bArr.length;
        return new byte[]{(byte) (length / 256), (byte) (length % 256)};
    }

    private byte[] m() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] d = d();
            if (d == null || d.length == 0) {
                byteArrayOutputStream.write(new byte[]{0});
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    cj.a(th, "bre", "grrd");
                    return byteArray;
                }
            } else {
                byteArrayOutputStream.write(new byte[]{1});
                byteArrayOutputStream.write(a(d));
                byteArrayOutputStream.write(d);
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray2;
                } catch (Throwable th2) {
                    cj.a(th2, "bre", "grrd");
                    return byteArray2;
                }
            }
        } catch (Throwable th3) {
            cj.a(th3, "bre", "grrd");
        }
        return new byte[]{0};
    }

    private byte[] n() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] g = g();
            if (g == null || g.length == 0) {
                byteArrayOutputStream.write(new byte[]{0});
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    cj.a(th, "bre", "gred");
                    return byteArray;
                }
            } else {
                byteArrayOutputStream.write(new byte[]{1});
                Context context = this.a;
                byte[] a2 = bv.a(g);
                byteArrayOutputStream.write(a(a2));
                byteArrayOutputStream.write(a2);
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray2;
                } catch (Throwable th2) {
                    cj.a(th2, "bre", "gred");
                    return byteArray2;
                }
            }
        } catch (Throwable th3) {
            cj.a(th3, "bre", "gred");
        }
        return new byte[]{0};
    }

    /* access modifiers changed from: protected */
    public boolean k() {
        return false;
    }
}

package com.amap.api.mapcore.util;

import android.content.Context;
import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BinaryRequest */
public abstract class hq extends hv {
    protected Context a;
    protected fx b;

    public abstract byte[] e();

    public abstract byte[] f();

    public boolean i() {
        return true;
    }

    public hq(Context context, fx fxVar) {
        if (context != null) {
            this.a = context.getApplicationContext();
        }
        this.b = fxVar;
    }

    public Map<String, String> b() {
        String f = fo.f(this.a);
        String a2 = fr.a();
        String a3 = fr.a(this.a, a2, "key=" + f);
        HashMap hashMap = new HashMap();
        hashMap.put(Key.TS, a2);
        hashMap.put("key", f);
        hashMap.put("scode", a3);
        return hashMap;
    }

    public final byte[] g() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(d());
            byteArrayOutputStream.write(j());
            byteArrayOutputStream.write(o());
            byteArrayOutputStream.write(p());
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                gc.a(th, "bre", "geb");
                return byteArray;
            }
        } catch (Throwable th2) {
            gc.a(th2, "bre", "geb");
        }
        return null;
    }

    private byte[] d() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(fy.a("PANDORA$"));
            byteArrayOutputStream.write(new byte[]{1});
            byteArrayOutputStream.write(new byte[]{0});
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                gc.a(th, "bre", "gbh");
                return byteArray;
            }
        } catch (Throwable th2) {
            gc.a(th2, "bre", "gbh");
        }
        return null;
    }

    public byte[] j() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(new byte[]{3});
            if (i()) {
                byte[] a2 = fr.a(this.a, l());
                byteArrayOutputStream.write(a(a2));
                byteArrayOutputStream.write(a2);
            } else {
                byteArrayOutputStream.write(new byte[]{0, 0});
            }
            byte[] a3 = fy.a(h());
            if (a3 == null || a3.length <= 0) {
                byteArrayOutputStream.write(new byte[]{0, 0});
            } else {
                byteArrayOutputStream.write(a(a3));
                byteArrayOutputStream.write(a3);
            }
            byte[] a4 = fy.a(k());
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
                gc.a(th, "bre", "gred");
                return byteArray;
            }
        } catch (Throwable th2) {
            gc.a(th2, "bre", "gred");
        }
        return new byte[]{0};
    }

    public String k() {
        return String.format("platform=Android&sdkversion=%s&product=%s", new Object[]{this.b.c(), this.b.a()});
    }

    /* access modifiers changed from: protected */
    public String h() {
        return "2.1";
    }

    /* access modifiers changed from: protected */
    public byte[] a(byte[] bArr) {
        int length = bArr.length;
        return new byte[]{(byte) (length / 256), (byte) (length % 256)};
    }

    private byte[] o() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] e = e();
            if (e == null || e.length == 0) {
                byteArrayOutputStream.write(new byte[]{0});
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    gc.a(th, "bre", "grrd");
                    return byteArray;
                }
            } else {
                byteArrayOutputStream.write(new byte[]{1});
                byteArrayOutputStream.write(a(e));
                byteArrayOutputStream.write(e);
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray2;
                } catch (Throwable th2) {
                    gc.a(th2, "bre", "grrd");
                    return byteArray2;
                }
            }
        } catch (Throwable th3) {
            gc.a(th3, "bre", "grrd");
        }
        return new byte[]{0};
    }

    private byte[] p() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] f = f();
            if (f == null || f.length == 0) {
                byteArrayOutputStream.write(new byte[]{0});
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th) {
                    gc.a(th, "bre", "gred");
                    return byteArray;
                }
            } else {
                byteArrayOutputStream.write(new byte[]{1});
                byte[] a2 = fr.a(this.a, f);
                byteArrayOutputStream.write(a(a2));
                byteArrayOutputStream.write(a2);
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    return byteArray2;
                } catch (Throwable th2) {
                    gc.a(th2, "bre", "gred");
                    return byteArray2;
                }
            }
        } catch (Throwable th3) {
            gc.a(th3, "bre", "gred");
        }
        return new byte[]{0};
    }

    /* access modifiers changed from: protected */
    public boolean l() {
        return false;
    }
}

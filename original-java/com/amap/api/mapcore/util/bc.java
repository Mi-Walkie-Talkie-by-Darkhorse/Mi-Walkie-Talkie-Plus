package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.List;

/* compiled from: OfflineDBOperation */
public class bc {
    private static volatile bc a;
    private static gl b;
    private Context c;

    public static bc a(Context context) {
        if (a == null) {
            synchronized (bc.class) {
                if (a == null) {
                    a = new bc(context);
                }
            }
        }
        return a;
    }

    private bc(Context context) {
        this.c = context;
        b = b(this.c);
    }

    private gl b(Context context) {
        try {
            return new gl(context, bb.a());
        } catch (Throwable th) {
            gf.b(th, "OfflineDB", "getDB");
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private boolean b() {
        if (b == null) {
            b = b(this.c);
        }
        if (b == null) {
            return false;
        }
        return true;
    }

    public ArrayList<ax> a() {
        ArrayList arrayList = new ArrayList();
        if (!b()) {
            return arrayList;
        }
        for (ax add : b.b("", ax.class)) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public synchronized ax a(String str) {
        ax axVar = null;
        synchronized (this) {
            if (b()) {
                List b2 = b.b(ax.e(str), ax.class);
                if (b2.size() > 0) {
                    axVar = (ax) b2.get(0);
                }
            }
        }
        return axVar;
    }

    public synchronized void a(ax axVar) {
        if (b()) {
            b.a((Object) axVar, ax.f(axVar.h()));
            a(axVar.f(), axVar.b());
        }
    }

    private void a(String str, String str2) {
        if (str2 != null && str2.length() > 0) {
            String a2 = az.a(str);
            if (b.b(a2, az.class).size() > 0) {
                b.a(a2, az.class);
            }
            String[] split = str2.split(";");
            ArrayList arrayList = new ArrayList();
            for (String azVar : split) {
                arrayList.add(new az(str, azVar));
            }
            b.a((List<T>) arrayList);
        }
    }

    public synchronized List<String> b(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (b()) {
            arrayList.addAll(a(b.b(az.a(str), az.class)));
        }
        return arrayList;
    }

    private List<String> a(List<az> list) {
        ArrayList arrayList = new ArrayList();
        if (list.size() > 0) {
            for (az a2 : list) {
                arrayList.add(a2.a());
            }
        }
        return arrayList;
    }

    public synchronized void c(String str) {
        if (b()) {
            b.a(ba.e(str), ba.class);
            b.a(az.a(str), az.class);
            b.a(ay.a(str), ay.class);
        }
    }

    public synchronized void b(ax axVar) {
        if (b()) {
            b.a(ba.f(axVar.h()), ba.class);
            b.a(az.a(axVar.f()), az.class);
            b.a(ay.a(axVar.f()), ay.class);
        }
    }

    public void a(String str, int i, long j, long j2, long j3) {
        if (b()) {
            a(str, i, j, new long[]{j2, 0, 0, 0, 0}, new long[]{j3, 0, 0, 0, 0});
        }
    }

    public synchronized void a(String str, int i, long j, long[] jArr, long[] jArr2) {
        if (b()) {
            b.a((Object) new ay(str, j, i, jArr[0], jArr2[0]), ay.a(str));
        }
    }

    public synchronized String d(String str) {
        String str2;
        str2 = null;
        if (b()) {
            List b2 = b.b(ba.f(str), ba.class);
            if (b2.size() > 0) {
                str2 = ((ba) b2.get(0)).e();
            }
        }
        return str2;
    }
}

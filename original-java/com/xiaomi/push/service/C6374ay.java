package com.xiaomi.push.service;

import android.util.Pair;
import com.xiaomi.push.C5973af;
import com.xiaomi.push.C6247ie;
import com.xiaomi.push.C6249ig;
import com.xiaomi.push.C6261is;
import com.xiaomi.push.C6262it;
import com.xiaomi.push.EnumC6244ib;
import com.xiaomi.push.EnumC6245ic;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.service.ay */
/* loaded from: classes2.dex */
public class C6374ay {
    /* renamed from: a */
    public static int m1522a(C6372ax c6372ax, EnumC6244ib enumC6244ib) {
        return c6372ax.m1527a(enumC6244ib, C6375az.f23011a[enumC6244ib.ordinal()] != 1 ? 0 : 1);
    }

    /* renamed from: a */
    private static List<Pair<Integer, Object>> m1519a(List<C6249ig> list, boolean z) {
        if (C5973af.m3791a(list)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (C6249ig c6249ig : list) {
            int m2456a = c6249ig.m2456a();
            EnumC6245ic m2478a = EnumC6245ic.m2478a(c6249ig.m2448b());
            if (m2478a != null) {
                if (z && c6249ig.f22249a) {
                    arrayList.add(new Pair(Integer.valueOf(m2456a), null));
                } else {
                    int i = C6375az.f23012b[m2478a.ordinal()];
                    arrayList.add(i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : new Pair(Integer.valueOf(m2456a), Boolean.valueOf(c6249ig.m2436g())) : new Pair(Integer.valueOf(m2456a), c6249ig.m2454a()) : new Pair(Integer.valueOf(m2456a), Long.valueOf(c6249ig.m2455a())) : new Pair(Integer.valueOf(m2456a), Integer.valueOf(c6249ig.m2445c())));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m1521a(C6372ax c6372ax, C6261is c6261is) {
        c6372ax.m1525a(m1519a(c6261is.m2207a(), true));
        c6372ax.m1523b();
    }

    /* renamed from: a */
    public static void m1520a(C6372ax c6372ax, C6262it c6262it) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (C6247ie c6247ie : c6262it.m2202a()) {
            arrayList.add(new Pair<>(c6247ie.m2465a(), Integer.valueOf(c6247ie.m2466a())));
            List<Pair<Integer, Object>> m1519a = m1519a(c6247ie.f22175a, false);
            if (!C5973af.m3791a(m1519a)) {
                arrayList2.addAll(m1519a);
            }
        }
        c6372ax.m1524a(arrayList, arrayList2);
        c6372ax.m1523b();
    }
}

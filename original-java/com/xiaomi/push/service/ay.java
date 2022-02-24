package com.xiaomi.push.service;

import android.util.Pair;
import com.xiaomi.push.af;
import com.xiaomi.push.ib;
import com.xiaomi.push.ic;
import com.xiaomi.push.ie;
import com.xiaomi.push.ig;
import com.xiaomi.push.is;
import com.xiaomi.push.it;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ay {
    public static int a(ax axVar, ib ibVar) {
        int i = 1;
        if (az.f9261a[ibVar.ordinal()] != 1) {
            i = 0;
        }
        return axVar.a(ibVar, i);
    }

    private static List<Pair<Integer, Object>> a(List<ig> list, boolean z) {
        if (af.a(list)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (ig igVar : list) {
            int a2 = igVar.a();
            ic a3 = ic.a(igVar.b());
            if (a3 != null) {
                if (!z || !igVar.f533a) {
                    int i = az.f9262b[a3.ordinal()];
                    arrayList.add(i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : new Pair(Integer.valueOf(a2), Boolean.valueOf(igVar.g())) : new Pair(Integer.valueOf(a2), igVar.m382a()) : new Pair(Integer.valueOf(a2), Long.valueOf(igVar.m381a())) : new Pair(Integer.valueOf(a2), Integer.valueOf(igVar.c())));
                } else {
                    arrayList.add(new Pair(Integer.valueOf(a2), null));
                }
            }
        }
        return arrayList;
    }

    public static void a(ax axVar, is isVar) {
        axVar.a(a(isVar.a(), true));
        axVar.b();
    }

    public static void a(ax axVar, it itVar) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ie ieVar : itVar.a()) {
            arrayList.add(new Pair<>(ieVar.m377a(), Integer.valueOf(ieVar.a())));
            List<Pair<Integer, Object>> a2 = a(ieVar.f525a, false);
            if (!af.a(a2)) {
                arrayList2.addAll(a2);
            }
        }
        axVar.a(arrayList, arrayList2);
        axVar.b();
    }
}

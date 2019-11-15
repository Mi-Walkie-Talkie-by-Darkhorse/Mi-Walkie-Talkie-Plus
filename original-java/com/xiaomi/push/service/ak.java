package com.xiaomi.push.service;

import android.util.Pair;
import com.xiaomi.channel.commonutils.misc.b;
import com.xiaomi.xmpush.thrift.ad;
import com.xiaomi.xmpush.thrift.ae;
import com.xiaomi.xmpush.thrift.g;
import com.xiaomi.xmpush.thrift.h;
import com.xiaomi.xmpush.thrift.o;
import com.xiaomi.xmpush.thrift.q;
import java.util.ArrayList;
import java.util.List;

public class ak {
    public static int a(aj ajVar, g gVar) {
        int i = 0;
        String a = a(gVar);
        switch (al.a[gVar.ordinal()]) {
            case 1:
                i = 1;
                break;
        }
        return ajVar.a.getInt(a, i);
    }

    private static String a(g gVar) {
        return "oc_version_" + gVar.a();
    }

    private static List<Pair<Integer, Object>> a(List<q> list, boolean z) {
        Pair pair;
        if (b.a(list)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (q qVar : list) {
            int a = qVar.a();
            h a2 = h.a(qVar.c());
            if (a2 != null) {
                if (!z || !qVar.c) {
                    switch (al.b[a2.ordinal()]) {
                        case 1:
                            pair = new Pair(Integer.valueOf(a), Integer.valueOf(qVar.f()));
                            break;
                        case 2:
                            pair = new Pair(Integer.valueOf(a), Long.valueOf(qVar.h()));
                            break;
                        case 3:
                            pair = new Pair(Integer.valueOf(a), qVar.j());
                            break;
                        case 4:
                            pair = new Pair(Integer.valueOf(a), Boolean.valueOf(qVar.l()));
                            break;
                        default:
                            pair = null;
                            break;
                    }
                    arrayList.add(pair);
                } else {
                    arrayList.add(new Pair(Integer.valueOf(a), null));
                }
            }
        }
        return arrayList;
    }

    public static void a(aj ajVar, ad adVar) {
        ajVar.b(a(adVar.a(), true));
    }

    public static void a(aj ajVar, ae aeVar) {
        for (o oVar : aeVar.a()) {
            if (oVar.a() > a(ajVar, oVar.d())) {
                a(ajVar, oVar.d(), oVar.a());
                ajVar.a(a(oVar.b, false));
            }
        }
    }

    public static void a(aj ajVar, g gVar, int i) {
        ajVar.a.edit().putInt(a(gVar), i).commit();
    }
}

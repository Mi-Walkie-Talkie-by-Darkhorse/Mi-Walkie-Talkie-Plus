package de.greenrobot.event;

import java.util.ArrayList;
import java.util.List;

/* compiled from: PendingPost */
final class g {
    private static final List<g> d = new ArrayList();
    Object a;
    l b;
    g c;

    private g(Object obj, l lVar) {
        this.a = obj;
        this.b = lVar;
    }

    static g a(l lVar, Object obj) {
        synchronized (d) {
            int size = d.size();
            if (size <= 0) {
                return new g(obj, lVar);
            }
            g gVar = (g) d.remove(size - 1);
            gVar.a = obj;
            gVar.b = lVar;
            gVar.c = null;
            return gVar;
        }
    }

    static void a(g gVar) {
        gVar.a = null;
        gVar.b = null;
        gVar.c = null;
        synchronized (d) {
            if (d.size() < 10000) {
                d.add(gVar);
            }
        }
    }
}

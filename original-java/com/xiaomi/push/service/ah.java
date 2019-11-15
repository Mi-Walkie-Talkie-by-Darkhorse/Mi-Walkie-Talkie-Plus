package com.xiaomi.push.service;

import com.xiaomi.stats.h;
import java.util.Iterator;
import java.util.List;

final class ah implements Runnable {
    final /* synthetic */ List a;
    final /* synthetic */ boolean b;

    ah(List list, boolean z) {
        this.a = list;
        this.b = z;
    }

    public void run() {
        boolean a2 = ag.b("www.baidu.com:80");
        Iterator it = this.a.iterator();
        while (true) {
            boolean z = a2;
            if (!it.hasNext()) {
                a2 = z;
                break;
            }
            a2 = z || ag.b((String) it.next());
            if (a2 && !this.b) {
                break;
            }
        }
        h.a(a2 ? 1 : 2);
    }
}

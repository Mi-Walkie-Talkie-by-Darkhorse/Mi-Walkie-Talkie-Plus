package com.xiaomi.push.service;

import com.xiaomi.push.C6170fw;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.an */
/* loaded from: classes2.dex */
public class RunnableC6357an implements Runnable {

    /* renamed from: a */
    final /* synthetic */ List f22976a;

    /* renamed from: a */
    final /* synthetic */ boolean f22977a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6357an(List list, boolean z) {
        this.f22976a = list;
        this.f22977a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean m1628b;
        boolean m1628b2;
        m1628b = C6356am.m1628b("www.baidu.com:80");
        Iterator it2 = this.f22976a.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            String str = (String) it2.next();
            if (!m1628b) {
                m1628b2 = C6356am.m1628b(str);
                if (!m1628b2) {
                    m1628b = false;
                    if (!m1628b && !this.f22977a) {
                        break;
                    }
                }
            }
            m1628b = true;
            if (!m1628b) {
            }
        }
        C6170fw.m2854a(m1628b ? 1 : 2);
    }
}

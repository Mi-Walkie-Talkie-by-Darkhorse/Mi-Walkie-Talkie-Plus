package com.xiaomi.push.service;

import com.xiaomi.push.fw;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class an implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f9242a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ boolean f920a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(List list, boolean z) {
        this.f9242a = list;
        this.f920a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean b2;
        int i;
        boolean b3;
        b2 = am.b("www.baidu.com:80");
        Iterator it = this.f9242a.iterator();
        while (true) {
            i = 1;
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            if (!b2) {
                b3 = am.b(str);
                if (!b3) {
                    b2 = false;
                    if (!b2 && !this.f920a) {
                        break;
                    }
                }
            }
            b2 = true;
            if (!b2) {
            }
        }
        if (!b2) {
            i = 2;
        }
        fw.a(i);
    }
}

package com.xiaomi.push;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class cw extends cq {

    /* renamed from: a  reason: collision with root package name */
    cq f8827a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ cu f187a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ cq f8828b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cw(cu cuVar, String str, cq cqVar) {
        super(str);
        this.f187a = cuVar;
        this.f8828b = cqVar;
        cq cqVar2 = this.f8828b;
        this.f8827a = cqVar2;
        ((cq) this).f173b = ((cq) this).f173b;
        if (cqVar2 != null) {
            this.f = cqVar2.f;
        }
    }

    @Override // com.xiaomi.push.cq
    public synchronized ArrayList<String> a(boolean z) {
        ArrayList<String> arrayList;
        arrayList = new ArrayList<>();
        if (this.f8827a != null) {
            arrayList.addAll(this.f8827a.a(true));
        }
        synchronized (cu.f8824b) {
            cq cqVar = cu.f8824b.get(((cq) this).f173b);
            if (cqVar != null) {
                Iterator<String> it = cqVar.a(true).iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    if (arrayList.indexOf(next) == -1) {
                        arrayList.add(next);
                    }
                }
                arrayList.remove(((cq) this).f173b);
                arrayList.add(((cq) this).f173b);
            }
        }
        return arrayList;
    }

    @Override // com.xiaomi.push.cq
    public synchronized void a(String str, cp cpVar) {
        if (this.f8827a != null) {
            this.f8827a.a(str, cpVar);
        }
    }

    @Override // com.xiaomi.push.cq
    public boolean b() {
        return false;
    }
}

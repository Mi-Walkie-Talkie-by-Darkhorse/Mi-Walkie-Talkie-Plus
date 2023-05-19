package com.xiaomi.push;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.cw */
/* loaded from: classes2.dex */
public class C6066cw extends C6058cq {

    /* renamed from: a */
    C6058cq f21222a;

    /* renamed from: a */
    final /* synthetic */ C6062cu f21223a;

    /* renamed from: b */
    final /* synthetic */ C6058cq f21224b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6066cw(C6062cu c6062cu, String str, C6058cq c6058cq) {
        super(str);
        this.f21223a = c6062cu;
        this.f21224b = c6058cq;
        this.f21222a = c6058cq;
        ((C6058cq) this).f21193b = ((C6058cq) this).f21193b;
        if (c6058cq != null) {
            this.f21197f = c6058cq.f21197f;
        }
    }

    @Override // com.xiaomi.push.C6058cq
    /* renamed from: a */
    public synchronized ArrayList<String> mo3430a(boolean z) {
        ArrayList<String> arrayList;
        arrayList = new ArrayList<>();
        C6058cq c6058cq = this.f21222a;
        if (c6058cq != null) {
            arrayList.addAll(c6058cq.mo3430a(true));
        }
        Map<String, C6058cq> map = C6062cu.f21210b;
        synchronized (map) {
            C6058cq c6058cq2 = map.get(((C6058cq) this).f21193b);
            if (c6058cq2 != null) {
                Iterator<String> it2 = c6058cq2.mo3430a(true).iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    if (arrayList.indexOf(next) == -1) {
                        arrayList.add(next);
                    }
                }
                arrayList.remove(((C6058cq) this).f21193b);
                arrayList.add(((C6058cq) this).f21193b);
            }
        }
        return arrayList;
    }

    @Override // com.xiaomi.push.C6058cq
    /* renamed from: a */
    public synchronized void mo3431a(String str, C6057cp c6057cp) {
        C6058cq c6058cq = this.f21222a;
        if (c6058cq != null) {
            c6058cq.mo3431a(str, c6057cp);
        }
    }

    @Override // com.xiaomi.push.C6058cq
    /* renamed from: b */
    public boolean mo3429b() {
        return false;
    }
}

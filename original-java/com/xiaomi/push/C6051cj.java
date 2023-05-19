package com.xiaomi.push;

import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6045ci;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.cj */
/* loaded from: classes2.dex */
public class C6051cj extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    final /* synthetic */ C6045ci f21178a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6051cj(C6045ci c6045ci) {
        this.f21178a = c6045ci;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "100957";
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList<C6045ci.AbstractRunnableC6046a> arrayList6;
        arrayList = this.f21178a.f21156a;
        synchronized (arrayList) {
            arrayList2 = this.f21178a.f21156a;
            if (arrayList2.size() > 0) {
                arrayList3 = this.f21178a.f21156a;
                if (arrayList3.size() > 1) {
                    C6045ci c6045ci = this.f21178a;
                    arrayList6 = c6045ci.f21156a;
                    c6045ci.m3513a(arrayList6);
                } else {
                    C6045ci c6045ci2 = this.f21178a;
                    arrayList4 = c6045ci2.f21156a;
                    c6045ci2.m3512b((C6045ci.AbstractRunnableC6046a) arrayList4.get(0));
                }
                arrayList5 = this.f21178a.f21156a;
                arrayList5.clear();
                System.gc();
            }
        }
    }
}

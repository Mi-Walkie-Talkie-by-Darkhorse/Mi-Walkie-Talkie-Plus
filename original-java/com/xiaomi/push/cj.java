package com.xiaomi.push;

import com.xiaomi.push.ak;
import com.xiaomi.push.ci;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class cj extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ci f8812a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cj(ci ciVar) {
        this.f8812a = ciVar;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "100957";
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList<ci.a> arrayList6;
        arrayList = this.f8812a.f154a;
        synchronized (arrayList) {
            arrayList2 = this.f8812a.f154a;
            if (arrayList2.size() > 0) {
                arrayList3 = this.f8812a.f154a;
                if (arrayList3.size() > 1) {
                    ci ciVar = this.f8812a;
                    arrayList6 = this.f8812a.f154a;
                    ciVar.a(arrayList6);
                } else {
                    ci ciVar2 = this.f8812a;
                    arrayList5 = this.f8812a.f154a;
                    ciVar2.b((ci.a) arrayList5.get(0));
                }
                arrayList4 = this.f8812a.f154a;
                arrayList4.clear();
                System.gc();
            }
        }
    }
}

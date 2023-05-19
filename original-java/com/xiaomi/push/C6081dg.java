package com.xiaomi.push;

import com.xiaomi.push.C5983an;
import com.xiaomi.push.C6076de;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.dg */
/* loaded from: classes2.dex */
public class C6081dg extends C5983an.AbstractC5985b {

    /* renamed from: a */
    C5983an.AbstractC5985b f21261a;

    /* renamed from: a */
    final /* synthetic */ C6076de f21262a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6081dg(C6076de c6076de) {
        this.f21262a = c6076de;
    }

    @Override // com.xiaomi.push.C5983an.AbstractC5985b
    /* renamed from: b */
    public void mo1431b() {
        C6076de.C6078b c6078b = (C6076de.C6078b) this.f21262a.f21242a.peek();
        if (c6078b == null || !c6078b.mo3380a()) {
            return;
        }
        if (this.f21262a.f21242a.remove(c6078b)) {
            this.f21261a = c6078b;
        }
        C5983an.AbstractC5985b abstractC5985b = this.f21261a;
        if (abstractC5985b != null) {
            abstractC5985b.mo1431b();
        }
    }

    @Override // com.xiaomi.push.C5983an.AbstractC5985b
    /* renamed from: c */
    public void mo1430c() {
        C5983an.AbstractC5985b abstractC5985b = this.f21261a;
        if (abstractC5985b != null) {
            abstractC5985b.mo1430c();
        }
    }
}

package com.xiaomi.push;

import com.xiaomi.push.an;
import com.xiaomi.push.de;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class dg extends an.b {

    /* renamed from: a  reason: collision with root package name */
    an.b f8844a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ de f209a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dg(de deVar) {
        this.f209a = deVar;
    }

    @Override // com.xiaomi.push.an.b
    /* renamed from: b */
    public void mo161b() {
        de.b bVar = (de.b) this.f209a.f197a.peek();
        if (bVar != null && bVar.a()) {
            if (this.f209a.f197a.remove(bVar)) {
                this.f8844a = bVar;
            }
            an.b bVar2 = this.f8844a;
            if (bVar2 != null) {
                bVar2.mo161b();
            }
        }
    }

    @Override // com.xiaomi.push.an.b
    /* renamed from: c */
    public void mo162c() {
        an.b bVar = this.f8844a;
        if (bVar != null) {
            bVar.mo162c();
        }
    }
}

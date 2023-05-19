package com.xiaomi.push;

import com.xiaomi.push.C5978ak;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.am */
/* loaded from: classes2.dex */
public class C5982am extends C5978ak.RunnableC5980b {

    /* renamed from: a */
    final /* synthetic */ C5978ak f21010a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5982am(C5978ak c5978ak, C5978ak.AbstractRunnableC5979a abstractRunnableC5979a) {
        super(abstractRunnableC5979a);
        this.f21010a = c5978ak;
    }

    @Override // com.xiaomi.push.C5978ak.RunnableC5980b
    /* renamed from: b */
    void mo3769b() {
        Object obj;
        Map map;
        obj = this.f21010a.f21003a;
        synchronized (obj) {
            map = this.f21010a.f21004a;
            map.remove(super.f21006a.mo1397a());
        }
    }
}

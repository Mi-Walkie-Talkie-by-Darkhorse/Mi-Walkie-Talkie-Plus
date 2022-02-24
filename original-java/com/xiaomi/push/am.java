package com.xiaomi.push;

import com.xiaomi.push.ak;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class am extends ak.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ak f8740a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public am(ak akVar, ak.a aVar) {
        super(aVar);
        this.f8740a = akVar;
    }

    @Override // com.xiaomi.push.ak.b
    void b() {
        Object obj;
        Map map;
        obj = this.f8740a.f86a;
        synchronized (obj) {
            map = this.f8740a.f87a;
            map.remove(super.f8738a.mo168a());
        }
    }
}

package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.an;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class hp extends an.b {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f9048a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hp(Context context) {
        this.f9048a = context;
    }

    @Override // com.xiaomi.push.an.b
    /* renamed from: b */
    public void mo161b() {
        Object obj;
        ArrayList arrayList;
        List list;
        List list2;
        obj = ho.f474a;
        synchronized (obj) {
            list = ho.f476a;
            arrayList = new ArrayList(list);
            list2 = ho.f476a;
            list2.clear();
        }
        ho.b(this.f9048a, arrayList);
    }
}

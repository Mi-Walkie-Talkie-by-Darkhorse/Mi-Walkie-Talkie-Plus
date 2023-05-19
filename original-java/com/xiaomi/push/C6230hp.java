package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.C5983an;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.hp */
/* loaded from: classes2.dex */
public class C6230hp extends C5983an.AbstractC5985b {

    /* renamed from: a */
    final /* synthetic */ Context f21904a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6230hp(Context context) {
        this.f21904a = context;
    }

    @Override // com.xiaomi.push.C5983an.AbstractC5985b
    /* renamed from: b */
    public void mo1431b() {
        Object obj;
        ArrayList arrayList;
        List list;
        List list2;
        obj = C6228ho.f21895a;
        synchronized (obj) {
            list = C6228ho.f21897a;
            arrayList = new ArrayList(list);
            list2 = C6228ho.f21897a;
            list2.clear();
        }
        C6228ho.m2590b(this.f21904a, arrayList);
    }
}

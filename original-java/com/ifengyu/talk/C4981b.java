package com.ifengyu.talk;

import com.shanlitech.p245et.model.Member;
import java.util.Comparator;

/* compiled from: lambda */
/* renamed from: com.ifengyu.talk.b */
/* loaded from: classes2.dex */
public final /* synthetic */ class C4981b implements Comparator {

    /* renamed from: a */
    public static final /* synthetic */ C4981b f16560a = new C4981b();

    private /* synthetic */ C4981b() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compare;
        compare = Integer.compare(((Member) obj).getInGroupTimeSecond(), ((Member) obj2).getInGroupTimeSecond());
        return compare;
    }
}

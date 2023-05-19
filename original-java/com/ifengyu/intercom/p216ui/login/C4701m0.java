package com.ifengyu.intercom.p216ui.login;

import com.ifengyu.library.utils.C4975r;
import io.reactivex.functions.Function3;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.ui.login.m0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C4701m0 implements Function3 {

    /* renamed from: a */
    public static final /* synthetic */ C4701m0 f15472a = new C4701m0();

    private /* synthetic */ C4701m0() {
    }

    @Override // io.reactivex.functions.Function3
    public final Object apply(Object obj, Object obj2, Object obj3) {
        Boolean valueOf;
        CharSequence charSequence = (CharSequence) obj;
        CharSequence charSequence2 = (CharSequence) obj2;
        CharSequence charSequence3 = (CharSequence) obj3;
        valueOf = Boolean.valueOf(!C4975r.m8620b(r1) && r1.length() >= 8 && !C4975r.m8620b(r2) && r2.length() >= 8 && !C4975r.m8620b(r3) && r3.length() >= 8);
        return valueOf;
    }
}

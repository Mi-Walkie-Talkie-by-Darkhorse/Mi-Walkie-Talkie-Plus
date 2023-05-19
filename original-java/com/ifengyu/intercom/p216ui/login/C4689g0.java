package com.ifengyu.intercom.p216ui.login;

import android.text.TextUtils;
import io.reactivex.functions.BiFunction;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.ui.login.g0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C4689g0 implements BiFunction {

    /* renamed from: a */
    public static final /* synthetic */ C4689g0 f15459a = new C4689g0();

    private /* synthetic */ C4689g0() {
    }

    @Override // io.reactivex.functions.BiFunction
    public final Object apply(Object obj, Object obj2) {
        Boolean valueOf;
        CharSequence charSequence = (CharSequence) obj;
        CharSequence charSequence2 = (CharSequence) obj2;
        valueOf = Boolean.valueOf(!TextUtils.isEmpty(r1) && r1.length() >= 8 && !TextUtils.isEmpty(r2) && r2.length() >= 8);
        return valueOf;
    }
}

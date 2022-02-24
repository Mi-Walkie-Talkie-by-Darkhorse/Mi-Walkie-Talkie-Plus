package com.ifengyu.intercom.lite.login;

import android.text.TextUtils;
import io.reactivex.functions.BiFunction;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class u implements BiFunction {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ u f5707a = new u();

    private /* synthetic */ u() {
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

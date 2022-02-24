package com.ifengyu.intercom.lite.login;

import com.ifengyu.library.a.l;
import io.reactivex.functions.Function3;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Function3 {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ f f5692a = new f();

    private /* synthetic */ f() {
    }

    @Override // io.reactivex.functions.Function3
    public final Object apply(Object obj, Object obj2, Object obj3) {
        Boolean valueOf;
        CharSequence charSequence = (CharSequence) obj;
        CharSequence charSequence2 = (CharSequence) obj2;
        CharSequence charSequence3 = (CharSequence) obj3;
        valueOf = Boolean.valueOf(!l.b(r1) && r1.length() >= 8 && !l.b(r2) && r2.length() >= 8 && !l.b(r3) && r3.length() >= 8);
        return valueOf;
    }
}

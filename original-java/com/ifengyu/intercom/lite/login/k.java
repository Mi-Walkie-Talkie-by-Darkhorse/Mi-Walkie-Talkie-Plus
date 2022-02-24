package com.ifengyu.intercom.lite.login;

import com.xiaomi.account.openauth.XiaomiOAuthResults;
import io.reactivex.functions.Function;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class k implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ k f5697a = new k();

    private /* synthetic */ k() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        return LoginFragment.a((XiaomiOAuthResults) obj);
    }
}

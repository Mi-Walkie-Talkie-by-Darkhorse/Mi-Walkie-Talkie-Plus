package com.ifengyu.intercom.lite.login;

import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import io.reactivex.functions.Function;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Function {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a f5687a = new a();

    private /* synthetic */ a() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        return (XiaomiOAuthResults) ((XiaomiOAuthFuture) obj).getResult();
    }
}

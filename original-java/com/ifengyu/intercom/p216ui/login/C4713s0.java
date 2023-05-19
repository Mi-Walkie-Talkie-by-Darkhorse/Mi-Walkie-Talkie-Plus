package com.ifengyu.intercom.p216ui.login;

import com.xiaomi.account.openauth.XiaomiOAuthFuture;
import com.xiaomi.account.openauth.XiaomiOAuthResults;
import io.reactivex.functions.Function;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.ui.login.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C4713s0 implements Function {

    /* renamed from: a */
    public static final /* synthetic */ C4713s0 f15484a = new C4713s0();

    private /* synthetic */ C4713s0() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        return (XiaomiOAuthResults) ((XiaomiOAuthFuture) obj).getResult();
    }
}

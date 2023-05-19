package com.ifengyu.intercom.p216ui.login;

import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.library.account.UserInfo;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;

/* compiled from: lambda */
/* renamed from: com.ifengyu.intercom.ui.login.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C4712s implements Function {

    /* renamed from: a */
    public static final /* synthetic */ C4712s f15483a = new C4712s();

    private /* synthetic */ C4712s() {
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        ObservableSource m11396K;
        UserInfo userInfo = (UserInfo) obj;
        m11396K = AppServiceClient.m11355a().m11396K("app");
        return m11396K;
    }
}

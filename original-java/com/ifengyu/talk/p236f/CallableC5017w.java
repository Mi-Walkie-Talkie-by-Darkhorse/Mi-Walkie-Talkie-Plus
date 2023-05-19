package com.ifengyu.talk.p236f;

import com.ifengyu.talk.database.TalkDatabase;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.concurrent.Callable;

/* compiled from: lambda */
/* renamed from: com.ifengyu.talk.f.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class CallableC5017w implements Callable {

    /* renamed from: a */
    public static final /* synthetic */ CallableC5017w f16646a = new CallableC5017w();

    private /* synthetic */ CallableC5017w() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ObservableSource just;
        just = Observable.just(TalkDatabase.m8505D().mo8502C().mo8477c());
        return just;
    }
}

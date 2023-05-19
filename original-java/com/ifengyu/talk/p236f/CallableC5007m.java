package com.ifengyu.talk.p236f;

import com.ifengyu.talk.database.TalkDatabase;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.concurrent.Callable;

/* compiled from: lambda */
/* renamed from: com.ifengyu.talk.f.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class CallableC5007m implements Callable {

    /* renamed from: a */
    public static final /* synthetic */ CallableC5007m f16635a = new CallableC5007m();

    private /* synthetic */ CallableC5007m() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        ObservableSource just;
        just = Observable.just(TalkDatabase.m8505D().mo8501F().mo8470b());
        return just;
    }
}

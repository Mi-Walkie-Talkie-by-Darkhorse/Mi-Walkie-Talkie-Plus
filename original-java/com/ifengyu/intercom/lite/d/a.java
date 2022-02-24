package com.ifengyu.intercom.lite.d;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements ObservableTransformer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ a f5366a = new a();

    private /* synthetic */ a() {
    }

    @Override // io.reactivex.ObservableTransformer
    public final ObservableSource apply(Observable observable) {
        ObservableSource observeOn;
        observeOn = observable.subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        return observeOn;
    }
}

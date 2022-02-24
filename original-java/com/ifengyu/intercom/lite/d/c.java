package com.ifengyu.intercom.lite.d;

import com.ifengyu.intercom.lite.http.entity.HttpResultFunction;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements ObservableTransformer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ c f5368a = new c();

    private /* synthetic */ c() {
    }

    @Override // io.reactivex.ObservableTransformer
    public final ObservableSource apply(Observable observable) {
        ObservableSource observeOn;
        observeOn = observable.map(new HttpResultFunction()).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
        return observeOn;
    }
}

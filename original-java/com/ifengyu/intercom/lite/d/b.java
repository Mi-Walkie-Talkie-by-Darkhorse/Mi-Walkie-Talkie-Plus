package com.ifengyu.intercom.lite.d;

import com.ifengyu.intercom.lite.http.entity.HttpResultFunction;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;

/* compiled from: lambda */
/* loaded from: classes2.dex */
public final /* synthetic */ class b implements ObservableTransformer {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ b f5367a = new b();

    private /* synthetic */ b() {
    }

    @Override // io.reactivex.ObservableTransformer
    public final ObservableSource apply(Observable observable) {
        ObservableSource map;
        map = observable.map(new HttpResultFunction());
        return map;
    }
}

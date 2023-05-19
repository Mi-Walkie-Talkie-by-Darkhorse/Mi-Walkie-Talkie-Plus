package com.ifengyu.library.p229b;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.annotations.NonNull;
import io.reactivex.schedulers.Schedulers;

/* renamed from: com.ifengyu.library.b.c */
/* loaded from: classes2.dex */
public class Transformer {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Transformer.java */
    /* renamed from: com.ifengyu.library.b.c$a */
    /* loaded from: classes2.dex */
    public class C4965a implements ObservableTransformer<T, T> {
        C4965a() {
        }

        @Override // io.reactivex.ObservableTransformer
        @NonNull
        public ObservableSource<T> apply(@NonNull Observable<T> observable) {
            return observable.subscribeOn(Schedulers.m800io()).observeOn(AndroidSchedulers.mainThread());
        }
    }

    /* renamed from: a */
    public static <T> ObservableTransformer<T, T> m8717a() {
        return new C4965a();
    }
}

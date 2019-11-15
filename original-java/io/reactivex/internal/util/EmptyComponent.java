package io.reactivex.internal.util;

import io.reactivex.b;
import io.reactivex.d.a;
import io.reactivex.f;
import io.reactivex.h;
import io.reactivex.q;
import io.reactivex.t;
import org.a.c;

public enum EmptyComponent implements b, io.reactivex.disposables.b, f<Object>, h<Object>, q<Object>, t<Object>, c {
    INSTANCE;

    public static <T> q<T> b() {
        return INSTANCE;
    }

    public void dispose() {
    }

    public boolean isDisposed() {
        return true;
    }

    public void a(long j) {
    }

    public void a() {
    }

    public void onSubscribe(io.reactivex.disposables.b bVar) {
        bVar.dispose();
    }

    public void a(c cVar) {
        cVar.a();
    }

    public void onNext(Object obj) {
    }

    public void onError(Throwable th) {
        a.a(th);
    }

    public void onComplete() {
    }

    public void a(Object obj) {
    }
}

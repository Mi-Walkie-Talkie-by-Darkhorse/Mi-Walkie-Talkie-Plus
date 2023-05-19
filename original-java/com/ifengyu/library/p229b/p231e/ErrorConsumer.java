package com.ifengyu.library.p229b.p231e;

import com.ifengyu.library.http.exception.NewApiException;
import io.reactivex.functions.Consumer;

/* renamed from: com.ifengyu.library.b.e.a */
/* loaded from: classes2.dex */
public abstract class ErrorConsumer implements Consumer<Throwable> {
    /* renamed from: a */
    public abstract void mo8387a(NewApiException newApiException);

    @Override // io.reactivex.functions.Consumer
    /* renamed from: b */
    public void accept(Throwable th) throws Exception {
        mo8387a(NewApiException.m8702b(th));
    }
}

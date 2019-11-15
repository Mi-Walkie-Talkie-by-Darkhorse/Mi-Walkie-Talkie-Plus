package io.reactivex.internal.operators.single;

import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.s;
import io.reactivex.t;
import io.reactivex.u;

/* compiled from: SingleMap */
public final class a<T, R> extends s<R> {
    final u<? extends T> a;
    final g<? super T, ? extends R> b;

    /* renamed from: io.reactivex.internal.operators.single.a$a reason: collision with other inner class name */
    /* compiled from: SingleMap */
    static final class C0089a<T, R> implements t<T> {
        final t<? super R> a;
        final g<? super T, ? extends R> b;

        C0089a(t<? super R> tVar, g<? super T, ? extends R> gVar) {
            this.a = tVar;
            this.b = gVar;
        }

        public void onSubscribe(b bVar) {
            this.a.onSubscribe(bVar);
        }

        public void a(T t) {
            try {
                this.a.a(io.reactivex.internal.functions.a.a(this.b.apply(t), "The mapper function returned a null value."));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                onError(th);
            }
        }

        public void onError(Throwable th) {
            this.a.onError(th);
        }
    }

    public a(u<? extends T> uVar, g<? super T, ? extends R> gVar) {
        this.a = uVar;
        this.b = gVar;
    }

    /* access modifiers changed from: protected */
    public void b(t<? super R> tVar) {
        this.a.a(new C0089a(tVar, this.b));
    }
}

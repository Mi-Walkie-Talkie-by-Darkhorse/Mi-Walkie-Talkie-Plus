package rx;

import rx.b.c;
import rx.d.d;
import rx.exceptions.OnErrorNotImplementedException;
import rx.internal.operators.OperatorObserveOn;
import rx.internal.util.e;

/* compiled from: Observable */
public class a<T> {
    /* access modifiers changed from: private */
    public static final rx.d.b b = d.a().c();
    final C0098a<T> a;

    /* renamed from: rx.a$a reason: collision with other inner class name */
    /* compiled from: Observable */
    public interface C0098a<T> extends rx.b.b<e<? super T>> {
    }

    /* compiled from: Observable */
    public interface b<R, T> extends c<e<? super R>, e<? super T>> {
    }

    protected a(C0098a<T> aVar) {
        this.a = aVar;
    }

    public static final <T> a<T> a(C0098a<T> aVar) {
        return new a<>(b.a(aVar));
    }

    public final <R> a<R> a(final b<? extends R, ? super T> bVar) {
        return new a<>(new C0098a<R>() {
            /* renamed from: a */
            public void call(e<? super R> eVar) {
                e eVar2;
                try {
                    eVar2 = (e) a.b.a(bVar).a(eVar);
                    eVar2.onStart();
                    a.this.a.call(eVar2);
                } catch (Throwable th) {
                    rx.exceptions.a.a(th);
                    eVar.onError(th);
                }
            }
        });
    }

    public static final <T> a<T> a(T t) {
        return e.b(t);
    }

    public final a<a<T>> a() {
        return a((T) this);
    }

    public final a<T> a(d dVar) {
        if (this instanceof e) {
            return ((e) this).c(dVar);
        }
        return a((b<? extends R, ? super T>) new OperatorObserveOn<Object,Object>(dVar));
    }

    public final f b() {
        return b((e<? super T>) new e<T>() {
            public final void onCompleted() {
            }

            public final void onError(Throwable th) {
                throw new OnErrorNotImplementedException(th);
            }

            public final void onNext(T t) {
            }
        });
    }

    public final f a(e<? super T> eVar) {
        try {
            eVar.onStart();
            b.a(this, this.a).call(eVar);
            return b.a((f) eVar);
        } catch (Throwable th) {
            rx.exceptions.a.a(th);
            RuntimeException runtimeException = new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th);
            b.a((Throwable) runtimeException);
            throw runtimeException;
        }
    }

    public final f b(e<? super T> eVar) {
        return a(eVar, this);
    }

    private static <T> f a(e<? super T> eVar, a<T> aVar) {
        if (eVar == null) {
            throw new IllegalArgumentException("observer can not be null");
        } else if (aVar.a == null) {
            throw new IllegalStateException("onSubscribe function can not be null.");
        } else {
            eVar.onStart();
            if (!(eVar instanceof rx.c.a)) {
                eVar = new rx.c.a<>(eVar);
            }
            try {
                b.a(aVar, aVar.a).call(eVar);
                return b.a((f) eVar);
            } catch (Throwable th) {
                rx.exceptions.a.a(th);
                RuntimeException runtimeException = new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th);
                b.a((Throwable) runtimeException);
                throw runtimeException;
            }
        }
    }

    public final a<T> b(d dVar) {
        if (this instanceof e) {
            return ((e) this).c(dVar);
        }
        return a().a((b<? extends R, ? super T>) new rx.internal.operators.c<Object,Object>(dVar));
    }
}

package rx.internal.operators;

import rx.a;
import rx.a.b;
import rx.d;
import rx.e;

/* compiled from: OperatorSubscribeOn */
public class c<T> implements b<T, a<T>> {
    private final d a;

    public c(d dVar) {
        this.a = dVar;
    }

    public e<? super a<T>> a(final e<? super T> eVar) {
        final d.a a2 = this.a.a();
        eVar.add(a2);
        return new e<a<T>>(eVar) {
            public void onCompleted() {
            }

            public void onError(Throwable th) {
                eVar.onError(th);
            }

            /* renamed from: a */
            public void onNext(final a<T> aVar) {
                a2.a(new rx.b.a() {
                    public void a() {
                        final Thread currentThread = Thread.currentThread();
                        aVar.a((e<? super T>) new e<T>(eVar) {
                            public void onCompleted() {
                                eVar.onCompleted();
                            }

                            public void onError(Throwable th) {
                                eVar.onError(th);
                            }

                            public void onNext(T t) {
                                eVar.onNext(t);
                            }

                            public void setProducer(final rx.c cVar) {
                                eVar.setProducer(new rx.c() {
                                    public void a(final long j) {
                                        if (Thread.currentThread() == currentThread) {
                                            cVar.a(j);
                                        } else {
                                            a2.a(new rx.b.a() {
                                                public void a() {
                                                    cVar.a(j);
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        });
                    }
                });
            }
        };
    }
}

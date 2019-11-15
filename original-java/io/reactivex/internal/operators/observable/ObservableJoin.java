package io.reactivex.internal.operators.observable;

import io.reactivex.b.c;
import io.reactivex.b.g;
import io.reactivex.disposables.b;
import io.reactivex.internal.queue.a;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends a<TLeft, R> {
    final o<? extends TRight> b;
    final g<? super TLeft, ? extends o<TLeftEnd>> c;
    final g<? super TRight, ? extends o<TRightEnd>> d;
    final c<? super TLeft, ? super TRight, ? extends R> e;

    static final class JoinDisposable<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements b, a {
        static final Integer n = Integer.valueOf(1);
        static final Integer o = Integer.valueOf(2);
        static final Integer p = Integer.valueOf(3);
        static final Integer q = Integer.valueOf(4);
        private static final long serialVersionUID = -6071216598687999801L;
        final q<? super R> a;
        final a<Object> b = new a<>(k.bufferSize());
        final io.reactivex.disposables.a c = new io.reactivex.disposables.a();
        final Map<Integer, TLeft> d = new LinkedHashMap();
        final Map<Integer, TRight> e = new LinkedHashMap();
        final AtomicReference<Throwable> f = new AtomicReference<>();
        final g<? super TLeft, ? extends o<TLeftEnd>> g;
        final g<? super TRight, ? extends o<TRightEnd>> h;
        final c<? super TLeft, ? super TRight, ? extends R> i;
        final AtomicInteger j;
        int k;
        int l;
        volatile boolean m;

        JoinDisposable(q<? super R> qVar, g<? super TLeft, ? extends o<TLeftEnd>> gVar, g<? super TRight, ? extends o<TRightEnd>> gVar2, c<? super TLeft, ? super TRight, ? extends R> cVar) {
            this.a = qVar;
            this.g = gVar;
            this.h = gVar2;
            this.i = cVar;
            this.j = new AtomicInteger(2);
        }

        public void dispose() {
            if (!this.m) {
                this.m = true;
                a();
                if (getAndIncrement() == 0) {
                    this.b.c();
                }
            }
        }

        public boolean isDisposed() {
            return this.m;
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            this.c.dispose();
        }

        /* access modifiers changed from: 0000 */
        public void a(q<?> qVar) {
            Throwable a2 = ExceptionHelper.a(this.f);
            this.d.clear();
            this.e.clear();
            qVar.onError(a2);
        }

        /* access modifiers changed from: 0000 */
        public void a(Throwable th, q<?> qVar, a<?> aVar) {
            io.reactivex.exceptions.a.b(th);
            ExceptionHelper.a(this.f, th);
            aVar.c();
            a();
            a(qVar);
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            boolean z;
            if (getAndIncrement() == 0) {
                a<Object> aVar = this.b;
                q<? super R> qVar = this.a;
                int i2 = 1;
                while (!this.m) {
                    if (((Throwable) this.f.get()) != null) {
                        aVar.c();
                        a();
                        a(qVar);
                        return;
                    }
                    boolean z2 = this.j.get() == 0;
                    Integer num = (Integer) aVar.e_();
                    if (num == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z2 && z) {
                        this.d.clear();
                        this.e.clear();
                        this.c.dispose();
                        qVar.onComplete();
                        return;
                    } else if (z) {
                        int addAndGet = addAndGet(-i2);
                        if (addAndGet != 0) {
                            i2 = addAndGet;
                        } else {
                            return;
                        }
                    } else {
                        Object e_ = aVar.e_();
                        if (num == n) {
                            int i3 = this.k;
                            this.k = i3 + 1;
                            this.d.put(Integer.valueOf(i3), e_);
                            try {
                                o oVar = (o) io.reactivex.internal.functions.a.a(this.g.apply(e_), "The leftEnd returned a null ObservableSource");
                                LeftRightEndObserver leftRightEndObserver = new LeftRightEndObserver(this, true, i3);
                                this.c.a((b) leftRightEndObserver);
                                oVar.subscribe(leftRightEndObserver);
                                if (((Throwable) this.f.get()) != null) {
                                    aVar.c();
                                    a();
                                    a(qVar);
                                    return;
                                }
                                for (Object a2 : this.e.values()) {
                                    try {
                                        qVar.onNext(io.reactivex.internal.functions.a.a(this.i.a(e_, a2), "The resultSelector returned a null value"));
                                    } catch (Throwable th) {
                                        a(th, qVar, aVar);
                                        return;
                                    }
                                }
                            } catch (Throwable th2) {
                                a(th2, qVar, aVar);
                                return;
                            }
                        } else if (num == o) {
                            int i4 = this.l;
                            this.l = i4 + 1;
                            this.e.put(Integer.valueOf(i4), e_);
                            try {
                                o oVar2 = (o) io.reactivex.internal.functions.a.a(this.h.apply(e_), "The rightEnd returned a null ObservableSource");
                                LeftRightEndObserver leftRightEndObserver2 = new LeftRightEndObserver(this, false, i4);
                                this.c.a((b) leftRightEndObserver2);
                                oVar2.subscribe(leftRightEndObserver2);
                                if (((Throwable) this.f.get()) != null) {
                                    aVar.c();
                                    a();
                                    a(qVar);
                                    return;
                                }
                                for (Object a3 : this.d.values()) {
                                    try {
                                        qVar.onNext(io.reactivex.internal.functions.a.a(this.i.a(a3, e_), "The resultSelector returned a null value"));
                                    } catch (Throwable th3) {
                                        a(th3, qVar, aVar);
                                        return;
                                    }
                                }
                            } catch (Throwable th4) {
                                a(th4, qVar, aVar);
                                return;
                            }
                        } else if (num == p) {
                            LeftRightEndObserver leftRightEndObserver3 = (LeftRightEndObserver) e_;
                            this.d.remove(Integer.valueOf(leftRightEndObserver3.c));
                            this.c.b(leftRightEndObserver3);
                        } else {
                            LeftRightEndObserver leftRightEndObserver4 = (LeftRightEndObserver) e_;
                            this.e.remove(Integer.valueOf(leftRightEndObserver4.c));
                            this.c.b(leftRightEndObserver4);
                        }
                    }
                }
                aVar.c();
            }
        }

        public void a(Throwable th) {
            if (ExceptionHelper.a(this.f, th)) {
                this.j.decrementAndGet();
                b();
                return;
            }
            io.reactivex.d.a.a(th);
        }

        public void a(LeftRightObserver leftRightObserver) {
            this.c.c(leftRightObserver);
            this.j.decrementAndGet();
            b();
        }

        public void a(boolean z, Object obj) {
            synchronized (this) {
                this.b.a(z ? n : o, obj);
            }
            b();
        }

        public void a(boolean z, LeftRightEndObserver leftRightEndObserver) {
            synchronized (this) {
                this.b.a(z ? p : q, leftRightEndObserver);
            }
            b();
        }

        public void b(Throwable th) {
            if (ExceptionHelper.a(this.f, th)) {
                b();
            } else {
                io.reactivex.d.a.a(th);
            }
        }
    }

    public ObservableJoin(o<TLeft> oVar, o<? extends TRight> oVar2, g<? super TLeft, ? extends o<TLeftEnd>> gVar, g<? super TRight, ? extends o<TRightEnd>> gVar2, c<? super TLeft, ? super TRight, ? extends R> cVar) {
        super(oVar);
        this.b = oVar2;
        this.c = gVar;
        this.d = gVar2;
        this.e = cVar;
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super R> qVar) {
        JoinDisposable joinDisposable = new JoinDisposable(qVar, this.c, this.d, this.e);
        qVar.onSubscribe(joinDisposable);
        LeftRightObserver leftRightObserver = new LeftRightObserver(joinDisposable, true);
        joinDisposable.c.a((b) leftRightObserver);
        LeftRightObserver leftRightObserver2 = new LeftRightObserver(joinDisposable, false);
        joinDisposable.c.a((b) leftRightObserver2);
        this.a.subscribe(leftRightObserver);
        this.b.subscribe(leftRightObserver2);
    }
}

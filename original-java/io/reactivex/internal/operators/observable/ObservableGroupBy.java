package io.reactivex.internal.operators.observable;

import io.reactivex.b.g;
import io.reactivex.c.b;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.o;
import io.reactivex.q;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableGroupBy<T, K, V> extends a<T, b<K, V>> {
    final g<? super T, ? extends K> b;
    final g<? super T, ? extends V> c;
    final int d;
    final boolean e;

    public static final class GroupByObserver<T, K, V> extends AtomicInteger implements io.reactivex.disposables.b, q<T> {
        static final Object g = new Object();
        private static final long serialVersionUID = -3688291656102519502L;
        final q<? super b<K, V>> a;
        final g<? super T, ? extends K> b;
        final g<? super T, ? extends V> c;
        final int d;
        final boolean e;
        final Map<Object, a<K, V>> f;
        io.reactivex.disposables.b h;
        final AtomicBoolean i = new AtomicBoolean();

        public GroupByObserver(q<? super b<K, V>> qVar, g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2, int i2, boolean z) {
            this.a = qVar;
            this.b = gVar;
            this.c = gVar2;
            this.d = i2;
            this.e = z;
            this.f = new ConcurrentHashMap();
            lazySet(1);
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.a(this.h, bVar)) {
                this.h = bVar;
                this.a.onSubscribe(this);
            }
        }

        public void onNext(T t) {
            try {
                Object apply = this.b.apply(t);
                Object obj = apply != null ? apply : g;
                a aVar = (a) this.f.get(obj);
                if (aVar == null) {
                    if (!this.i.get()) {
                        aVar = a.a(apply, this.d, this, this.e);
                        this.f.put(obj, aVar);
                        getAndIncrement();
                        this.a.onNext(aVar);
                    } else {
                        return;
                    }
                }
                try {
                    aVar.a(io.reactivex.internal.functions.a.a(this.c.apply(t), "The value supplied is null"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.h.dispose();
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.h.dispose();
                onError(th2);
            }
        }

        public void onError(Throwable th) {
            ArrayList<a> arrayList = new ArrayList<>(this.f.values());
            this.f.clear();
            for (a a2 : arrayList) {
                a2.a(th);
            }
            this.a.onError(th);
        }

        public void onComplete() {
            ArrayList<a> arrayList = new ArrayList<>(this.f.values());
            this.f.clear();
            for (a a2 : arrayList) {
                a2.a();
            }
            this.a.onComplete();
        }

        public void dispose() {
            if (this.i.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.h.dispose();
            }
        }

        public boolean isDisposed() {
            return this.i.get();
        }

        public void a(K k) {
            if (k == null) {
                k = g;
            }
            this.f.remove(k);
            if (decrementAndGet() == 0) {
                this.h.dispose();
            }
        }
    }

    static final class State<T, K> extends AtomicInteger implements io.reactivex.disposables.b, o<T> {
        private static final long serialVersionUID = -3852313036005250360L;
        final K a;
        final io.reactivex.internal.queue.a<T> b;
        final GroupByObserver<?, K, T> c;
        final boolean d;
        volatile boolean e;
        Throwable f;
        final AtomicBoolean g = new AtomicBoolean();
        final AtomicBoolean h = new AtomicBoolean();
        final AtomicReference<q<? super T>> i = new AtomicReference<>();

        State(int i2, GroupByObserver<?, K, T> groupByObserver, K k, boolean z) {
            this.b = new io.reactivex.internal.queue.a<>(i2);
            this.c = groupByObserver;
            this.a = k;
            this.d = z;
        }

        public void dispose() {
            if (this.g.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.i.lazySet(null);
                this.c.a(this.a);
            }
        }

        public boolean isDisposed() {
            return this.g.get();
        }

        public void subscribe(q<? super T> qVar) {
            if (this.h.compareAndSet(false, true)) {
                qVar.onSubscribe(this);
                this.i.lazySet(qVar);
                if (this.g.get()) {
                    this.i.lazySet(null);
                } else {
                    b();
                }
            } else {
                EmptyDisposable.a((Throwable) new IllegalStateException("Only one Observer allowed!"), qVar);
            }
        }

        public void a(T t) {
            this.b.a(t);
            b();
        }

        public void a(Throwable th) {
            this.f = th;
            this.e = true;
            b();
        }

        public void a() {
            this.e = true;
            b();
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            if (getAndIncrement() == 0) {
                io.reactivex.internal.queue.a<T> aVar = this.b;
                boolean z = this.d;
                q qVar = (q) this.i.get();
                int i2 = 1;
                while (true) {
                    if (qVar != null) {
                        while (true) {
                            boolean z2 = this.e;
                            Object e_ = aVar.e_();
                            boolean z3 = e_ == null;
                            if (a(z2, z3, qVar, z)) {
                                return;
                            }
                            if (z3) {
                                break;
                            }
                            qVar.onNext(e_);
                        }
                    }
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                    if (qVar == null) {
                        qVar = (q) this.i.get();
                    }
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public boolean a(boolean z, boolean z2, q<? super T> qVar, boolean z3) {
            if (this.g.get()) {
                this.b.c();
                this.c.a(this.a);
                this.i.lazySet(null);
                return true;
            }
            if (z) {
                if (!z3) {
                    Throwable th = this.f;
                    if (th != null) {
                        this.b.c();
                        this.i.lazySet(null);
                        qVar.onError(th);
                        return true;
                    } else if (z2) {
                        this.i.lazySet(null);
                        qVar.onComplete();
                        return true;
                    }
                } else if (z2) {
                    Throwable th2 = this.f;
                    this.i.lazySet(null);
                    if (th2 != null) {
                        qVar.onError(th2);
                        return true;
                    }
                    qVar.onComplete();
                    return true;
                }
            }
            return false;
        }
    }

    static final class a<K, T> extends b<K, T> {
        final State<T, K> a;

        public static <T, K> a<K, T> a(K k, int i, GroupByObserver<?, K, T> groupByObserver, boolean z) {
            return new a<>(k, new State(i, groupByObserver, k, z));
        }

        protected a(K k, State<T, K> state) {
            super(k);
            this.a = state;
        }

        /* access modifiers changed from: protected */
        public void subscribeActual(q<? super T> qVar) {
            this.a.subscribe(qVar);
        }

        public void a(T t) {
            this.a.a(t);
        }

        public void a(Throwable th) {
            this.a.a(th);
        }

        public void a() {
            this.a.a();
        }
    }

    public ObservableGroupBy(o<T> oVar, g<? super T, ? extends K> gVar, g<? super T, ? extends V> gVar2, int i, boolean z) {
        super(oVar);
        this.b = gVar;
        this.c = gVar2;
        this.d = i;
        this.e = z;
    }

    public void subscribeActual(q<? super b<K, V>> qVar) {
        this.a.subscribe(new GroupByObserver(qVar, this.b, this.c, this.d, this.e));
    }
}

package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.k;
import io.reactivex.o;
import io.reactivex.q;
import io.reactivex.r;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class ObservableReplay<T> extends io.reactivex.c.a<T> implements io.reactivex.disposables.b {
    static final a e = new i();
    final o<T> a;
    final AtomicReference<ReplayObserver<T>> b;
    final a<T> c;
    final o<T> d;

    static abstract class BoundedReplayBuffer<T> extends AtomicReference<Node> implements e<T> {
        private static final long serialVersionUID = 2346567790059478686L;
        Node a;
        int b;

        /* access modifiers changed from: 0000 */
        public abstract void c();

        BoundedReplayBuffer() {
            Node node = new Node(null);
            this.a = node;
            set(node);
        }

        /* access modifiers changed from: 0000 */
        public final void a(Node node) {
            this.a.set(node);
            this.a = node;
            this.b++;
        }

        /* access modifiers changed from: 0000 */
        public final void a() {
            Node node = (Node) ((Node) get()).get();
            this.b--;
            b(node);
        }

        /* access modifiers changed from: 0000 */
        public final void b(Node node) {
            set(node);
        }

        public final void a(T t) {
            a(new Node(b(NotificationLite.a(t))));
            c();
        }

        public final void a(Throwable th) {
            a(new Node(b(NotificationLite.a(th))));
            d();
        }

        public final void b() {
            a(new Node(b(NotificationLite.a())));
            d();
        }

        /* JADX WARNING: Code restructure failed: missing block: B:14:0x003a, code lost:
            r5.c = r2;
            r0 = r5.addAndGet(-r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0041, code lost:
            if (r0 == 0) goto L_0x0006;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void a(io.reactivex.internal.operators.observable.ObservableReplay.InnerDisposable<T> r5) {
            /*
                r4 = this;
                int r0 = r5.getAndIncrement()
                if (r0 == 0) goto L_0x0007
            L_0x0006:
                return
            L_0x0007:
                r0 = 1
                r1 = r0
            L_0x0009:
                java.lang.Object r0 = r5.a()
                io.reactivex.internal.operators.observable.ObservableReplay$Node r0 = (io.reactivex.internal.operators.observable.ObservableReplay.Node) r0
                if (r0 != 0) goto L_0x0017
                io.reactivex.internal.operators.observable.ObservableReplay$Node r0 = r4.e()
                r5.c = r0
            L_0x0017:
                r2 = r0
            L_0x0018:
                boolean r0 = r5.isDisposed()
                if (r0 != 0) goto L_0x0006
                java.lang.Object r0 = r2.get()
                io.reactivex.internal.operators.observable.ObservableReplay$Node r0 = (io.reactivex.internal.operators.observable.ObservableReplay.Node) r0
                if (r0 == 0) goto L_0x003a
                java.lang.Object r2 = r0.a
                java.lang.Object r2 = r4.c(r2)
                io.reactivex.q<? super T> r3 = r5.b
                boolean r2 = io.reactivex.internal.util.NotificationLite.a(r2, r3)
                if (r2 == 0) goto L_0x0038
                r0 = 0
                r5.c = r0
                goto L_0x0006
            L_0x0038:
                r2 = r0
                goto L_0x0018
            L_0x003a:
                r5.c = r2
                int r0 = -r1
                int r0 = r5.addAndGet(r0)
                if (r0 == 0) goto L_0x0006
                r1 = r0
                goto L_0x0009
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableReplay.BoundedReplayBuffer.a(io.reactivex.internal.operators.observable.ObservableReplay$InnerDisposable):void");
        }

        /* access modifiers changed from: 0000 */
        public Object b(Object obj) {
            return obj;
        }

        /* access modifiers changed from: 0000 */
        public Object c(Object obj) {
            return obj;
        }

        /* access modifiers changed from: 0000 */
        public void d() {
        }

        /* access modifiers changed from: 0000 */
        public Node e() {
            return (Node) get();
        }
    }

    static final class InnerDisposable<T> extends AtomicInteger implements io.reactivex.disposables.b {
        private static final long serialVersionUID = 2728361546769921047L;
        final ReplayObserver<T> a;
        final q<? super T> b;
        Object c;
        volatile boolean d;

        InnerDisposable(ReplayObserver<T> replayObserver, q<? super T> qVar) {
            this.a = replayObserver;
            this.b = qVar;
        }

        public boolean isDisposed() {
            return this.d;
        }

        public void dispose() {
            if (!this.d) {
                this.d = true;
                this.a.b(this);
            }
        }

        /* access modifiers changed from: 0000 */
        public <U> U a() {
            return this.c;
        }
    }

    static final class Node extends AtomicReference<Node> {
        private static final long serialVersionUID = 245354315435971818L;
        final Object a;

        Node(Object obj) {
            this.a = obj;
        }
    }

    static final class ReplayObserver<T> extends AtomicReference<io.reactivex.disposables.b> implements io.reactivex.disposables.b, q<T> {
        static final InnerDisposable[] c = new InnerDisposable[0];
        static final InnerDisposable[] d = new InnerDisposable[0];
        private static final long serialVersionUID = -533785617179540163L;
        final e<T> a;
        boolean b;
        final AtomicReference<InnerDisposable[]> e = new AtomicReference<>(c);
        final AtomicBoolean f = new AtomicBoolean();

        ReplayObserver(e<T> eVar) {
            this.a = eVar;
        }

        public boolean isDisposed() {
            return this.e.get() == d;
        }

        public void dispose() {
            this.e.set(d);
            DisposableHelper.a((AtomicReference<io.reactivex.disposables.b>) this);
        }

        /* access modifiers changed from: 0000 */
        public boolean a(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = (InnerDisposable[]) this.e.get();
                if (innerDisposableArr == d) {
                    return false;
                }
                int length = innerDisposableArr.length;
                innerDisposableArr2 = new InnerDisposable[(length + 1)];
                System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, length);
                innerDisposableArr2[length] = innerDisposable;
            } while (!this.e.compareAndSet(innerDisposableArr, innerDisposableArr2));
            return true;
        }

        /* access modifiers changed from: 0000 */
        public void b(InnerDisposable<T> innerDisposable) {
            InnerDisposable[] innerDisposableArr;
            InnerDisposable[] innerDisposableArr2;
            do {
                innerDisposableArr = (InnerDisposable[]) this.e.get();
                int length = innerDisposableArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerDisposableArr[i2].equals(innerDisposable)) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i < 0) {
                        return;
                    }
                    if (length == 1) {
                        innerDisposableArr2 = c;
                    } else {
                        innerDisposableArr2 = new InnerDisposable[(length - 1)];
                        System.arraycopy(innerDisposableArr, 0, innerDisposableArr2, 0, i);
                        System.arraycopy(innerDisposableArr, i + 1, innerDisposableArr2, i, (length - i) - 1);
                    }
                } else {
                    return;
                }
            } while (!this.e.compareAndSet(innerDisposableArr, innerDisposableArr2));
        }

        public void onSubscribe(io.reactivex.disposables.b bVar) {
            if (DisposableHelper.b(this, bVar)) {
                a();
            }
        }

        public void onNext(T t) {
            if (!this.b) {
                this.a.a(t);
                a();
            }
        }

        public void onError(Throwable th) {
            if (!this.b) {
                this.b = true;
                this.a.a(th);
                b();
                return;
            }
            io.reactivex.d.a.a(th);
        }

        public void onComplete() {
            if (!this.b) {
                this.b = true;
                this.a.b();
                b();
            }
        }

        /* access modifiers changed from: 0000 */
        public void a() {
            for (InnerDisposable a2 : (InnerDisposable[]) this.e.get()) {
                this.a.a(a2);
            }
        }

        /* access modifiers changed from: 0000 */
        public void b() {
            for (InnerDisposable a2 : (InnerDisposable[]) this.e.getAndSet(d)) {
                this.a.a(a2);
            }
        }
    }

    static final class SizeAndTimeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = 3457957419649567404L;
        final r c;
        final long d;
        final TimeUnit e;
        final int f;

        SizeAndTimeBoundReplayBuffer(int i, long j, TimeUnit timeUnit, r rVar) {
            this.c = rVar;
            this.f = i;
            this.d = j;
            this.e = timeUnit;
        }

        /* access modifiers changed from: 0000 */
        public Object b(Object obj) {
            return new io.reactivex.e.b(obj, this.c.a(this.e), this.e);
        }

        /* access modifiers changed from: 0000 */
        public Object c(Object obj) {
            return ((io.reactivex.e.b) obj).a();
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            long a = this.c.a(this.e) - this.d;
            Node node = (Node) get();
            Node node2 = node;
            int i = 0;
            Node node3 = (Node) node.get();
            while (node3 != null) {
                if (this.b <= this.f) {
                    if (((io.reactivex.e.b) node3.a).b() > a) {
                        break;
                    }
                    i++;
                    this.b--;
                    node2 = node3;
                    node3 = (Node) node3.get();
                } else {
                    i++;
                    this.b--;
                    node2 = node3;
                    node3 = (Node) node3.get();
                }
            }
            if (i != 0) {
                b(node2);
            }
        }

        /* access modifiers changed from: 0000 */
        public void d() {
            long a = this.c.a(this.e) - this.d;
            Node node = (Node) get();
            Node node2 = node;
            int i = 0;
            Node node3 = (Node) node.get();
            while (node3 != null && this.b > 1 && ((io.reactivex.e.b) node3.a).b() <= a) {
                i++;
                this.b--;
                node2 = node3;
                node3 = (Node) node3.get();
            }
            if (i != 0) {
                b(node2);
            }
        }

        /* access modifiers changed from: 0000 */
        public Node e() {
            long a = this.c.a(this.e) - this.d;
            Node node = (Node) get();
            Node node2 = node;
            for (Node node3 = (Node) node.get(); node3 != null; node3 = (Node) node3.get()) {
                io.reactivex.e.b bVar = (io.reactivex.e.b) node3.a;
                if (NotificationLite.b(bVar.a()) || NotificationLite.c(bVar.a()) || bVar.b() > a) {
                    break;
                }
                node2 = node3;
            }
            return node2;
        }
    }

    static final class SizeBoundReplayBuffer<T> extends BoundedReplayBuffer<T> {
        private static final long serialVersionUID = -5898283885385201806L;
        final int c;

        SizeBoundReplayBuffer(int i) {
            this.c = i;
        }

        /* access modifiers changed from: 0000 */
        public void c() {
            if (this.b > this.c) {
                a();
            }
        }
    }

    static final class UnboundedReplayBuffer<T> extends ArrayList<Object> implements e<T> {
        private static final long serialVersionUID = 7063189396499112664L;
        volatile int a;

        UnboundedReplayBuffer(int i) {
            super(i);
        }

        public void a(T t) {
            add(NotificationLite.a(t));
            this.a++;
        }

        public void a(Throwable th) {
            add(NotificationLite.a(th));
            this.a++;
        }

        public void b() {
            add(NotificationLite.a());
            this.a++;
        }

        public void a(InnerDisposable<T> innerDisposable) {
            if (innerDisposable.getAndIncrement() == 0) {
                q<? super T> qVar = innerDisposable.b;
                int i = 1;
                while (true) {
                    int i2 = i;
                    if (!innerDisposable.isDisposed()) {
                        int i3 = this.a;
                        Integer num = (Integer) innerDisposable.a();
                        int intValue = num != null ? num.intValue() : 0;
                        while (intValue < i3) {
                            if (!NotificationLite.a(get(intValue), qVar) && !innerDisposable.isDisposed()) {
                                intValue++;
                            } else {
                                return;
                            }
                        }
                        innerDisposable.c = Integer.valueOf(intValue);
                        i = innerDisposable.addAndGet(-i2);
                        if (i == 0) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }
    }

    interface a<T> {
        e<T> a();
    }

    static final class b<R> implements io.reactivex.b.f<io.reactivex.disposables.b> {
        private final ObserverResourceWrapper<R> a;

        b(ObserverResourceWrapper<R> observerResourceWrapper) {
            this.a = observerResourceWrapper;
        }

        /* renamed from: a */
        public void accept(io.reactivex.disposables.b bVar) {
            this.a.a(bVar);
        }
    }

    static final class c<R, U> extends k<R> {
        private final Callable<? extends io.reactivex.c.a<U>> a;
        private final io.reactivex.b.g<? super k<U>, ? extends o<R>> b;

        c(Callable<? extends io.reactivex.c.a<U>> callable, io.reactivex.b.g<? super k<U>, ? extends o<R>> gVar) {
            this.a = callable;
            this.b = gVar;
        }

        /* access modifiers changed from: protected */
        public void subscribeActual(q<? super R> qVar) {
            try {
                io.reactivex.c.a aVar = (io.reactivex.c.a) io.reactivex.internal.functions.a.a(this.a.call(), "The connectableFactory returned a null ConnectableObservable");
                o oVar = (o) io.reactivex.internal.functions.a.a(this.b.apply(aVar), "The selector returned a null ObservableSource");
                ObserverResourceWrapper observerResourceWrapper = new ObserverResourceWrapper(qVar);
                oVar.subscribe(observerResourceWrapper);
                aVar.a(new b(observerResourceWrapper));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.a(th, qVar);
            }
        }
    }

    static final class d<T> extends io.reactivex.c.a<T> {
        private final io.reactivex.c.a<T> a;
        private final k<T> b;

        d(io.reactivex.c.a<T> aVar, k<T> kVar) {
            this.a = aVar;
            this.b = kVar;
        }

        public void a(io.reactivex.b.f<? super io.reactivex.disposables.b> fVar) {
            this.a.a(fVar);
        }

        /* access modifiers changed from: protected */
        public void subscribeActual(q<? super T> qVar) {
            this.b.subscribe(qVar);
        }
    }

    interface e<T> {
        void a(InnerDisposable<T> innerDisposable);

        void a(T t);

        void a(Throwable th);

        void b();
    }

    static final class f<T> implements a<T> {
        private final int a;

        f(int i) {
            this.a = i;
        }

        public e<T> a() {
            return new SizeBoundReplayBuffer(this.a);
        }
    }

    static final class g<T> implements o<T> {
        private final AtomicReference<ReplayObserver<T>> a;
        private final a<T> b;

        g(AtomicReference<ReplayObserver<T>> atomicReference, a<T> aVar) {
            this.a = atomicReference;
            this.b = aVar;
        }

        public void subscribe(q<? super T> qVar) {
            ReplayObserver replayObserver;
            do {
                replayObserver = (ReplayObserver) this.a.get();
                if (replayObserver != null) {
                    break;
                }
                replayObserver = new ReplayObserver(this.b.a());
            } while (!this.a.compareAndSet(null, replayObserver));
            InnerDisposable innerDisposable = new InnerDisposable(replayObserver, qVar);
            qVar.onSubscribe(innerDisposable);
            replayObserver.a(innerDisposable);
            if (innerDisposable.isDisposed()) {
                replayObserver.b(innerDisposable);
            } else {
                replayObserver.a.a(innerDisposable);
            }
        }
    }

    static final class h<T> implements a<T> {
        private final int a;
        private final long b;
        private final TimeUnit c;
        private final r d;

        h(int i, long j, TimeUnit timeUnit, r rVar) {
            this.a = i;
            this.b = j;
            this.c = timeUnit;
            this.d = rVar;
        }

        public e<T> a() {
            return new SizeAndTimeBoundReplayBuffer(this.a, this.b, this.c, this.d);
        }
    }

    static final class i implements a<Object> {
        i() {
        }

        public e<Object> a() {
            return new UnboundedReplayBuffer(16);
        }
    }

    public static <U, R> k<R> a(Callable<? extends io.reactivex.c.a<U>> callable, io.reactivex.b.g<? super k<U>, ? extends o<R>> gVar) {
        return io.reactivex.d.a.a((k<T>) new c<T>(callable, gVar));
    }

    public static <T> io.reactivex.c.a<T> a(io.reactivex.c.a<T> aVar, r rVar) {
        return io.reactivex.d.a.a((io.reactivex.c.a<T>) new d<T>(aVar, aVar.observeOn(rVar)));
    }

    public static <T> io.reactivex.c.a<T> a(o<? extends T> oVar) {
        return a(oVar, e);
    }

    public static <T> io.reactivex.c.a<T> a(o<T> oVar, int i2) {
        if (i2 == Integer.MAX_VALUE) {
            return a(oVar);
        }
        return a(oVar, (a<T>) new f<T>(i2));
    }

    public static <T> io.reactivex.c.a<T> a(o<T> oVar, long j, TimeUnit timeUnit, r rVar) {
        return a(oVar, j, timeUnit, rVar, Integer.MAX_VALUE);
    }

    public static <T> io.reactivex.c.a<T> a(o<T> oVar, long j, TimeUnit timeUnit, r rVar, int i2) {
        return a(oVar, (a<T>) new h<T>(i2, j, timeUnit, rVar));
    }

    static <T> io.reactivex.c.a<T> a(o<T> oVar, a<T> aVar) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.d.a.a((io.reactivex.c.a<T>) new ObservableReplay<T>(new g(atomicReference, aVar), oVar, atomicReference, aVar));
    }

    private ObservableReplay(o<T> oVar, o<T> oVar2, AtomicReference<ReplayObserver<T>> atomicReference, a<T> aVar) {
        this.d = oVar;
        this.a = oVar2;
        this.b = atomicReference;
        this.c = aVar;
    }

    public void dispose() {
        this.b.lazySet(null);
    }

    public boolean isDisposed() {
        io.reactivex.disposables.b bVar = (io.reactivex.disposables.b) this.b.get();
        return bVar == null || bVar.isDisposed();
    }

    /* access modifiers changed from: protected */
    public void subscribeActual(q<? super T> qVar) {
        this.d.subscribe(qVar);
    }

    public void a(io.reactivex.b.f<? super io.reactivex.disposables.b> fVar) {
        ReplayObserver replayObserver;
        boolean z;
        while (true) {
            replayObserver = (ReplayObserver) this.b.get();
            if (replayObserver != null && !replayObserver.isDisposed()) {
                break;
            }
            ReplayObserver replayObserver2 = new ReplayObserver(this.c.a());
            if (this.b.compareAndSet(replayObserver, replayObserver2)) {
                replayObserver = replayObserver2;
                break;
            }
        }
        if (replayObserver.f.get() || !replayObserver.f.compareAndSet(false, true)) {
            z = false;
        } else {
            z = true;
        }
        try {
            fVar.accept(replayObserver);
            if (z) {
                this.a.subscribe(replayObserver);
            }
        } catch (Throwable th) {
            if (z) {
                replayObserver.f.compareAndSet(true, false);
            }
            io.reactivex.exceptions.a.b(th);
            throw ExceptionHelper.a(th);
        }
    }
}

package io.reactivex.e;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.schedulers.i;
import io.reactivex.r;
import java.util.concurrent.Callable;

/* compiled from: Schedulers */
public final class a {
    @NonNull
    static final r a = io.reactivex.d.a.d(new h());
    @NonNull
    static final r b = io.reactivex.d.a.a((Callable<r>) new b<r>());
    @NonNull
    static final r c = io.reactivex.d.a.b((Callable<r>) new c<r>());
    @NonNull
    static final r d = i.c();
    @NonNull
    static final r e = io.reactivex.d.a.c((Callable<r>) new f<r>());

    /* renamed from: io.reactivex.e.a$a reason: collision with other inner class name */
    /* compiled from: Schedulers */
    static final class C0082a {
        static final r a = new io.reactivex.internal.schedulers.a();
    }

    /* compiled from: Schedulers */
    static final class b implements Callable<r> {
        b() {
        }

        /* renamed from: a */
        public r call() throws Exception {
            return C0082a.a;
        }
    }

    /* compiled from: Schedulers */
    static final class c implements Callable<r> {
        c() {
        }

        /* renamed from: a */
        public r call() throws Exception {
            return d.a;
        }
    }

    /* compiled from: Schedulers */
    static final class d {
        static final r a = new io.reactivex.internal.schedulers.c();
    }

    /* compiled from: Schedulers */
    static final class e {
        static final r a = new io.reactivex.internal.schedulers.d();
    }

    /* compiled from: Schedulers */
    static final class f implements Callable<r> {
        f() {
        }

        /* renamed from: a */
        public r call() throws Exception {
            return e.a;
        }
    }

    /* compiled from: Schedulers */
    static final class g {
        static final r a = new io.reactivex.internal.schedulers.h();
    }

    /* compiled from: Schedulers */
    static final class h implements Callable<r> {
        h() {
        }

        /* renamed from: a */
        public r call() throws Exception {
            return g.a;
        }
    }

    @NonNull
    public static r a() {
        return io.reactivex.d.a.a(b);
    }

    @NonNull
    public static r b() {
        return io.reactivex.d.a.b(c);
    }

    @NonNull
    public static r c() {
        return d;
    }
}

package io.reactivex.internal.functions;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public final class Functions {
    static final io.reactivex.b.g<Object, Object> a = new u();
    public static final Runnable b = new q();
    public static final io.reactivex.b.a c = new n();
    static final io.reactivex.b.f<Object> d = new o();
    public static final io.reactivex.b.f<Throwable> e = new s();
    public static final io.reactivex.b.f<Throwable> f = new ad();
    public static final io.reactivex.b.o g = new p();
    static final io.reactivex.b.p<Object> h = new ai();
    static final io.reactivex.b.p<Object> i = new t();
    static final Callable<Object> j = new ac();
    static final Comparator<Object> k = new y();
    public static final io.reactivex.b.f<org.a.c> l = new x();

    enum HashSetCallable implements Callable<Set<Object>> {
        INSTANCE;

        /* renamed from: a */
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    enum NaturalComparator implements Comparator<Object> {
        INSTANCE;

        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    static final class a<T> implements io.reactivex.b.f<T> {
        final io.reactivex.b.a a;

        a(io.reactivex.b.a aVar) {
            this.a = aVar;
        }

        public void accept(T t) throws Exception {
            this.a.a();
        }
    }

    static final class aa<T> implements io.reactivex.b.f<Throwable> {
        final io.reactivex.b.f<? super io.reactivex.j<T>> a;

        aa(io.reactivex.b.f<? super io.reactivex.j<T>> fVar) {
            this.a = fVar;
        }

        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.a.accept(io.reactivex.j.a(th));
        }
    }

    static final class ab<T> implements io.reactivex.b.f<T> {
        final io.reactivex.b.f<? super io.reactivex.j<T>> a;

        ab(io.reactivex.b.f<? super io.reactivex.j<T>> fVar) {
            this.a = fVar;
        }

        public void accept(T t) throws Exception {
            this.a.accept(io.reactivex.j.a(t));
        }
    }

    static final class ac implements Callable<Object> {
        ac() {
        }

        public Object call() {
            return null;
        }
    }

    static final class ad implements io.reactivex.b.f<Throwable> {
        ad() {
        }

        /* renamed from: a */
        public void accept(Throwable th) {
            io.reactivex.d.a.a((Throwable) new OnErrorNotImplementedException(th));
        }
    }

    static final class ae<T> implements io.reactivex.b.g<T, io.reactivex.e.b<T>> {
        final TimeUnit a;
        final io.reactivex.r b;

        ae(TimeUnit timeUnit, io.reactivex.r rVar) {
            this.a = timeUnit;
            this.b = rVar;
        }

        /* renamed from: a */
        public io.reactivex.e.b<T> apply(T t) throws Exception {
            return new io.reactivex.e.b<>(t, this.b.a(this.a), this.a);
        }
    }

    static final class af<K, T> implements io.reactivex.b.b<Map<K, T>, T> {
        private final io.reactivex.b.g<? super T, ? extends K> a;

        af(io.reactivex.b.g<? super T, ? extends K> gVar) {
            this.a = gVar;
        }

        public void a(Map<K, T> map, T t) throws Exception {
            map.put(this.a.apply(t), t);
        }
    }

    static final class ag<K, V, T> implements io.reactivex.b.b<Map<K, V>, T> {
        private final io.reactivex.b.g<? super T, ? extends V> a;
        private final io.reactivex.b.g<? super T, ? extends K> b;

        ag(io.reactivex.b.g<? super T, ? extends V> gVar, io.reactivex.b.g<? super T, ? extends K> gVar2) {
            this.a = gVar;
            this.b = gVar2;
        }

        public void a(Map<K, V> map, T t) throws Exception {
            map.put(this.b.apply(t), this.a.apply(t));
        }
    }

    static final class ah<K, V, T> implements io.reactivex.b.b<Map<K, Collection<V>>, T> {
        private final io.reactivex.b.g<? super K, ? extends Collection<? super V>> a;
        private final io.reactivex.b.g<? super T, ? extends V> b;
        private final io.reactivex.b.g<? super T, ? extends K> c;

        ah(io.reactivex.b.g<? super K, ? extends Collection<? super V>> gVar, io.reactivex.b.g<? super T, ? extends V> gVar2, io.reactivex.b.g<? super T, ? extends K> gVar3) {
            this.a = gVar;
            this.b = gVar2;
            this.c = gVar3;
        }

        public void a(Map<K, Collection<V>> map, T t) throws Exception {
            Object apply = this.c.apply(t);
            Collection collection = (Collection) map.get(apply);
            if (collection == null) {
                collection = (Collection) this.a.apply(apply);
                map.put(apply, collection);
            }
            collection.add(this.b.apply(t));
        }
    }

    static final class ai implements io.reactivex.b.p<Object> {
        ai() {
        }

        public boolean test(Object obj) {
            return true;
        }
    }

    static final class b<T1, T2, R> implements io.reactivex.b.g<Object[], R> {
        final io.reactivex.b.c<? super T1, ? super T2, ? extends R> a;

        b(io.reactivex.b.c<? super T1, ? super T2, ? extends R> cVar) {
            this.a = cVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return this.a.a(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    static final class c<T1, T2, T3, R> implements io.reactivex.b.g<Object[], R> {
        final io.reactivex.b.h<T1, T2, T3, R> a;

        c(io.reactivex.b.h<T1, T2, T3, R> hVar) {
            this.a = hVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 3) {
                return this.a.a(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    static final class d<T1, T2, T3, T4, R> implements io.reactivex.b.g<Object[], R> {
        final io.reactivex.b.i<T1, T2, T3, T4, R> a;

        d(io.reactivex.b.i<T1, T2, T3, T4, R> iVar) {
            this.a = iVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 4) {
                return this.a.a(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    static final class e<T1, T2, T3, T4, T5, R> implements io.reactivex.b.g<Object[], R> {
        private final io.reactivex.b.j<T1, T2, T3, T4, T5, R> a;

        e(io.reactivex.b.j<T1, T2, T3, T4, T5, R> jVar) {
            this.a = jVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 5) {
                return this.a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    static final class f<T1, T2, T3, T4, T5, T6, R> implements io.reactivex.b.g<Object[], R> {
        final io.reactivex.b.k<T1, T2, T3, T4, T5, T6, R> a;

        f(io.reactivex.b.k<T1, T2, T3, T4, T5, T6, R> kVar) {
            this.a = kVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 6) {
                return this.a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    static final class g<T1, T2, T3, T4, T5, T6, T7, R> implements io.reactivex.b.g<Object[], R> {
        final io.reactivex.b.l<T1, T2, T3, T4, T5, T6, T7, R> a;

        g(io.reactivex.b.l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
            this.a = lVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 7) {
                return this.a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    static final class h<T1, T2, T3, T4, T5, T6, T7, T8, R> implements io.reactivex.b.g<Object[], R> {
        final io.reactivex.b.m<T1, T2, T3, T4, T5, T6, T7, T8, R> a;

        h(io.reactivex.b.m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
            this.a = mVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 8) {
                return this.a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    static final class i<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements io.reactivex.b.g<Object[], R> {
        final io.reactivex.b.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> a;

        i(io.reactivex.b.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
            this.a = nVar;
        }

        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 9) {
                return this.a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    static final class j<T> implements Callable<List<T>> {
        final int a;

        j(int i) {
            this.a = i;
        }

        /* renamed from: a */
        public List<T> call() throws Exception {
            return new ArrayList(this.a);
        }
    }

    static final class k<T> implements io.reactivex.b.p<T> {
        final io.reactivex.b.e a;

        k(io.reactivex.b.e eVar) {
            this.a = eVar;
        }

        public boolean test(T t) throws Exception {
            return !this.a.a();
        }
    }

    static final class l<T, U> implements io.reactivex.b.g<T, U> {
        final Class<U> a;

        l(Class<U> cls) {
            this.a = cls;
        }

        public U apply(T t) throws Exception {
            return this.a.cast(t);
        }
    }

    static final class m<T, U> implements io.reactivex.b.p<T> {
        final Class<U> a;

        m(Class<U> cls) {
            this.a = cls;
        }

        public boolean test(T t) throws Exception {
            return this.a.isInstance(t);
        }
    }

    static final class n implements io.reactivex.b.a {
        n() {
        }

        public void a() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    static final class o implements io.reactivex.b.f<Object> {
        o() {
        }

        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    static final class p implements io.reactivex.b.o {
        p() {
        }
    }

    static final class q implements Runnable {
        q() {
        }

        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    static final class r<T> implements io.reactivex.b.p<T> {
        final T a;

        r(T t) {
            this.a = t;
        }

        public boolean test(T t) throws Exception {
            return a.a((Object) t, (Object) this.a);
        }
    }

    static final class s implements io.reactivex.b.f<Throwable> {
        s() {
        }

        /* renamed from: a */
        public void accept(Throwable th) {
            io.reactivex.d.a.a(th);
        }
    }

    static final class t implements io.reactivex.b.p<Object> {
        t() {
        }

        public boolean test(Object obj) {
            return false;
        }
    }

    static final class u implements io.reactivex.b.g<Object, Object> {
        u() {
        }

        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    static final class v<T, U> implements io.reactivex.b.g<T, U>, Callable<U> {
        final U a;

        v(U u) {
            this.a = u;
        }

        public U call() throws Exception {
            return this.a;
        }

        public U apply(T t) throws Exception {
            return this.a;
        }
    }

    static final class w<T> implements io.reactivex.b.g<List<T>, List<T>> {
        final Comparator<? super T> a;

        w(Comparator<? super T> comparator) {
            this.a = comparator;
        }

        /* renamed from: a */
        public List<T> apply(List<T> list) {
            Collections.sort(list, this.a);
            return list;
        }
    }

    static final class x implements io.reactivex.b.f<org.a.c> {
        x() {
        }

        /* renamed from: a */
        public void accept(org.a.c cVar) throws Exception {
            cVar.a(FileTracerConfig.FOREVER);
        }
    }

    static final class y implements Comparator<Object> {
        y() {
        }

        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    static final class z<T> implements io.reactivex.b.a {
        final io.reactivex.b.f<? super io.reactivex.j<T>> a;

        z(io.reactivex.b.f<? super io.reactivex.j<T>> fVar) {
            this.a = fVar;
        }

        public void a() throws Exception {
            this.a.accept(io.reactivex.j.f());
        }
    }

    public static <T1, T2, R> io.reactivex.b.g<Object[], R> a(io.reactivex.b.c<? super T1, ? super T2, ? extends R> cVar) {
        a.a(cVar, "f is null");
        return new b(cVar);
    }

    public static <T1, T2, T3, R> io.reactivex.b.g<Object[], R> a(io.reactivex.b.h<T1, T2, T3, R> hVar) {
        a.a(hVar, "f is null");
        return new c(hVar);
    }

    public static <T1, T2, T3, T4, R> io.reactivex.b.g<Object[], R> a(io.reactivex.b.i<T1, T2, T3, T4, R> iVar) {
        a.a(iVar, "f is null");
        return new d(iVar);
    }

    public static <T1, T2, T3, T4, T5, R> io.reactivex.b.g<Object[], R> a(io.reactivex.b.j<T1, T2, T3, T4, T5, R> jVar) {
        a.a(jVar, "f is null");
        return new e(jVar);
    }

    public static <T1, T2, T3, T4, T5, T6, R> io.reactivex.b.g<Object[], R> a(io.reactivex.b.k<T1, T2, T3, T4, T5, T6, R> kVar) {
        a.a(kVar, "f is null");
        return new f(kVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> io.reactivex.b.g<Object[], R> a(io.reactivex.b.l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
        a.a(lVar, "f is null");
        return new g(lVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> io.reactivex.b.g<Object[], R> a(io.reactivex.b.m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
        a.a(mVar, "f is null");
        return new h(mVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> io.reactivex.b.g<Object[], R> a(io.reactivex.b.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
        a.a(nVar, "f is null");
        return new i(nVar);
    }

    public static <T> io.reactivex.b.g<T, T> a() {
        return a;
    }

    public static <T> io.reactivex.b.f<T> b() {
        return d;
    }

    public static <T> io.reactivex.b.p<T> c() {
        return h;
    }

    public static <T> io.reactivex.b.p<T> d() {
        return i;
    }

    public static <T> Callable<T> e() {
        return j;
    }

    public static <T> Comparator<T> f() {
        return k;
    }

    public static <T> Callable<T> a(T t2) {
        return new v(t2);
    }

    public static <T, U> io.reactivex.b.g<T, U> b(U u2) {
        return new v(u2);
    }

    public static <T, U> io.reactivex.b.g<T, U> a(Class<U> cls) {
        return new l(cls);
    }

    public static <T> Callable<List<T>> a(int i2) {
        return new j(i2);
    }

    public static <T> io.reactivex.b.p<T> c(T t2) {
        return new r(t2);
    }

    public static <T> Callable<Set<T>> g() {
        return HashSetCallable.INSTANCE;
    }

    public static <T> io.reactivex.b.f<T> a(io.reactivex.b.f<? super io.reactivex.j<T>> fVar) {
        return new ab(fVar);
    }

    public static <T> io.reactivex.b.f<Throwable> b(io.reactivex.b.f<? super io.reactivex.j<T>> fVar) {
        return new aa(fVar);
    }

    public static <T> io.reactivex.b.a c(io.reactivex.b.f<? super io.reactivex.j<T>> fVar) {
        return new z(fVar);
    }

    public static <T> io.reactivex.b.f<T> a(io.reactivex.b.a aVar) {
        return new a(aVar);
    }

    public static <T, U> io.reactivex.b.p<T> b(Class<U> cls) {
        return new m(cls);
    }

    public static <T> io.reactivex.b.p<T> a(io.reactivex.b.e eVar) {
        return new k(eVar);
    }

    public static <T> io.reactivex.b.g<T, io.reactivex.e.b<T>> a(TimeUnit timeUnit, io.reactivex.r rVar) {
        return new ae(timeUnit, rVar);
    }

    public static <T, K> io.reactivex.b.b<Map<K, T>, T> a(io.reactivex.b.g<? super T, ? extends K> gVar) {
        return new af(gVar);
    }

    public static <T, K, V> io.reactivex.b.b<Map<K, V>, T> a(io.reactivex.b.g<? super T, ? extends K> gVar, io.reactivex.b.g<? super T, ? extends V> gVar2) {
        return new ag(gVar2, gVar);
    }

    public static <T, K, V> io.reactivex.b.b<Map<K, Collection<V>>, T> a(io.reactivex.b.g<? super T, ? extends K> gVar, io.reactivex.b.g<? super T, ? extends V> gVar2, io.reactivex.b.g<? super K, ? extends Collection<? super V>> gVar3) {
        return new ah(gVar3, gVar2, gVar);
    }

    public static <T> Comparator<T> h() {
        return NaturalComparator.INSTANCE;
    }

    public static <T> io.reactivex.b.g<List<T>, List<T>> a(Comparator<? super T> comparator) {
        return new w(comparator);
    }
}

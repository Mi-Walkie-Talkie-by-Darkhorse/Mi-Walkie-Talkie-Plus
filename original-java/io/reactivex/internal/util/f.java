package io.reactivex.internal.util;

import io.reactivex.d.a;
import io.reactivex.q;
import java.util.concurrent.atomic.AtomicInteger;
import org.a.b;

/* compiled from: HalfSerializer */
public final class f {
    public static <T> void a(b<? super T> bVar, T t, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            bVar.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable a = atomicThrowable.a();
                if (a != null) {
                    bVar.onError(a);
                } else {
                    bVar.onComplete();
                }
            }
        }
    }

    public static void a(b<?> bVar, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (!atomicThrowable.a(th)) {
            a.a(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            bVar.onError(atomicThrowable.a());
        }
    }

    public static void a(b<?> bVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable a = atomicThrowable.a();
            if (a != null) {
                bVar.onError(a);
            } else {
                bVar.onComplete();
            }
        }
    }

    public static <T> void a(q<? super T> qVar, T t, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            qVar.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable a = atomicThrowable.a();
                if (a != null) {
                    qVar.onError(a);
                } else {
                    qVar.onComplete();
                }
            }
        }
    }

    public static void a(q<?> qVar, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (!atomicThrowable.a(th)) {
            a.a(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            qVar.onError(atomicThrowable.a());
        }
    }

    public static void a(q<?> qVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable a = atomicThrowable.a();
            if (a != null) {
                qVar.onError(a);
            } else {
                qVar.onComplete();
            }
        }
    }
}

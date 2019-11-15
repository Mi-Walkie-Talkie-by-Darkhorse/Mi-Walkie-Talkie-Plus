package io.reactivex.internal.subscriptions;

import io.reactivex.d.a;
import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.util.b;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.a.c;

public enum SubscriptionHelper implements c {
    CANCELLED;

    public void a(long j) {
    }

    public void a() {
    }

    public static boolean a(c cVar, c cVar2) {
        if (cVar2 == null) {
            a.a((Throwable) new NullPointerException("next is null"));
            return false;
        } else if (cVar == null) {
            return true;
        } else {
            cVar2.a();
            b();
            return false;
        }
    }

    public static void b() {
        a.a((Throwable) new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean b(long j) {
        if (j > 0) {
            return true;
        }
        a.a((Throwable) new IllegalArgumentException("n > 0 required but it was " + j));
        return false;
    }

    public static boolean a(AtomicReference<c> atomicReference, c cVar) {
        io.reactivex.internal.functions.a.a(cVar, "d is null");
        if (atomicReference.compareAndSet(null, cVar)) {
            return true;
        }
        cVar.a();
        if (atomicReference.get() != CANCELLED) {
            b();
        }
        return false;
    }

    public static boolean a(AtomicReference<c> atomicReference) {
        if (((c) atomicReference.get()) != CANCELLED) {
            c cVar = (c) atomicReference.getAndSet(CANCELLED);
            if (cVar != CANCELLED) {
                if (cVar != null) {
                    cVar.a();
                }
                return true;
            }
        }
        return false;
    }

    public static boolean a(AtomicReference<c> atomicReference, AtomicLong atomicLong, c cVar) {
        if (!a(atomicReference, cVar)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0);
        if (andSet != 0) {
            cVar.a(andSet);
        }
        return true;
    }

    public static void a(AtomicReference<c> atomicReference, AtomicLong atomicLong, long j) {
        c cVar = (c) atomicReference.get();
        if (cVar != null) {
            cVar.a(j);
        } else if (b(j)) {
            b.a(atomicLong, j);
            c cVar2 = (c) atomicReference.get();
            if (cVar2 != null) {
                long andSet = atomicLong.getAndSet(0);
                if (andSet != 0) {
                    cVar2.a(andSet);
                }
            }
        }
    }
}

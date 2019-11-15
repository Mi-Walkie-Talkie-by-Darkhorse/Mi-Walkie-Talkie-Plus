package io.reactivex.internal.disposables;

import io.reactivex.disposables.b;
import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.functions.a;
import java.util.concurrent.atomic.AtomicReference;

public enum DisposableHelper implements b {
    DISPOSED;

    public static boolean a(b bVar) {
        return bVar == DISPOSED;
    }

    public static boolean a(AtomicReference<b> atomicReference, b bVar) {
        b bVar2;
        do {
            bVar2 = (b) atomicReference.get();
            if (bVar2 == DISPOSED) {
                if (bVar != null) {
                    bVar.dispose();
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(bVar2, bVar));
        if (bVar2 != null) {
            bVar2.dispose();
        }
        return true;
    }

    public static boolean b(AtomicReference<b> atomicReference, b bVar) {
        a.a(bVar, "d is null");
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        bVar.dispose();
        if (atomicReference.get() != DISPOSED) {
            a();
        }
        return false;
    }

    public static boolean c(AtomicReference<b> atomicReference, b bVar) {
        b bVar2;
        do {
            bVar2 = (b) atomicReference.get();
            if (bVar2 == DISPOSED) {
                if (bVar != null) {
                    bVar.dispose();
                }
                return false;
            }
        } while (!atomicReference.compareAndSet(bVar2, bVar));
        return true;
    }

    public static boolean a(AtomicReference<b> atomicReference) {
        b bVar = (b) atomicReference.get();
        DisposableHelper disposableHelper = DISPOSED;
        if (bVar != disposableHelper) {
            b bVar2 = (b) atomicReference.getAndSet(disposableHelper);
            if (bVar2 != disposableHelper) {
                if (bVar2 != null) {
                    bVar2.dispose();
                }
                return true;
            }
        }
        return false;
    }

    public static boolean a(b bVar, b bVar2) {
        if (bVar2 == null) {
            io.reactivex.d.a.a((Throwable) new NullPointerException("next is null"));
            return false;
        } else if (bVar == null) {
            return true;
        } else {
            bVar2.dispose();
            a();
            return false;
        }
    }

    public static void a() {
        io.reactivex.d.a.a((Throwable) new ProtocolViolationException("Disposable already set!"));
    }

    public static boolean d(AtomicReference<b> atomicReference, b bVar) {
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        if (atomicReference.get() == DISPOSED) {
            bVar.dispose();
        }
        return false;
    }

    public void dispose() {
    }

    public boolean isDisposed() {
        return true;
    }
}

package io.reactivex.internal.util;

import io.reactivex.disposables.b;
import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.a;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: EndConsumerHelper */
public final class e {
    public static boolean a(b bVar, b bVar2, Class<?> cls) {
        a.a(bVar2, "next is null");
        if (bVar == null) {
            return true;
        }
        bVar2.dispose();
        if (bVar != DisposableHelper.DISPOSED) {
            a(cls);
        }
        return false;
    }

    public static boolean a(AtomicReference<b> atomicReference, b bVar, Class<?> cls) {
        a.a(bVar, "next is null");
        if (atomicReference.compareAndSet(null, bVar)) {
            return true;
        }
        bVar.dispose();
        if (atomicReference.get() != DisposableHelper.DISPOSED) {
            a(cls);
        }
        return false;
    }

    public static String a(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    public static void a(Class<?> cls) {
        io.reactivex.d.a.a((Throwable) new ProtocolViolationException(a(cls.getName())));
    }
}

package io.reactivex.internal.operators.observable;

import io.reactivex.b.a;
import io.reactivex.b.f;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.observers.BlockingObserver;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.c;
import io.reactivex.internal.util.d;
import io.reactivex.o;
import io.reactivex.q;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: ObservableBlockingSubscribe */
public final class i {
    public static <T> void a(o<? extends T> oVar, q<? super T> qVar) {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        BlockingObserver blockingObserver = new BlockingObserver(linkedBlockingQueue);
        qVar.onSubscribe(blockingObserver);
        oVar.subscribe(blockingObserver);
        while (!blockingObserver.isDisposed()) {
            Object poll = linkedBlockingQueue.poll();
            if (poll == null) {
                try {
                    poll = linkedBlockingQueue.take();
                } catch (InterruptedException e) {
                    blockingObserver.dispose();
                    qVar.onError(e);
                    return;
                }
            }
            if (!blockingObserver.isDisposed() && oVar != BlockingObserver.a) {
                if (NotificationLite.b(poll, qVar)) {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public static <T> void a(o<? extends T> oVar) {
        d dVar = new d();
        LambdaObserver lambdaObserver = new LambdaObserver(Functions.b(), dVar, dVar, Functions.b());
        oVar.subscribe(lambdaObserver);
        c.a(dVar, lambdaObserver);
        Throwable th = dVar.a;
        if (th != null) {
            throw ExceptionHelper.a(th);
        }
    }

    public static <T> void a(o<? extends T> oVar, f<? super T> fVar, f<? super Throwable> fVar2, a aVar) {
        io.reactivex.internal.functions.a.a(fVar, "onNext is null");
        io.reactivex.internal.functions.a.a(fVar2, "onError is null");
        io.reactivex.internal.functions.a.a(aVar, "onComplete is null");
        a(oVar, new LambdaObserver(fVar, fVar2, aVar, Functions.b()));
    }
}

package io.reactivex.internal.util;

import io.reactivex.d.a;
import io.reactivex.disposables.b;
import io.reactivex.internal.schedulers.f;
import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingHelper */
public final class c {
    public static void a(CountDownLatch countDownLatch, b bVar) {
        if (countDownLatch.getCount() != 0) {
            try {
                a();
                countDownLatch.await();
            } catch (InterruptedException e) {
                bVar.dispose();
                Thread.currentThread().interrupt();
                throw new IllegalStateException("Interrupted while waiting for subscription to complete.", e);
            }
        }
    }

    public static void a() {
        if (!a.a()) {
            return;
        }
        if ((Thread.currentThread() instanceof f) || a.b()) {
            throw new IllegalStateException("Attempt to block on a Scheduler " + Thread.currentThread().getName() + " that doesn't support blocking operators as they may lead to deadlock");
        }
    }
}

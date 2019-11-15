package io.reactivex.internal.observers;

import io.reactivex.b;
import io.reactivex.h;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.c;
import io.reactivex.t;
import java.util.concurrent.CountDownLatch;

/* compiled from: BlockingMultiObserver */
public final class f<T> extends CountDownLatch implements b, h<T>, t<T> {
    T a;
    Throwable b;
    io.reactivex.disposables.b c;
    volatile boolean d;

    public f() {
        super(1);
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        this.d = true;
        io.reactivex.disposables.b bVar = this.c;
        if (bVar != null) {
            bVar.dispose();
        }
    }

    public void onSubscribe(io.reactivex.disposables.b bVar) {
        this.c = bVar;
        if (this.d) {
            bVar.dispose();
        }
    }

    public void a(T t) {
        this.a = t;
        countDown();
    }

    public void onError(Throwable th) {
        this.b = th;
        countDown();
    }

    public void onComplete() {
        countDown();
    }

    public T b() {
        if (getCount() != 0) {
            try {
                c.a();
                await();
            } catch (InterruptedException e) {
                a();
                throw ExceptionHelper.a((Throwable) e);
            }
        }
        Throwable th = this.b;
        if (th == null) {
            return this.a;
        }
        throw ExceptionHelper.a(th);
    }
}

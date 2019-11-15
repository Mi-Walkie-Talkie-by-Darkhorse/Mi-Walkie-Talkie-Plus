package rx.c;

import java.util.Arrays;
import rx.e;
import rx.exceptions.CompositeException;
import rx.exceptions.OnErrorFailedException;
import rx.exceptions.UnsubscribeFailedException;
import rx.internal.util.c;

/* compiled from: SafeSubscriber */
public class a<T> extends e<T> {
    boolean a = false;
    private final e<? super T> b;

    public a(e<? super T> eVar) {
        super(eVar);
        this.b = eVar;
    }

    public void onCompleted() {
        if (!this.a) {
            this.a = true;
            try {
                this.b.onCompleted();
                try {
                    unsubscribe();
                } catch (Throwable th) {
                    c.a(th);
                    throw new UnsubscribeFailedException(th.getMessage(), th);
                }
            } catch (Throwable th2) {
                try {
                    unsubscribe();
                    throw th2;
                } catch (Throwable th3) {
                    c.a(th3);
                    throw new UnsubscribeFailedException(th3.getMessage(), th3);
                }
            }
        }
    }

    public void onError(Throwable th) {
        rx.exceptions.a.a(th);
        if (!this.a) {
            this.a = true;
            a(th);
        }
    }

    public void onNext(T t) {
        try {
            if (!this.a) {
                this.b.onNext(t);
            }
        } catch (Throwable th) {
            rx.exceptions.a.a(th);
            onError(th);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Throwable th) {
        c.a(th);
        try {
            this.b.onError(th);
            try {
                unsubscribe();
            } catch (RuntimeException e) {
                c.a(e);
                throw new OnErrorFailedException(e);
            }
        } catch (Throwable th2) {
            c.a(th2);
            throw new OnErrorFailedException("Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new CompositeException(Arrays.asList(new Throwable[]{th, th, th2})));
        }
    }
}

package com.ifengyu.intercom.p189l.p190a.p197d;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Flowable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;
import java.util.HashMap;

/* renamed from: com.ifengyu.intercom.l.a.d.c */
/* loaded from: classes2.dex */
public class RxBus {

    /* renamed from: c */
    private static volatile RxBus f14120c;

    /* renamed from: a */
    private final Subject<Object> f14121a = PublishSubject.create().toSerialized();

    /* renamed from: b */
    private HashMap<String, CompositeDisposable> f14122b;

    /* renamed from: d */
    public static RxBus m11806d() {
        if (f14120c == null) {
            synchronized (RxBus.class) {
                if (f14120c == null) {
                    f14120c = new RxBus();
                }
            }
        }
        return f14120c;
    }

    /* renamed from: a */
    public void m11809a(Object obj, Disposable disposable) {
        if (obj != null) {
            if (this.f14122b == null) {
                this.f14122b = new HashMap<>();
            }
            String name = obj.getClass().getName();
            CompositeDisposable compositeDisposable = this.f14122b.get(name);
            if (compositeDisposable != null) {
                compositeDisposable.add(disposable);
                return;
            }
            CompositeDisposable compositeDisposable2 = new CompositeDisposable();
            compositeDisposable2.add(disposable);
            this.f14122b.put(name, compositeDisposable2);
            return;
        }
        throw new IllegalArgumentException("invalid key");
    }

    /* renamed from: b */
    public <T> void m11808b(Object obj, Class<T> cls, Consumer<T> consumer) {
        m11809a(obj, m11807c(cls, consumer));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public <T> Disposable m11807c(Class<T> cls, Consumer<T> consumer) {
        return m11804f(cls).subscribeOn(Schedulers.m800io()).observeOn(AndroidSchedulers.mainThread()).subscribe(consumer);
    }

    /* renamed from: e */
    public void m11805e(Object obj) {
        this.f14121a.onNext(obj);
    }

    /* renamed from: f */
    public <T> Flowable<T> m11804f(Class<T> cls) {
        return (Flowable<T>) this.f14121a.toFlowable(BackpressureStrategy.BUFFER).ofType(cls);
    }

    /* renamed from: g */
    public void m11803g(Object obj) {
        if (this.f14122b == null) {
            return;
        }
        String name = obj.getClass().getName();
        if (this.f14122b.containsKey(name)) {
            CompositeDisposable compositeDisposable = this.f14122b.get(name);
            if (compositeDisposable != null && !compositeDisposable.isDisposed()) {
                compositeDisposable.dispose();
            }
            this.f14122b.remove(name);
        }
    }
}

package com.ifengyu.intercom.lite.utils;

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

/* compiled from: RxBus.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: c  reason: collision with root package name */
    private static volatile j f5790c;

    /* renamed from: a  reason: collision with root package name */
    private final Subject<Object> f5791a = PublishSubject.create().toSerialized();

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, CompositeDisposable> f5792b;

    public static j a() {
        if (f5790c == null) {
            synchronized (j.class) {
                if (f5790c == null) {
                    f5790c = new j();
                }
            }
        }
        return f5790c;
    }

    public void b(Object obj) {
        if (this.f5792b != null) {
            String name = obj.getClass().getName();
            if (this.f5792b.containsKey(name)) {
                CompositeDisposable compositeDisposable = this.f5792b.get(name);
                if (compositeDisposable != null && !compositeDisposable.isDisposed()) {
                    compositeDisposable.dispose();
                }
                this.f5792b.remove(name);
            }
        }
    }

    public void a(Object obj) {
        this.f5791a.onNext(obj);
    }

    public <T> Flowable<T> a(Class<T> cls) {
        return (Flowable<T>) this.f5791a.toFlowable(BackpressureStrategy.BUFFER).ofType(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> Disposable a(Class<T> cls, Consumer<T> consumer) {
        return a((Class) cls).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(consumer);
    }

    public <T> void a(Object obj, Class<T> cls, Consumer<T> consumer) {
        a(obj, a(cls, consumer));
    }

    public void a(Object obj, Disposable disposable) {
        if (obj != null) {
            if (this.f5792b == null) {
                this.f5792b = new HashMap<>();
            }
            String name = obj.getClass().getName();
            CompositeDisposable compositeDisposable = this.f5792b.get(name);
            if (compositeDisposable != null) {
                compositeDisposable.add(disposable);
                return;
            }
            CompositeDisposable compositeDisposable2 = new CompositeDisposable();
            compositeDisposable2.add(disposable);
            this.f5792b.put(name, compositeDisposable2);
            return;
        }
        throw new IllegalArgumentException("invalid key");
    }
}

package com.ifengyu.library.a;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.concurrent.TimeUnit;

/* compiled from: CountDownTimer.java */
/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private TimeUnit f7168a;

    /* renamed from: b  reason: collision with root package name */
    private Long f7169b;

    /* renamed from: c  reason: collision with root package name */
    private Disposable f7170c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountDownTimer.java */
    /* loaded from: classes2.dex */
    public class a implements Observer<Long> {
        a() {
        }

        /* renamed from: a */
        public void onNext(Long l) {
            c.this.a(l.longValue());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            c.this.c();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            th.printStackTrace();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            c.this.f7170c = disposable;
        }
    }

    public c(Long l, TimeUnit timeUnit) {
        this.f7169b = l;
        this.f7168a = timeUnit;
    }

    public abstract void a(long j);

    public boolean b() {
        Disposable disposable = this.f7170c;
        return disposable == null || disposable.isDisposed();
    }

    public abstract void c();

    public void d() {
        Observable.interval(0L, 1L, TimeUnit.SECONDS).take(this.f7169b.longValue() + 1).map(new Function() { // from class: com.ifengyu.library.a.a
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return c.this.a((Long) obj);
            }
        }).observeOn(AndroidSchedulers.mainThread()).subscribe(new a());
    }

    public /* synthetic */ Long a(Long l) throws Exception {
        return Long.valueOf(this.f7169b.longValue() - l.longValue());
    }

    public void a() {
        Disposable disposable = this.f7170c;
        if (disposable != null && !disposable.isDisposed()) {
            this.f7170c.dispose();
        }
    }
}

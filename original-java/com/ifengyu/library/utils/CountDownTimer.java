package com.ifengyu.library.utils;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.concurrent.TimeUnit;

/* renamed from: com.ifengyu.library.utils.e */
/* loaded from: classes2.dex */
public abstract class CountDownTimer {

    /* renamed from: a */
    private Long f16384a;

    /* renamed from: b */
    private Disposable f16385b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CountDownTimer.java */
    /* renamed from: com.ifengyu.library.utils.e$a */
    /* loaded from: classes2.dex */
    public class C4969a implements Observer<Long> {
        C4969a() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: a */
        public void onNext(Long l) {
            CountDownTimer.this.mo8684g(l.longValue());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            CountDownTimer.this.mo8685f();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            th.printStackTrace();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            CountDownTimer.this.f16385b = disposable;
        }
    }

    public CountDownTimer(Long l, TimeUnit timeUnit) {
        this.f16384a = l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public /* synthetic */ Long m8686e(Long l) throws Exception {
        return Long.valueOf(this.f16384a.longValue() - l.longValue());
    }

    /* renamed from: b */
    public void m8689b() {
        Disposable disposable = this.f16385b;
        if (disposable == null || disposable.isDisposed()) {
            return;
        }
        this.f16385b.dispose();
    }

    /* renamed from: c */
    public boolean m8688c() {
        Disposable disposable = this.f16385b;
        return disposable == null || disposable.isDisposed();
    }

    /* renamed from: f */
    public abstract void mo8685f();

    /* renamed from: g */
    public abstract void mo8684g(long j);

    /* renamed from: h */
    public void m8683h() {
        Observable.interval(0L, 1L, TimeUnit.SECONDS).take(this.f16384a.longValue() + 1).map(new Function() { // from class: com.ifengyu.library.utils.a
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return CountDownTimer.this.m8686e((Long) obj);
            }
        }).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4969a());
    }
}

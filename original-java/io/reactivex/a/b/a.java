package io.reactivex.a.b;

import android.os.Handler;
import android.os.Looper;
import io.reactivex.r;
import java.util.concurrent.Callable;

/* compiled from: AndroidSchedulers */
public final class a {
    private static final r a = io.reactivex.a.a.a.a((Callable<r>) new Callable<r>() {
        /* renamed from: a */
        public r call() throws Exception {
            return C0080a.a;
        }
    });

    /* renamed from: io.reactivex.a.b.a$a reason: collision with other inner class name */
    /* compiled from: AndroidSchedulers */
    private static final class C0080a {
        static final r a = new b(new Handler(Looper.getMainLooper()));
    }

    public static r a() {
        return io.reactivex.a.a.a.a(a);
    }
}

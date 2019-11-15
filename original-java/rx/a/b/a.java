package rx.a.b;

import android.os.Handler;
import android.os.Looper;
import rx.d;

/* compiled from: AndroidSchedulers */
public final class a {

    /* renamed from: rx.a.b.a$a reason: collision with other inner class name */
    /* compiled from: AndroidSchedulers */
    private static class C0099a {
        static final d a = new b(new Handler(Looper.getMainLooper()));
    }

    public static d a() {
        d b = rx.a.a.a.a().b().b();
        return b != null ? b : C0099a.a;
    }
}

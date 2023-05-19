package p048b.p052b.p056b.p057a.p058f;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: b.b.b.a.f.a */
/* loaded from: classes.dex */
public final class C1116a {

    /* renamed from: b */
    private static final C1116a f5280b = new C1116a();

    /* renamed from: c */
    private static final int f5281c;

    /* renamed from: d */
    static final int f5282d;

    /* renamed from: e */
    static final int f5283e;

    /* renamed from: a */
    private final Executor f5284a = new ExecutorC1117a((byte) 0);

    /* renamed from: b.b.b.a.f.a$a */
    /* loaded from: classes.dex */
    static class ExecutorC1117a implements Executor {
        private ExecutorC1117a() {
        }

        /* synthetic */ ExecutorC1117a(byte b) {
            this();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f5281c = availableProcessors;
        f5282d = availableProcessors + 1;
        f5283e = (availableProcessors * 2) + 1;
    }

    /* renamed from: a */
    public static ExecutorService m21162a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f5282d, f5283e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: b */
    public static Executor m21161b() {
        return f5280b.f5284a;
    }
}

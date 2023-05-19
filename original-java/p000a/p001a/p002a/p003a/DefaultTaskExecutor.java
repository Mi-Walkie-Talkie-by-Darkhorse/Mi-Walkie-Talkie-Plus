package p000a.p001a.p002a.p003a;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* renamed from: a.a.a.a.b */
/* loaded from: classes.dex */
public class DefaultTaskExecutor extends TaskExecutor {

    /* renamed from: a */
    private final Object f4a = new Object();

    /* renamed from: b */
    private final ExecutorService f5b = Executors.newFixedThreadPool(4, new ThreadFactoryC0001a(this));
    @Nullable

    /* renamed from: c */
    private volatile Handler f6c;

    /* compiled from: DefaultTaskExecutor.java */
    /* renamed from: a.a.a.a.b$a */
    /* loaded from: classes.dex */
    class ThreadFactoryC0001a implements ThreadFactory {

        /* renamed from: a */
        private final AtomicInteger f7a = new AtomicInteger(0);

        ThreadFactoryC0001a(DefaultTaskExecutor defaultTaskExecutor) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(String.format("arch_disk_io_%d", Integer.valueOf(this.f7a.getAndIncrement())));
            return thread;
        }
    }

    /* renamed from: d */
    private static Handler m26537d(@NonNull Looper looper) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return Handler.createAsync(looper);
        }
        if (i >= 16) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            } catch (InvocationTargetException unused2) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }

    @Override // p000a.p001a.p002a.p003a.TaskExecutor
    /* renamed from: a */
    public void mo26536a(Runnable runnable) {
        this.f5b.execute(runnable);
    }

    @Override // p000a.p001a.p002a.p003a.TaskExecutor
    /* renamed from: b */
    public boolean mo26535b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    @Override // p000a.p001a.p002a.p003a.TaskExecutor
    /* renamed from: c */
    public void mo26534c(Runnable runnable) {
        if (this.f6c == null) {
            synchronized (this.f4a) {
                if (this.f6c == null) {
                    this.f6c = m26537d(Looper.getMainLooper());
                }
            }
        }
        this.f6c.post(runnable);
    }
}

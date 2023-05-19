package p000a.p001a.p002a.p003a;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* renamed from: a.a.a.a.a */
/* loaded from: classes.dex */
public class ArchTaskExecutor extends TaskExecutor {

    /* renamed from: c */
    private static volatile ArchTaskExecutor f0c;
    @NonNull

    /* renamed from: d */
    private static final Executor f1d = new ExecutorC0000a();
    @NonNull

    /* renamed from: a */
    private TaskExecutor f2a;
    @NonNull

    /* renamed from: b */
    private TaskExecutor f3b;

    /* compiled from: ArchTaskExecutor.java */
    /* renamed from: a.a.a.a.a$a */
    /* loaded from: classes.dex */
    static class ExecutorC0000a implements Executor {
        ExecutorC0000a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            ArchTaskExecutor.m26538e().mo26536a(runnable);
        }
    }

    private ArchTaskExecutor() {
        DefaultTaskExecutor defaultTaskExecutor = new DefaultTaskExecutor();
        this.f3b = defaultTaskExecutor;
        this.f2a = defaultTaskExecutor;
    }

    @NonNull
    /* renamed from: d */
    public static Executor m26539d() {
        return f1d;
    }

    @NonNull
    /* renamed from: e */
    public static ArchTaskExecutor m26538e() {
        if (f0c != null) {
            return f0c;
        }
        synchronized (ArchTaskExecutor.class) {
            if (f0c == null) {
                f0c = new ArchTaskExecutor();
            }
        }
        return f0c;
    }

    @Override // p000a.p001a.p002a.p003a.TaskExecutor
    /* renamed from: a */
    public void mo26536a(Runnable runnable) {
        this.f2a.mo26536a(runnable);
    }

    @Override // p000a.p001a.p002a.p003a.TaskExecutor
    /* renamed from: b */
    public boolean mo26535b() {
        return this.f2a.mo26535b();
    }

    @Override // p000a.p001a.p002a.p003a.TaskExecutor
    /* renamed from: c */
    public void mo26534c(Runnable runnable) {
        this.f2a.mo26534c(runnable);
    }
}

package com.bumptech.glide.load.engine.c;

import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.support.annotation.NonNull;
import android.util.Log;
import com.tencent.open.SocialConstants;
import java.io.File;
import java.io.FilenameFilter;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* compiled from: GlideExecutor */
public final class a extends ThreadPoolExecutor {
    private static final long b = TimeUnit.SECONDS.toMillis(10);
    private final boolean a;

    /* renamed from: com.bumptech.glide.load.engine.c.a$a reason: collision with other inner class name */
    /* compiled from: GlideExecutor */
    private static final class C0017a implements ThreadFactory {
        final b a;
        final boolean b;
        private final String c;
        private int d;

        C0017a(String str, b bVar, boolean z) {
            this.c = str;
            this.a = bVar;
            this.b = z;
        }

        public synchronized Thread newThread(@NonNull Runnable runnable) {
            AnonymousClass1 r0;
            r0 = new Thread(runnable, "glide-" + this.c + "-thread-" + this.d) {
                public void run() {
                    Process.setThreadPriority(9);
                    if (C0017a.this.b) {
                        StrictMode.setThreadPolicy(new Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        super.run();
                    } catch (Throwable th) {
                        C0017a.this.a.a(th);
                    }
                }
            };
            this.d++;
            return r0;
        }
    }

    /* compiled from: GlideExecutor */
    public interface b {
        public static final b a = new b() {
            public void a(Throwable th) {
            }
        };
        public static final b b = new b() {
            public void a(Throwable th) {
                if (th != null && Log.isLoggable("GlideExecutor", 6)) {
                    Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                }
            }
        };
        public static final b c = new b() {
            public void a(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        };
        public static final b d = b;

        void a(Throwable th);
    }

    public static a a() {
        return a(1, "disk-cache", b.d);
    }

    public static a a(int i, String str, b bVar) {
        return new a(i, str, bVar, true, false);
    }

    public static a b() {
        return b(d(), SocialConstants.PARAM_SOURCE, b.d);
    }

    public static a b(int i, String str, b bVar) {
        return new a(i, str, bVar, false, false);
    }

    public static a c() {
        return new a(0, Integer.MAX_VALUE, b, "source-unlimited", b.d, false, false, new SynchronousQueue());
    }

    a(int i, String str, b bVar, boolean z, boolean z2) {
        this(i, i, 0, str, bVar, z, z2);
    }

    a(int i, int i2, long j, String str, b bVar, boolean z, boolean z2) {
        this(i, i2, j, str, bVar, z, z2, new PriorityBlockingQueue());
    }

    a(int i, int i2, long j, String str, b bVar, boolean z, boolean z2, BlockingQueue<Runnable> blockingQueue) {
        super(i, i2, j, TimeUnit.MILLISECONDS, blockingQueue, new C0017a(str, bVar, z));
        this.a = z2;
    }

    public void execute(Runnable runnable) {
        if (this.a) {
            runnable.run();
        } else {
            super.execute(runnable);
        }
    }

    @NonNull
    public Future<?> submit(Runnable runnable) {
        return a(super.submit(runnable));
    }

    private <T> Future<T> a(Future<T> future) {
        if (this.a) {
            boolean z = false;
            while (!future.isDone()) {
                try {
                    future.get();
                } catch (ExecutionException e) {
                    throw new RuntimeException(e);
                } catch (InterruptedException e2) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        return future;
    }

    @NonNull
    public <T> Future<T> submit(Runnable runnable, T t) {
        return a(super.submit(runnable, t));
    }

    public <T> Future<T> submit(Callable<T> callable) {
        return a(super.submit(callable));
    }

    /* JADX INFO: finally extract failed */
    public static int d() {
        File[] fileArr;
        ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            File file = new File("/sys/devices/system/cpu/");
            final Pattern compile = Pattern.compile("cpu[0-9]+");
            fileArr = file.listFiles(new FilenameFilter() {
                public boolean accept(File file, String str) {
                    return compile.matcher(str).matches();
                }
            });
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
        return Math.min(4, Math.max(Math.max(1, Runtime.getRuntime().availableProcessors()), fileArr != null ? fileArr.length : 0));
    }
}

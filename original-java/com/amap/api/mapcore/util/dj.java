package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: AsyncTask */
public abstract class dj<Params, Progress, Result> {
    public static final Executor a = new ThreadPoolExecutor(5, 128, 1, TimeUnit.SECONDS, e, d, new DiscardOldestPolicy());
    public static final Executor b;
    public static final Executor c = Executors.newFixedThreadPool(2, d);
    private static final ThreadFactory d = new ThreadFactory() {
        private final AtomicInteger a = new AtomicInteger(1);

        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AsyncTask #" + this.a.getAndIncrement());
        }
    };
    private static final BlockingQueue<Runnable> e = new LinkedBlockingQueue(10);
    private static final b f = new b(Looper.getMainLooper());
    private static volatile Executor g = b;
    private final e<Params, Result> h = new e<Params, Result>() {
        public Result call() throws Exception {
            dj.this.l.set(true);
            Process.setThreadPriority(10);
            return dj.this.d(dj.this.a((Params[]) this.b));
        }
    };
    /* access modifiers changed from: private */
    public final FutureTask<Result> i = new FutureTask<Result>(this.h) {
        /* access modifiers changed from: protected */
        public void done() {
            try {
                dj.this.c(dj.this.i.get());
            } catch (InterruptedException e) {
                Log.w("AsyncTask", e);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occured while executing doInBackground()", e2.getCause());
            } catch (CancellationException e3) {
                dj.this.c(null);
            }
        }
    };
    private volatile d j = d.PENDING;
    private final AtomicBoolean k = new AtomicBoolean();
    /* access modifiers changed from: private */
    public final AtomicBoolean l = new AtomicBoolean();

    /* compiled from: AsyncTask */
    private static class a<Data> {
        final dj a;
        final Data[] b;

        a(dj djVar, Data... dataArr) {
            this.a = djVar;
            this.b = dataArr;
        }
    }

    /* compiled from: AsyncTask */
    private static class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (message.obj != null && (message.obj instanceof a)) {
                a aVar = (a) message.obj;
                switch (message.what) {
                    case 1:
                        aVar.a.e(aVar.b[0]);
                        return;
                    case 2:
                        aVar.a.b((Progress[]) aVar.b);
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* compiled from: AsyncTask */
    private static class c implements Executor {
        final ArrayDeque<Runnable> a;
        Runnable b;

        private c() {
            this.a = new ArrayDeque<>();
        }

        public synchronized void execute(final Runnable runnable) {
            this.a.offer(new Runnable() {
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        c.this.a();
                    }
                }
            });
            if (this.b == null) {
                a();
            }
        }

        /* access modifiers changed from: protected */
        public synchronized void a() {
            Runnable runnable = (Runnable) this.a.poll();
            this.b = runnable;
            if (runnable != null) {
                dj.a.execute(this.b);
            }
        }
    }

    /* compiled from: AsyncTask */
    public enum d {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* compiled from: AsyncTask */
    private static abstract class e<Params, Result> implements Callable<Result> {
        Params[] b;

        private e() {
        }
    }

    /* access modifiers changed from: protected */
    public abstract Result a(Params... paramsArr);

    static {
        Executor newSingleThreadExecutor;
        if (ee.c()) {
            newSingleThreadExecutor = new c();
        } else {
            newSingleThreadExecutor = Executors.newSingleThreadExecutor(d);
        }
        b = newSingleThreadExecutor;
    }

    /* access modifiers changed from: private */
    public void c(Result result) {
        if (!this.l.get()) {
            d(result);
        }
    }

    /* access modifiers changed from: private */
    public Result d(Result result) {
        f.obtainMessage(1, new a(this, result)).sendToTarget();
        return result;
    }

    public final d a() {
        return this.j;
    }

    /* access modifiers changed from: protected */
    public void b() {
    }

    /* access modifiers changed from: protected */
    public void a(Result result) {
    }

    /* access modifiers changed from: protected */
    public void b(Progress... progressArr) {
    }

    /* access modifiers changed from: protected */
    public void b(Result result) {
        c();
    }

    /* access modifiers changed from: protected */
    public void c() {
    }

    public final boolean d() {
        return this.k.get();
    }

    public final boolean a(boolean z) {
        this.k.set(true);
        return this.i.cancel(z);
    }

    public final dj<Params, Progress, Result> c(Params... paramsArr) {
        return a(g, paramsArr);
    }

    public final dj<Params, Progress, Result> a(Executor executor, Params... paramsArr) {
        if (this.j != d.PENDING) {
            switch (this.j) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.j = d.RUNNING;
        b();
        this.h.b = paramsArr;
        executor.execute(this.i);
        return this;
    }

    /* access modifiers changed from: private */
    public void e(Result result) {
        if (d()) {
            b(result);
        } else {
            a(result);
        }
        this.j = d.FINISHED;
    }
}

package com.liulishuo.filedownloader.download;

import android.database.sqlite.SQLiteFullException;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.exception.FileDownloadOutOfSpaceException;
import com.liulishuo.filedownloader.message.c;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.services.f;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.LockSupport;

/* compiled from: DownloadStatusCallback */
public class e implements Callback {
    private final FileDownloadModel a;
    private final com.liulishuo.filedownloader.b.a b;
    private final a c;
    private final int d;
    private final int e;
    private final int f;
    private long g;
    private Handler h;
    private HandlerThread i;
    private volatile boolean j = false;
    private volatile Thread k;
    private volatile long l = 0;
    private final AtomicLong m = new AtomicLong();
    private final AtomicBoolean n = new AtomicBoolean(false);
    private final AtomicBoolean o = new AtomicBoolean(false);
    private final AtomicBoolean p = new AtomicBoolean(true);

    /* compiled from: DownloadStatusCallback */
    public static class a {
        private boolean a;
        private Exception b;
        private int c;

        /* access modifiers changed from: 0000 */
        public void a(boolean z) {
            this.a = z;
        }

        public boolean a() {
            return this.a;
        }

        /* access modifiers changed from: 0000 */
        public void a(Exception exc) {
            this.b = exc;
        }

        /* access modifiers changed from: 0000 */
        public void a(int i) {
            this.c = i;
        }

        public Exception b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }
    }

    e(FileDownloadModel fileDownloadModel, int i2, int i3, int i4) {
        this.a = fileDownloadModel;
        this.b = c.a().c();
        if (i3 < 5) {
            i3 = 5;
        }
        this.e = i3;
        this.f = i4;
        this.c = new a();
        this.d = i2;
    }

    public boolean a() {
        return this.i != null && this.i.isAlive();
    }

    /* access modifiers changed from: 0000 */
    public void b() {
        if (this.h != null) {
            this.h.removeCallbacksAndMessages(null);
            this.i.quit();
            this.k = Thread.currentThread();
            while (this.j) {
                LockSupport.parkNanos(TimeUnit.MILLISECONDS.toNanos(100));
            }
            this.k = null;
        }
    }

    public void c() {
        this.a.a(1);
        this.b.f(this.a.a());
        a(1);
    }

    /* access modifiers changed from: 0000 */
    public void d() {
        this.a.a(6);
        a(6);
        this.b.a(this.a.a());
    }

    /* access modifiers changed from: 0000 */
    public void a(boolean z, long j2, String str, String str2) throws IllegalArgumentException {
        String j3 = this.a.j();
        if (j3 == null || j3.equals(str)) {
            this.c.a(z);
            this.a.a(2);
            this.a.c(j2);
            this.a.b(str);
            this.a.d(str2);
            this.b.a(this.a.a(), j2, str, str2);
            a(2);
            this.g = a(j2, (long) this.f);
            this.o.compareAndSet(false, true);
            return;
        }
        throw new IllegalArgumentException(g.a("callback onConnected must with precondition succeed, but the etag is changes(%s != %s)", str, j3));
    }

    /* access modifiers changed from: 0000 */
    public void e() {
        this.i = new HandlerThread("source-status-callback");
        this.i.start();
        this.h = new Handler(this.i.getLooper(), this);
    }

    /* access modifiers changed from: 0000 */
    public void a(long j2) {
        this.m.addAndGet(j2);
        this.a.b(j2);
        b(SystemClock.elapsedRealtime());
        if (this.h == null) {
            i();
        } else if (this.n.get()) {
            a(this.h.obtainMessage(3));
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(Exception exc, int i2) {
        this.m.set(0);
        if (this.h == null) {
            b(exc, i2);
        } else {
            a(this.h.obtainMessage(5, i2, 0, exc));
        }
    }

    /* access modifiers changed from: 0000 */
    public void f() {
        l();
    }

    /* access modifiers changed from: 0000 */
    public void a(Exception exc) {
        c(exc);
    }

    /* access modifiers changed from: 0000 */
    public void g() throws IOException {
        if (!k()) {
            j();
        }
    }

    private synchronized void a(Message message) {
        if (this.i.isAlive()) {
            try {
                this.h.sendMessage(message);
            } catch (IllegalStateException e2) {
                if (this.i.isAlive()) {
                    throw e2;
                } else if (d.a) {
                    d.c(this, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread.", Integer.valueOf(message.what));
                }
            }
        } else if (d.a) {
            d.c(this, "require callback %d but the host thread of the flow has already dead, what is occurred because of there are several reason can final this flow on different thread.", Integer.valueOf(message.what));
        }
    }

    private static long a(long j2, long j3) {
        if (j3 <= 0) {
            return -1;
        }
        if (j2 == -1) {
            return 1;
        }
        long j4 = j2 / j3;
        if (j4 > 0) {
            return j4;
        }
        return 1;
    }

    private Exception b(Exception exc) {
        String e2 = this.a.e();
        if ((!this.a.i() && !com.liulishuo.filedownloader.e.e.a().f) || !(exc instanceof IOException) || !new File(e2).exists()) {
            return exc;
        }
        long f2 = g.f(e2);
        if (f2 > 4096) {
            return exc;
        }
        long j2 = 0;
        File file = new File(e2);
        if (!file.exists()) {
            d.a((Object) this, (Throwable) exc, "Exception with: free space isn't enough, and the target file not exist.", new Object[0]);
        } else {
            j2 = file.length();
        }
        if (VERSION.SDK_INT >= 9) {
            return new FileDownloadOutOfSpaceException(f2, 4096, j2, exc);
        }
        return new FileDownloadOutOfSpaceException(f2, 4096, j2);
    }

    private void a(SQLiteFullException sQLiteFullException) {
        int a2 = this.a.a();
        if (d.a) {
            d.c(this, "the data of the task[%d] is dirty, because the SQLite full exception[%s], so remove it from the database directly.", Integer.valueOf(a2), sQLiteFullException.toString());
        }
        this.a.c(sQLiteFullException.toString());
        this.a.a(-1);
        this.b.e(a2);
        this.b.d(a2);
    }

    private void h() throws IOException {
        boolean z;
        String e2 = this.a.e();
        String d2 = this.a.d();
        File file = new File(e2);
        try {
            File file2 = new File(d2);
            if (file2.exists()) {
                long length = file2.length();
                if (!file2.delete()) {
                    throw new IOException(g.a("Can't delete the old file([%s], [%d]), so can't replace it with the new downloaded one.", d2, Long.valueOf(length)));
                }
                d.d(this, "The target file([%s], [%d]) will be replaced with the new downloaded file[%d]", d2, Long.valueOf(length), Long.valueOf(file.length()));
            }
            z = !file.renameTo(file2);
            if (z) {
                try {
                    throw new IOException(g.a("Can't rename the  temp downloaded file(%s) to the target file(%s)", e2, d2));
                } catch (Throwable th) {
                    th = th;
                    d.d(this, "delete the temp file(%s) failed, on completed downloading.", e2);
                    throw th;
                }
            } else if (z && file.exists() && !file.delete()) {
                d.d(this, "delete the temp file(%s) failed, on completed downloading.", e2);
            }
        } catch (Throwable th2) {
            th = th2;
            z = true;
            if (z && file.exists() && !file.delete()) {
                d.d(this, "delete the temp file(%s) failed, on completed downloading.", e2);
            }
            throw th;
        }
    }

    public boolean handleMessage(Message message) {
        this.j = true;
        switch (message.what) {
            case 3:
                try {
                    i();
                    break;
                } catch (Throwable th) {
                    this.j = false;
                    if (this.k != null) {
                        LockSupport.unpark(this.k);
                    }
                    throw th;
                }
            case 5:
                b((Exception) message.obj, message.arg1);
                break;
        }
        this.j = false;
        if (this.k != null) {
            LockSupport.unpark(this.k);
        }
        return true;
    }

    private void i() {
        if (this.a.g() == this.a.h()) {
            this.b.a(this.a.a(), this.a.g());
            return;
        }
        if (this.o.compareAndSet(true, false)) {
            if (d.a) {
                d.b(this, "handleProgress update model's status with progress", new Object[0]);
            }
            this.a.a(3);
        }
        if (this.n.compareAndSet(true, false)) {
            if (d.a) {
                d.b(this, "handleProgress notify user progress status", new Object[0]);
            }
            a(3);
        }
    }

    private void j() throws IOException {
        h();
        this.a.a(-3);
        this.b.b(this.a.a(), this.a.h());
        this.b.d(this.a.a());
        a(-3);
        if (com.liulishuo.filedownloader.e.e.a().g) {
            f.a(this.a);
        }
    }

    private boolean k() {
        if (this.a.i()) {
            this.a.c(this.a.g());
        } else if (this.a.g() != this.a.h()) {
            a((Exception) new FileDownloadGiveUpRetryException(g.a("sofar[%d] not equal total[%d]", Long.valueOf(this.a.g()), Long.valueOf(this.a.h()))));
            return true;
        }
        return false;
    }

    private void b(Exception exc, int i2) {
        Exception b2 = b(exc);
        this.c.a(b2);
        this.c.a(this.d - i2);
        this.a.a(5);
        this.a.c(b2.toString());
        this.b.a(this.a.a(), (Throwable) b2);
        a(5);
    }

    private void l() {
        this.a.a(-2);
        this.b.c(this.a.a(), this.a.g());
        a(-2);
    }

    private void c(Exception exc) {
        Exception e2 = b(exc);
        if (e2 instanceof SQLiteFullException) {
            a((SQLiteFullException) e2);
        } else {
            try {
                this.a.a(-1);
                this.a.c(exc.toString());
                this.b.a(this.a.a(), (Throwable) e2, this.a.g());
            } catch (SQLiteFullException e3) {
                e2 = e3;
                a((SQLiteFullException) e2);
            }
        }
        this.c.a(e2);
        a(-1);
    }

    private void b(long j2) {
        boolean z;
        if (this.p.compareAndSet(true, false)) {
            z = true;
        } else {
            z = this.g != -1 && this.m.get() >= this.g && j2 - this.l >= ((long) this.e);
        }
        if (z && this.n.compareAndSet(false, true)) {
            if (d.a) {
                d.b(this, "inspectNeedCallbackToUser need callback to user", new Object[0]);
            }
            this.l = j2;
            this.m.set(0);
        }
    }

    private void a(byte b2) {
        if (b2 != -2) {
            c.a().a(com.liulishuo.filedownloader.message.d.a(b2, this.a, this.c));
        } else if (d.a) {
            d.c(this, "High concurrent cause, Already paused and we don't need to call-back to Task in here, %d", Integer.valueOf(this.a.a()));
        }
    }
}

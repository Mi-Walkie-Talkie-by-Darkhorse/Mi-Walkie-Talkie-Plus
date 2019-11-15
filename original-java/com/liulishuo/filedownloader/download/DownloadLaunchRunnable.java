package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.e.b;
import com.liulishuo.filedownloader.e.c;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.e.e;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.exception.FileDownloadGiveUpRetryException;
import com.liulishuo.filedownloader.exception.FileDownloadHttpException;
import com.liulishuo.filedownloader.exception.FileDownloadNetworkPolicyException;
import com.liulishuo.filedownloader.exception.FileDownloadOutOfSpaceException;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.y;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

public class DownloadLaunchRunnable implements g, Runnable {
    private static final ThreadPoolExecutor p = b.a("ConnectionBlock");
    private long A;
    private long B;
    int a;
    private final e b;
    private final int c;
    private final FileDownloadModel d;
    private final FileDownloadHeader e;
    private final boolean f;
    private final boolean g;
    private final com.liulishuo.filedownloader.b.a h;
    private final y i;
    private boolean j;
    private boolean k;
    private final boolean l;
    private final ArrayList<d> m;
    private d n;
    private boolean o;
    private boolean q;
    private boolean r;
    private boolean s;
    private final AtomicBoolean t;
    private volatile boolean u;
    private volatile boolean v;
    private volatile Exception w;
    private String x;
    private long y;
    private long z;

    class DiscardSafely extends Throwable {
        DiscardSafely() {
        }
    }

    class RetryDirectly extends Throwable {
        RetryDirectly() {
        }
    }

    public static class a {
        private FileDownloadModel a;
        private FileDownloadHeader b;
        private y c;
        private Integer d;
        private Integer e;
        private Boolean f;
        private Boolean g;
        private Integer h;

        public a a(FileDownloadModel fileDownloadModel) {
            this.a = fileDownloadModel;
            return this;
        }

        public a a(FileDownloadHeader fileDownloadHeader) {
            this.b = fileDownloadHeader;
            return this;
        }

        public a a(y yVar) {
            this.c = yVar;
            return this;
        }

        public a a(Integer num) {
            this.d = num;
            return this;
        }

        public a b(Integer num) {
            this.e = num;
            return this;
        }

        public a a(Boolean bool) {
            this.f = bool;
            return this;
        }

        public a b(Boolean bool) {
            this.g = bool;
            return this;
        }

        public a c(Integer num) {
            this.h = num;
            return this;
        }

        public DownloadLaunchRunnable a() {
            if (this.a != null && this.c != null && this.d != null && this.e != null && this.f != null && this.g != null && this.h != null) {
                return new DownloadLaunchRunnable(this.a, this.b, this.c, this.d.intValue(), this.e.intValue(), this.f.booleanValue(), this.g.booleanValue(), this.h.intValue());
            }
            throw new IllegalArgumentException();
        }
    }

    private DownloadLaunchRunnable(FileDownloadModel fileDownloadModel, FileDownloadHeader fileDownloadHeader, y yVar, int i2, int i3, boolean z2, boolean z3, int i4) {
        this.c = 5;
        this.k = false;
        this.m = new ArrayList<>(5);
        this.y = 0;
        this.z = 0;
        this.A = 0;
        this.B = 0;
        this.t = new AtomicBoolean(true);
        this.u = false;
        this.j = false;
        this.d = fileDownloadModel;
        this.e = fileDownloadHeader;
        this.f = z2;
        this.g = z3;
        this.h = c.a().c();
        this.l = c.a().e();
        this.i = yVar;
        this.a = i4;
        this.b = new e(fileDownloadModel, i4, i2, i3);
    }

    public void a() {
        this.u = true;
        if (this.n != null) {
            this.n.a();
        }
        Iterator it = ((ArrayList) this.m.clone()).iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar != null) {
                dVar.a();
            }
        }
    }

    public void b() {
        a(this.h.c(this.d.a()));
        this.b.c();
    }

    /* JADX WARNING: Removed duplicated region for block: B:109:0x0203  */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x0228 A[SYNTHETIC, Splitter:B:119:0x0228] */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x0264  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x017d A[Catch:{ FileDownloadGiveUpRetryException | IOException | IllegalArgumentException | InterruptedException -> 0x0176, IllegalAccessException -> 0x021e, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b, all -> 0x0079 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r10 = this;
            r3 = -2
            r1 = 1
            r2 = 0
            r0 = 10
            android.os.Process.setThreadPriority(r0)     // Catch:{ all -> 0x0079 }
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r10.d     // Catch:{ all -> 0x0079 }
            byte r0 = r0.f()     // Catch:{ all -> 0x0079 }
            if (r0 == r1) goto L_0x00a7
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r10.d     // Catch:{ all -> 0x0079 }
            byte r0 = r0.f()     // Catch:{ all -> 0x0079 }
            if (r0 != r3) goto L_0x0045
            boolean r0 = com.liulishuo.filedownloader.e.d.a     // Catch:{ all -> 0x0079 }
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = "High concurrent cause, start runnable but already paused %d"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x0079 }
            r3 = 0
            com.liulishuo.filedownloader.model.FileDownloadModel r4 = r10.d     // Catch:{ all -> 0x0079 }
            int r4 = r4.a()     // Catch:{ all -> 0x0079 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0079 }
            r1[r3] = r4     // Catch:{ all -> 0x0079 }
            com.liulishuo.filedownloader.e.d.c(r10, r0, r1)     // Catch:{ all -> 0x0079 }
        L_0x0031:
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.b()
            boolean r0 = r10.u
            if (r0 == 0) goto L_0x008e
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.f()
        L_0x003f:
            java.util.concurrent.atomic.AtomicBoolean r0 = r10.t
            r0.set(r2)
        L_0x0044:
            return
        L_0x0045:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch:{ all -> 0x0079 }
            java.lang.String r1 = "Task[%d] can't start the download runnable, because its status is %d not %d"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x0079 }
            r4 = 0
            com.liulishuo.filedownloader.model.FileDownloadModel r5 = r10.d     // Catch:{ all -> 0x0079 }
            int r5 = r5.a()     // Catch:{ all -> 0x0079 }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ all -> 0x0079 }
            r3[r4] = r5     // Catch:{ all -> 0x0079 }
            r4 = 1
            com.liulishuo.filedownloader.model.FileDownloadModel r5 = r10.d     // Catch:{ all -> 0x0079 }
            byte r5 = r5.f()     // Catch:{ all -> 0x0079 }
            java.lang.Byte r5 = java.lang.Byte.valueOf(r5)     // Catch:{ all -> 0x0079 }
            r3[r4] = r5     // Catch:{ all -> 0x0079 }
            r4 = 2
            r5 = 1
            java.lang.Byte r5 = java.lang.Byte.valueOf(r5)     // Catch:{ all -> 0x0079 }
            r3[r4] = r5     // Catch:{ all -> 0x0079 }
            java.lang.String r1 = com.liulishuo.filedownloader.e.g.a(r1, r3)     // Catch:{ all -> 0x0079 }
            r0.<init>(r1)     // Catch:{ all -> 0x0079 }
            r10.b(r0)     // Catch:{ all -> 0x0079 }
            goto L_0x0031
        L_0x0079:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.b()
            boolean r1 = r10.u
            if (r1 == 0) goto L_0x027d
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.f()
        L_0x0088:
            java.util.concurrent.atomic.AtomicBoolean r1 = r10.t
            r1.set(r2)
            throw r0
        L_0x008e:
            boolean r0 = r10.v
            if (r0 == 0) goto L_0x009a
            com.liulishuo.filedownloader.download.e r0 = r10.b
            java.lang.Exception r1 = r10.w
            r0.a(r1)
            goto L_0x003f
        L_0x009a:
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ IOException -> 0x00a0 }
            r0.g()     // Catch:{ IOException -> 0x00a0 }
            goto L_0x003f
        L_0x00a0:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.a(r0)
            goto L_0x003f
        L_0x00a7:
            boolean r0 = r10.u     // Catch:{ all -> 0x0079 }
            if (r0 != 0) goto L_0x00b0
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ all -> 0x0079 }
            r0.d()     // Catch:{ all -> 0x0079 }
        L_0x00b0:
            boolean r0 = r10.u     // Catch:{ all -> 0x0079 }
            if (r0 == 0) goto L_0x00fb
            boolean r0 = com.liulishuo.filedownloader.e.d.a     // Catch:{ all -> 0x0079 }
            if (r0 == 0) goto L_0x00cd
            java.lang.String r0 = "High concurrent cause, start runnable but already paused %d"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch:{ all -> 0x0079 }
            r3 = 0
            com.liulishuo.filedownloader.model.FileDownloadModel r4 = r10.d     // Catch:{ all -> 0x0079 }
            int r4 = r4.a()     // Catch:{ all -> 0x0079 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0079 }
            r1[r3] = r4     // Catch:{ all -> 0x0079 }
            com.liulishuo.filedownloader.e.d.c(r10, r0, r1)     // Catch:{ all -> 0x0079 }
        L_0x00cd:
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.b()
            boolean r0 = r10.u
            if (r0 == 0) goto L_0x00e2
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.f()
        L_0x00db:
            java.util.concurrent.atomic.AtomicBoolean r0 = r10.t
            r0.set(r2)
            goto L_0x0044
        L_0x00e2:
            boolean r0 = r10.v
            if (r0 == 0) goto L_0x00ee
            com.liulishuo.filedownloader.download.e r0 = r10.b
            java.lang.Exception r1 = r10.w
            r0.a(r1)
            goto L_0x00db
        L_0x00ee:
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ IOException -> 0x00f4 }
            r0.g()     // Catch:{ IOException -> 0x00f4 }
            goto L_0x00db
        L_0x00f4:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.a(r0)
            goto L_0x00db
        L_0x00fb:
            r10.i()     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r10.g()     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r10.j()     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            com.liulishuo.filedownloader.b.a r0 = r10.h     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            com.liulishuo.filedownloader.model.FileDownloadModel r3 = r10.d     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            int r3 = r3.a()     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            java.util.List r3 = r0.c(r3)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r10.a(r3)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            boolean r0 = r10.u     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            if (r0 == 0) goto L_0x014b
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r10.d     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r3 = -2
            r0.a(r3)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.b()
            boolean r0 = r10.u
            if (r0 == 0) goto L_0x0132
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.f()
        L_0x012b:
            java.util.concurrent.atomic.AtomicBoolean r0 = r10.t
            r0.set(r2)
            goto L_0x0044
        L_0x0132:
            boolean r0 = r10.v
            if (r0 == 0) goto L_0x013e
            com.liulishuo.filedownloader.download.e r0 = r10.b
            java.lang.Exception r1 = r10.w
            r0.a(r1)
            goto L_0x012b
        L_0x013e:
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ IOException -> 0x0144 }
            r0.g()     // Catch:{ IOException -> 0x0144 }
            goto L_0x012b
        L_0x0144:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.a(r0)
            goto L_0x012b
        L_0x014b:
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r10.d     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            long r4 = r0.h()     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r10.d     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            java.lang.String r0 = r0.e()     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r10.a(r4, r0)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            int r6 = r10.b(r4)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            if (r6 > 0) goto L_0x0182
            java.lang.IllegalAccessException r0 = new java.lang.IllegalAccessException     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            java.lang.String r3 = "invalid connection count %d, the connection count must be larger than 0"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r5 = 0
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r4[r5] = r6     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            java.lang.String r3 = com.liulishuo.filedownloader.e.g.a(r3, r4)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r0.<init>(r3)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            throw r0     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
        L_0x0176:
            r0 = move-exception
        L_0x0177:
            boolean r3 = r10.a(r0)     // Catch:{ all -> 0x0079 }
            if (r3 == 0) goto L_0x0228
            r10.c(r0)     // Catch:{ all -> 0x0079 }
            goto L_0x00b0
        L_0x0182:
            r8 = 0
            int r0 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r0 != 0) goto L_0x01b6
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.b()
            boolean r0 = r10.u
            if (r0 == 0) goto L_0x019d
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.f()
        L_0x0196:
            java.util.concurrent.atomic.AtomicBoolean r0 = r10.t
            r0.set(r2)
            goto L_0x0044
        L_0x019d:
            boolean r0 = r10.v
            if (r0 == 0) goto L_0x01a9
            com.liulishuo.filedownloader.download.e r0 = r10.b
            java.lang.Exception r1 = r10.w
            r0.a(r1)
            goto L_0x0196
        L_0x01a9:
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ IOException -> 0x01af }
            r0.g()     // Catch:{ IOException -> 0x01af }
            goto L_0x0196
        L_0x01af:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.a(r0)
            goto L_0x0196
        L_0x01b6:
            boolean r0 = r10.u     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            if (r0 == 0) goto L_0x01ee
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r10.d     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r3 = -2
            r0.a(r3)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.b()
            boolean r0 = r10.u
            if (r0 == 0) goto L_0x01d5
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.f()
        L_0x01ce:
            java.util.concurrent.atomic.AtomicBoolean r0 = r10.t
            r0.set(r2)
            goto L_0x0044
        L_0x01d5:
            boolean r0 = r10.v
            if (r0 == 0) goto L_0x01e1
            com.liulishuo.filedownloader.download.e r0 = r10.b
            java.lang.Exception r1 = r10.w
            r0.a(r1)
            goto L_0x01ce
        L_0x01e1:
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ IOException -> 0x01e7 }
            r0.g()     // Catch:{ IOException -> 0x01e7 }
            goto L_0x01ce
        L_0x01e7:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.a(r0)
            goto L_0x01ce
        L_0x01ee:
            if (r6 != r1) goto L_0x020f
            r0 = r1
        L_0x01f1:
            r10.o = r0     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            boolean r0 = r10.o     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            if (r0 == 0) goto L_0x0211
            r10.c(r4)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
        L_0x01fa:
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.b()
            boolean r0 = r10.u
            if (r0 == 0) goto L_0x0264
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.f()
        L_0x0208:
            java.util.concurrent.atomic.AtomicBoolean r0 = r10.t
            r0.set(r2)
            goto L_0x0044
        L_0x020f:
            r0 = r2
            goto L_0x01f1
        L_0x0211:
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            r0.e()     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            boolean r0 = r10.q     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            if (r0 == 0) goto L_0x0221
            r10.a(r6, r3)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            goto L_0x01fa
        L_0x021e:
            r0 = move-exception
            goto L_0x0177
        L_0x0221:
            r10.a(r4, r6)     // Catch:{ IOException -> 0x0176, IllegalAccessException -> 0x021e, InterruptedException -> 0x0225, IllegalArgumentException -> 0x0299, FileDownloadGiveUpRetryException -> 0x029c, DiscardSafely -> 0x022c, RetryDirectly -> 0x025b }
            goto L_0x01fa
        L_0x0225:
            r0 = move-exception
            goto L_0x0177
        L_0x0228:
            r10.b(r0)     // Catch:{ all -> 0x0079 }
            goto L_0x01fa
        L_0x022c:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.b()
            boolean r0 = r10.u
            if (r0 == 0) goto L_0x0242
            com.liulishuo.filedownloader.download.e r0 = r10.b
            r0.f()
        L_0x023b:
            java.util.concurrent.atomic.AtomicBoolean r0 = r10.t
            r0.set(r2)
            goto L_0x0044
        L_0x0242:
            boolean r0 = r10.v
            if (r0 == 0) goto L_0x024e
            com.liulishuo.filedownloader.download.e r0 = r10.b
            java.lang.Exception r1 = r10.w
            r0.a(r1)
            goto L_0x023b
        L_0x024e:
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ IOException -> 0x0254 }
            r0.g()     // Catch:{ IOException -> 0x0254 }
            goto L_0x023b
        L_0x0254:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.a(r0)
            goto L_0x023b
        L_0x025b:
            r0 = move-exception
            com.liulishuo.filedownloader.model.FileDownloadModel r0 = r10.d     // Catch:{ all -> 0x0079 }
            r3 = 5
            r0.a(r3)     // Catch:{ all -> 0x0079 }
            goto L_0x00b0
        L_0x0264:
            boolean r0 = r10.v
            if (r0 == 0) goto L_0x0270
            com.liulishuo.filedownloader.download.e r0 = r10.b
            java.lang.Exception r1 = r10.w
            r0.a(r1)
            goto L_0x0208
        L_0x0270:
            com.liulishuo.filedownloader.download.e r0 = r10.b     // Catch:{ IOException -> 0x0276 }
            r0.g()     // Catch:{ IOException -> 0x0276 }
            goto L_0x0208
        L_0x0276:
            r0 = move-exception
            com.liulishuo.filedownloader.download.e r1 = r10.b
            r1.a(r0)
            goto L_0x0208
        L_0x027d:
            boolean r1 = r10.v
            if (r1 == 0) goto L_0x028a
            com.liulishuo.filedownloader.download.e r1 = r10.b
            java.lang.Exception r3 = r10.w
            r1.a(r3)
            goto L_0x0088
        L_0x028a:
            com.liulishuo.filedownloader.download.e r1 = r10.b     // Catch:{ IOException -> 0x0291 }
            r1.g()     // Catch:{ IOException -> 0x0291 }
            goto L_0x0088
        L_0x0291:
            r1 = move-exception
            com.liulishuo.filedownloader.download.e r3 = r10.b
            r3.a(r1)
            goto L_0x0088
        L_0x0299:
            r0 = move-exception
            goto L_0x0177
        L_0x029c:
            r0 = move-exception
            goto L_0x0177
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.DownloadLaunchRunnable.run():void");
    }

    private int b(long j2) {
        if (!h()) {
            return 1;
        }
        if (this.q) {
            return this.d.n();
        }
        return c.a().a(this.d.a(), this.d.b(), this.d.c(), j2);
    }

    /* JADX INFO: finally extract failed */
    private void g() throws IOException, RetryDirectly, IllegalAccessException {
        b a2;
        com.liulishuo.filedownloader.a.b bVar = null;
        try {
            if (this.k) {
                a2 = com.liulishuo.filedownloader.download.b.a.b();
            } else {
                a2 = com.liulishuo.filedownloader.download.b.a.a();
            }
            a a3 = new C0048a().a(this.d.a()).a(this.d.b()).b(this.d.j()).a(this.e).a(a2).a();
            com.liulishuo.filedownloader.a.b a4 = a3.a();
            a(a3.d(), a3, a4);
            if (a4 != null) {
                a4.f();
            }
        } catch (Throwable th) {
            if (bVar != null) {
                bVar.f();
            }
            throw th;
        }
    }

    private boolean h() {
        boolean z2 = true;
        if (this.q && this.d.n() <= 1) {
            return false;
        }
        if (!this.r || !this.l || this.s) {
            z2 = false;
        }
        return z2;
    }

    /* access modifiers changed from: 0000 */
    public void a(List<com.liulishuo.filedownloader.model.a> list) {
        boolean z2 = true;
        int n2 = this.d.n();
        String e2 = this.d.e();
        String d2 = this.d.d();
        boolean z3 = n2 > 1;
        long j2 = this.k ? 0 : (!z3 || this.l) ? g.a(this.d.a(), this.d) ? !this.l ? new File(e2).length() : z3 ? n2 != list.size() ? 0 : com.liulishuo.filedownloader.model.a.a(list) : this.d.g() : 0 : 0;
        this.d.a(j2);
        if (j2 <= 0) {
            z2 = false;
        }
        this.q = z2;
        if (!this.q) {
            this.h.d(this.d.a());
            g.c(d2, e2);
        }
    }

    private void a(Map<String, List<String>> map, a aVar, com.liulishuo.filedownloader.a.b bVar) throws IOException, RetryDirectly, IllegalArgumentException {
        int a2 = this.d.a();
        int e2 = bVar.e();
        this.r = g.b(e2, bVar);
        boolean z2 = e2 == 200 || e2 == 201 || e2 == 0;
        String j2 = this.d.j();
        String a3 = g.a(a2, bVar);
        boolean z3 = false;
        if (e2 == 412) {
            z3 = true;
        } else if (j2 != null && !j2.equals(a3) && (z2 || this.r)) {
            z3 = true;
        } else if (e2 == 201 && aVar.b()) {
            z3 = true;
        } else if (e2 == 416) {
            if (this.d.g() > 0) {
                z3 = true;
            } else if (!this.k) {
                this.k = true;
                z3 = true;
            }
        }
        if (z3) {
            if (this.q) {
                d.d(this, "there is precondition failed on this request[%d] with old etag[%s]、new etag[%s]、response code is %d", Integer.valueOf(a2), j2, a3, Integer.valueOf(e2));
            }
            this.h.d(this.d.a());
            g.c(this.d.d(), this.d.e());
            this.q = false;
            if (j2 != null && j2.equals(a3)) {
                d.d(this, "the old etag[%s] is the same to the new etag[%s], but the response status code is %d not Partial(206), so wo have to start this task from very beginning for task[%d]!", j2, a3, Integer.valueOf(e2), Integer.valueOf(a2));
                a3 = null;
            }
            this.d.a(0);
            this.d.c(0);
            this.d.b(a3);
            this.d.o();
            this.h.a(a2, this.d.j(), this.d.g(), this.d.h(), this.d.n());
            throw new RetryDirectly();
        }
        this.x = aVar.c();
        if (this.r || z2) {
            long a4 = g.a(bVar);
            String str = null;
            if (this.d.l()) {
                str = g.a(bVar, this.d.b());
            }
            this.s = a4 == -1;
            this.b.a(this.q && this.r, a4, a3, str);
            return;
        }
        throw new FileDownloadHttpException(e2, map, bVar.c());
    }

    private void c(long j2) throws IOException, IllegalAccessException {
        b a2;
        if (!this.r) {
            this.d.a(0);
            a2 = com.liulishuo.filedownloader.download.b.a.a(j2);
        } else {
            a2 = com.liulishuo.filedownloader.download.b.a.a(this.d.g(), this.d.g(), j2 - this.d.g());
        }
        this.n = new com.liulishuo.filedownloader.download.d.a().a(this.d.a()).a(Integer.valueOf(-1)).a((g) this).a(this.d.b()).b(this.d.j()).a(this.e).a(this.g).a(a2).c(this.d.e()).a();
        this.d.b(1);
        this.h.a(this.d.a(), 1);
        if (this.u) {
            this.d.a(-2);
            this.n.a();
            return;
        }
        this.n.run();
    }

    private void a(int i2, List<com.liulishuo.filedownloader.model.a> list) throws InterruptedException {
        if (i2 <= 1 || list.size() != i2) {
            throw new IllegalArgumentException();
        }
        a(list, this.d.h());
    }

    private void a(long j2, int i2) throws InterruptedException {
        long j3;
        long j4 = j2 / ((long) i2);
        int a2 = this.d.a();
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        long j5 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < i2) {
                if (i4 == i2 - 1) {
                    j3 = -1;
                } else {
                    j3 = (j5 + j4) - 1;
                }
                com.liulishuo.filedownloader.model.a aVar = new com.liulishuo.filedownloader.model.a();
                aVar.a(a2);
                aVar.b(i4);
                aVar.a(j5);
                aVar.b(j5);
                aVar.c(j3);
                arrayList.add(aVar);
                this.h.a(aVar);
                j5 += j4;
                i3 = i4 + 1;
            } else {
                this.d.b(i2);
                this.h.a(a2, i2);
                a((List<com.liulishuo.filedownloader.model.a>) arrayList, j2);
                return;
            }
        }
    }

    private void a(List<com.liulishuo.filedownloader.model.a> list, long j2) throws InterruptedException {
        String b2;
        long e2;
        int a2 = this.d.a();
        String j3 = this.d.j();
        if (this.x != null) {
            b2 = this.x;
        } else {
            b2 = this.d.b();
        }
        String e3 = this.d.e();
        if (d.a) {
            d.c(this, "fetch data with multiple connection(count: [%d]) for task[%d] totalLength[%d]", Integer.valueOf(list.size()), Integer.valueOf(a2), Long.valueOf(j2));
        }
        boolean z2 = this.q;
        long j4 = 0;
        for (com.liulishuo.filedownloader.model.a aVar : list) {
            if (aVar.e() == -1) {
                e2 = j2 - aVar.d();
            } else {
                e2 = (aVar.e() - aVar.d()) + 1;
            }
            long d2 = j4 + (aVar.d() - aVar.c());
            if (e2 != 0) {
                d a3 = new com.liulishuo.filedownloader.download.d.a().a(a2).a(Integer.valueOf(aVar.b())).a((g) this).a(b2).b(z2 ? j3 : null).a(this.e).a(this.g).a(com.liulishuo.filedownloader.download.b.a.a(aVar.c(), aVar.d(), aVar.e(), e2)).c(e3).a();
                if (d.a) {
                    d.c(this, "enable multiple connection: %s", aVar);
                }
                if (a3 == null) {
                    throw new IllegalArgumentException("the download runnable must not be null!");
                }
                this.m.add(a3);
                j4 = d2;
            } else if (d.a) {
                d.c(this, "pass connection[%d-%d], because it has been completed", Integer.valueOf(aVar.a()), Integer.valueOf(aVar.b()));
                j4 = d2;
            } else {
                j4 = d2;
            }
        }
        if (j4 != this.d.g()) {
            d.d(this, "correct the sofar[%d] from connection table[%d]", Long.valueOf(this.d.g()), Long.valueOf(j4));
            this.d.a(j4);
        }
        ArrayList arrayList = new ArrayList(this.m.size());
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (this.u) {
                dVar.a();
            } else {
                arrayList.add(Executors.callable(dVar));
            }
        }
        if (this.u) {
            this.d.a(-2);
            return;
        }
        List<Future> invokeAll = p.invokeAll(arrayList);
        if (d.a) {
            for (Future future : invokeAll) {
                d.c(this, "finish sub-task for [%d] %B %B", Integer.valueOf(a2), Boolean.valueOf(future.isDone()), Boolean.valueOf(future.isCancelled()));
            }
        }
    }

    private void a(long j2, String str) throws IOException, IllegalAccessException {
        com.liulishuo.filedownloader.d.a aVar;
        com.liulishuo.filedownloader.d.a aVar2 = null;
        if (j2 != -1) {
            try {
                aVar = g.n(this.d.e());
                try {
                    long length = new File(str).length();
                    long j3 = j2 - length;
                    long f2 = g.f(str);
                    if (f2 < j3) {
                        throw new FileDownloadOutOfSpaceException(f2, j3, length);
                    } else if (!e.a().f) {
                        aVar.b(j2);
                    }
                } catch (Throwable th) {
                    th = th;
                    aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.b();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            aVar = null;
        }
        if (aVar != null) {
            aVar.b();
        }
    }

    public void a(long j2) {
        if (!this.u) {
            this.b.a(j2);
        }
    }

    public void a(d dVar, long j2, long j3) {
        if (!this.u) {
            int i2 = dVar.a;
            if (d.a) {
                d.c(this, "the connection has been completed(%d): [%d, %d)  %d", Integer.valueOf(i2), Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(this.d.h()));
            }
            if (!this.o) {
                synchronized (this.m) {
                    this.m.remove(dVar);
                }
            } else if (j2 != 0 && j3 != this.d.h()) {
                d.a(this, "the single task not completed corrected(%d, %d != %d) for task(%d)", Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(this.d.h()), Integer.valueOf(this.d.a()));
            }
        } else if (d.a) {
            d.c(this, "the task[%d] has already been paused, so pass the completed callback", Integer.valueOf(this.d.a()));
        }
    }

    public boolean a(Exception exc) {
        if (exc instanceof FileDownloadHttpException) {
            int a2 = ((FileDownloadHttpException) exc).a();
            if (this.o && a2 == 416 && !this.j) {
                g.c(this.d.d(), this.d.e());
                this.j = true;
                return true;
            }
        }
        return this.a > 0 && !(exc instanceof FileDownloadGiveUpRetryException);
    }

    public void b(Exception exc) {
        this.v = true;
        this.w = exc;
        if (!this.u) {
            Iterator it = ((ArrayList) this.m.clone()).iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar != null) {
                    dVar.b();
                }
            }
        } else if (d.a) {
            d.c(this, "the task[%d] has already been paused, so pass the error callback", Integer.valueOf(this.d.a()));
        }
    }

    public void c(Exception exc) {
        if (!this.u) {
            int i2 = this.a;
            this.a = i2 - 1;
            if (i2 < 0) {
                d.a(this, "valid retry times is less than 0(%d) for download task(%d)", Integer.valueOf(this.a), Integer.valueOf(this.d.a()));
            }
            this.b.a(exc, this.a);
        } else if (d.a) {
            d.c(this, "the task[%d] has already been paused, so pass the retry callback", Integer.valueOf(this.d.a()));
        }
    }

    public void c() {
        this.h.a(this.d.a(), this.d.g());
    }

    private void i() throws FileDownloadGiveUpRetryException {
        if (this.g && !g.k("android.permission.ACCESS_NETWORK_STATE")) {
            throw new FileDownloadGiveUpRetryException(g.a("Task[%d] can't start the download runnable, because this task require wifi, but user application nor current process has %s, so we can't check whether the network type connection.", Integer.valueOf(this.d.a()), "android.permission.ACCESS_NETWORK_STATE"));
        } else if (this.g && g.d()) {
            throw new FileDownloadNetworkPolicyException();
        }
    }

    private void j() throws RetryDirectly, DiscardSafely {
        int a2 = this.d.a();
        if (this.d.l()) {
            String d2 = this.d.d();
            int b2 = g.b(this.d.b(), d2);
            if (c.a(a2, d2, this.f, false)) {
                this.h.e(a2);
                this.h.d(a2);
                throw new DiscardSafely();
            }
            FileDownloadModel b3 = this.h.b(b2);
            if (b3 != null) {
                if (c.a(a2, b3, this.i, false)) {
                    this.h.e(a2);
                    this.h.d(a2);
                    throw new DiscardSafely();
                }
                List<com.liulishuo.filedownloader.model.a> c2 = this.h.c(b2);
                this.h.e(b2);
                this.h.d(b2);
                g.p(this.d.d());
                if (g.a(b2, b3)) {
                    this.d.a(b3.g());
                    this.d.c(b3.h());
                    this.d.b(b3.j());
                    this.d.b(b3.n());
                    this.h.a(this.d);
                    if (c2 != null) {
                        for (com.liulishuo.filedownloader.model.a aVar : c2) {
                            aVar.a(a2);
                            this.h.a(aVar);
                        }
                    }
                    throw new RetryDirectly();
                }
            }
            if (c.a(a2, this.d.g(), this.d.e(), d2, this.i)) {
                this.h.e(a2);
                this.h.d(a2);
                throw new DiscardSafely();
            }
        }
    }

    public int d() {
        return this.d.a();
    }

    public boolean e() {
        return this.t.get() || this.b.a();
    }

    public String f() {
        return this.d.e();
    }
}

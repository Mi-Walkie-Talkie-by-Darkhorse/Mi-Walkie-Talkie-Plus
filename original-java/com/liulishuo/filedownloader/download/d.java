package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.model.FileDownloadHeader;

/* compiled from: DownloadRunnable */
public class d implements Runnable {
    final int a;
    private final a b;
    private final g c;
    private final String d;
    private final boolean e;
    private f f;
    private volatile boolean g;
    private final int h;

    /* compiled from: DownloadRunnable */
    public static class a {
        private final C0048a a = new C0048a();
        private g b;
        private String c;
        private Boolean d;
        private Integer e;

        public a a(g gVar) {
            this.b = gVar;
            return this;
        }

        public a a(int i) {
            this.a.a(i);
            return this;
        }

        public a a(String str) {
            this.a.a(str);
            return this;
        }

        public a b(String str) {
            this.a.b(str);
            return this;
        }

        public a a(FileDownloadHeader fileDownloadHeader) {
            this.a.a(fileDownloadHeader);
            return this;
        }

        public a a(b bVar) {
            this.a.a(bVar);
            return this;
        }

        public a c(String str) {
            this.c = str;
            return this;
        }

        public a a(boolean z) {
            this.d = Boolean.valueOf(z);
            return this;
        }

        public a a(Integer num) {
            this.e = num;
            return this;
        }

        public d a() {
            if (this.b == null || this.c == null || this.d == null || this.e == null) {
                throw new IllegalArgumentException(g.a("%s %s %B", this.b, this.c, this.d));
            }
            a a2 = this.a.a();
            return new d(a2.a, this.e.intValue(), a2, this.b, this.d.booleanValue(), this.c);
        }
    }

    private d(int i, int i2, a aVar, g gVar, boolean z, String str) {
        this.h = i;
        this.a = i2;
        this.g = false;
        this.c = gVar;
        this.d = str;
        this.b = aVar;
        this.e = z;
    }

    public void a() {
        this.g = true;
        if (this.f != null) {
            this.f.a();
        }
    }

    public void b() {
        a();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:104:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:105:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x00a2, code lost:
        if (r0 == false) goto L_0x011a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00a8, code lost:
        com.liulishuo.filedownloader.e.d.d(r11, "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s", r4);
        r11.c.b(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00b8, code lost:
        if (r1 != null) goto L_0x00ba;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00ba, code lost:
        r1.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x011c, code lost:
        if (r11.f != null) goto L_0x011e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x011e, code lost:
        r6 = c();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0126, code lost:
        if (r6 > 0) goto L_0x0128;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0128, code lost:
        r11.b.a(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x012d, code lost:
        r11.c.c(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0132, code lost:
        if (r1 != null) goto L_0x0134;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0134, code lost:
        r1.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0137, code lost:
        r4 = r1;
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:?, code lost:
        r11.c.b(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0140, code lost:
        if (r1 != null) goto L_0x0142;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0142, code lost:
        r1.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x014a, code lost:
        r1.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0169, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x016a, code lost:
        r1 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x0171, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x017c, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0185, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x018e, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00a2 A[Catch:{ all -> 0x0147 }] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x013b A[SYNTHETIC, Splitter:B:51:0x013b] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x014a  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x0169 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x0011] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r11 = this;
            r3 = 1
            r2 = 0
            r0 = 10
            android.os.Process.setThreadPriority(r0)
            r4 = 0
            com.liulishuo.filedownloader.download.a r0 = r11.b
            com.liulishuo.filedownloader.download.b r0 = r0.e()
            long r0 = r0.b
            r1 = r2
        L_0x0011:
            boolean r0 = r11.g     // Catch:{ IllegalAccessException -> 0x0171, IOException -> 0x017c, FileDownloadGiveUpRetryException -> 0x018e, IllegalArgumentException -> 0x0185, all -> 0x0169 }
            if (r0 == 0) goto L_0x001b
            if (r4 == 0) goto L_0x001a
            r4.f()
        L_0x001a:
            return
        L_0x001b:
            com.liulishuo.filedownloader.download.a r0 = r11.b     // Catch:{ IllegalAccessException -> 0x0174, IOException -> 0x017e, FileDownloadGiveUpRetryException -> 0x0190, IllegalArgumentException -> 0x0187, all -> 0x0169 }
            com.liulishuo.filedownloader.a.b r1 = r0.a()     // Catch:{ IllegalAccessException -> 0x0174, IOException -> 0x017e, FileDownloadGiveUpRetryException -> 0x0190, IllegalArgumentException -> 0x0187, all -> 0x0169 }
            int r0 = r1.e()     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            boolean r4 = com.liulishuo.filedownloader.e.d.a     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            if (r4 == 0) goto L_0x0053
            java.lang.String r4 = "the connection[%d] for %d, is connected %s with code[%d]"
            r5 = 4
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6 = 0
            int r7 = r11.a     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r5[r6] = r7     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6 = 1
            int r7 = r11.h     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r5[r6] = r7     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6 = 2
            com.liulishuo.filedownloader.download.a r7 = r11.b     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            com.liulishuo.filedownloader.download.b r7 = r7.e()     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r5[r6] = r7     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6 = 3
            java.lang.Integer r7 = java.lang.Integer.valueOf(r0)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r5[r6] = r7     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            com.liulishuo.filedownloader.e.d.c(r11, r4, r5)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
        L_0x0053:
            r4 = 206(0xce, float:2.89E-43)
            if (r0 == r4) goto L_0x00bf
            r4 = 200(0xc8, float:2.8E-43)
            if (r0 == r4) goto L_0x00bf
            java.net.SocketException r4 = new java.net.SocketException     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            java.lang.String r5 = "Connection failed with request[%s] response[%s] http-state[%d] on task[%d-%d], which is changed after verify connection, so please try again."
            r6 = 5
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r7 = 0
            com.liulishuo.filedownloader.download.a r8 = r11.b     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            java.util.Map r8 = r8.d()     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6[r7] = r8     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r7 = 1
            java.util.Map r8 = r1.c()     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6[r7] = r8     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r7 = 2
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6[r7] = r0     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r0 = 3
            int r7 = r11.h     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6[r0] = r7     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r0 = 4
            int r7 = r11.a     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r6[r0] = r7     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            java.lang.String r0 = com.liulishuo.filedownloader.e.g.a(r5, r6)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            r4.<init>(r0)     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
            throw r4     // Catch:{ IllegalAccessException -> 0x0093, IOException -> 0x014e, FileDownloadGiveUpRetryException -> 0x0157, IllegalArgumentException -> 0x0160 }
        L_0x0093:
            r0 = move-exception
            r4 = r1
            r1 = r2
        L_0x0096:
            r10 = r0
            r0 = r1
            r1 = r4
            r4 = r10
        L_0x009a:
            com.liulishuo.filedownloader.download.g r5 = r11.c     // Catch:{ all -> 0x0147 }
            boolean r5 = r5.a(r4)     // Catch:{ all -> 0x0147 }
            if (r5 == 0) goto L_0x013b
            if (r0 == 0) goto L_0x011a
            com.liulishuo.filedownloader.download.f r5 = r11.f     // Catch:{ all -> 0x0147 }
            if (r5 != 0) goto L_0x011a
            java.lang.String r0 = "it is valid to retry and connection is valid but create fetch-data-task failed, so give up directly with %s"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x0147 }
            r3 = 0
            r2[r3] = r4     // Catch:{ all -> 0x0147 }
            com.liulishuo.filedownloader.e.d.d(r11, r0, r2)     // Catch:{ all -> 0x0147 }
            com.liulishuo.filedownloader.download.g r0 = r11.c     // Catch:{ all -> 0x0147 }
            r0.b(r4)     // Catch:{ all -> 0x0147 }
            if (r1 == 0) goto L_0x001a
            r1.f()
            goto L_0x001a
        L_0x00bf:
            com.liulishuo.filedownloader.download.f$a r0 = new com.liulishuo.filedownloader.download.f$a     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            r0.<init>()     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            boolean r4 = r11.g     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            if (r4 == 0) goto L_0x00cf
            if (r1 == 0) goto L_0x001a
            r1.f()
            goto L_0x001a
        L_0x00cf:
            int r4 = r11.h     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f$a r0 = r0.b(r4)     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            int r4 = r11.a     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f$a r0 = r0.a(r4)     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.g r4 = r11.c     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f$a r0 = r0.a(r4)     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f$a r0 = r0.a(r11)     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            boolean r4 = r11.e     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f$a r0 = r0.a(r4)     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f$a r0 = r0.a(r1)     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.a r4 = r11.b     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.b r4 = r4.e()     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f$a r0 = r0.a(r4)     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            java.lang.String r4 = r11.d     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f$a r0 = r0.a(r4)     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f r0 = r0.a()     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            r11.f = r0     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            com.liulishuo.filedownloader.download.f r0 = r11.f     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            r0.b()     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            boolean r0 = r11.g     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            if (r0 == 0) goto L_0x0113
            com.liulishuo.filedownloader.download.f r0 = r11.f     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
            r0.a()     // Catch:{ IllegalAccessException -> 0x016c, IOException -> 0x0178, FileDownloadGiveUpRetryException -> 0x018a, IllegalArgumentException -> 0x0181 }
        L_0x0113:
            if (r1 == 0) goto L_0x001a
            r1.f()
            goto L_0x001a
        L_0x011a:
            com.liulishuo.filedownloader.download.f r5 = r11.f     // Catch:{ all -> 0x0147 }
            if (r5 == 0) goto L_0x012d
            long r6 = r11.c()     // Catch:{ all -> 0x0147 }
            r8 = 0
            int r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r5 <= 0) goto L_0x012d
            com.liulishuo.filedownloader.download.a r5 = r11.b     // Catch:{ all -> 0x0147 }
            r5.a(r6)     // Catch:{ all -> 0x0147 }
        L_0x012d:
            com.liulishuo.filedownloader.download.g r5 = r11.c     // Catch:{ all -> 0x0147 }
            r5.c(r4)     // Catch:{ all -> 0x0147 }
            if (r1 == 0) goto L_0x0137
            r1.f()
        L_0x0137:
            r4 = r1
            r1 = r0
            goto L_0x0011
        L_0x013b:
            com.liulishuo.filedownloader.download.g r0 = r11.c     // Catch:{ all -> 0x0147 }
            r0.b(r4)     // Catch:{ all -> 0x0147 }
            if (r1 == 0) goto L_0x001a
            r1.f()
            goto L_0x001a
        L_0x0147:
            r0 = move-exception
        L_0x0148:
            if (r1 == 0) goto L_0x014d
            r1.f()
        L_0x014d:
            throw r0
        L_0x014e:
            r0 = move-exception
            r4 = r1
            r1 = r2
        L_0x0151:
            r10 = r0
            r0 = r1
            r1 = r4
            r4 = r10
            goto L_0x009a
        L_0x0157:
            r0 = move-exception
            r4 = r1
            r1 = r2
        L_0x015a:
            r10 = r0
            r0 = r1
            r1 = r4
            r4 = r10
            goto L_0x009a
        L_0x0160:
            r0 = move-exception
            r4 = r1
            r1 = r2
        L_0x0163:
            r10 = r0
            r0 = r1
            r1 = r4
            r4 = r10
            goto L_0x009a
        L_0x0169:
            r0 = move-exception
            r1 = r4
            goto L_0x0148
        L_0x016c:
            r0 = move-exception
            r4 = r1
            r1 = r3
            goto L_0x0096
        L_0x0171:
            r0 = move-exception
            goto L_0x0096
        L_0x0174:
            r0 = move-exception
            r1 = r2
            goto L_0x0096
        L_0x0178:
            r0 = move-exception
            r4 = r1
            r1 = r3
            goto L_0x0151
        L_0x017c:
            r0 = move-exception
            goto L_0x0151
        L_0x017e:
            r0 = move-exception
            r1 = r2
            goto L_0x0151
        L_0x0181:
            r0 = move-exception
            r4 = r1
            r1 = r3
            goto L_0x0163
        L_0x0185:
            r0 = move-exception
            goto L_0x0163
        L_0x0187:
            r0 = move-exception
            r1 = r2
            goto L_0x0163
        L_0x018a:
            r0 = move-exception
            r4 = r1
            r1 = r3
            goto L_0x015a
        L_0x018e:
            r0 = move-exception
            goto L_0x015a
        L_0x0190:
            r0 = move-exception
            r1 = r2
            goto L_0x015a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.download.d.run():void");
    }

    private long c() {
        com.liulishuo.filedownloader.b.a c2 = c.a().c();
        if (this.a < 0) {
            return c2.b(this.h).g();
        }
        for (com.liulishuo.filedownloader.model.a aVar : c2.c(this.h)) {
            if (aVar.b() == this.a) {
                return aVar.d();
            }
        }
        return 0;
    }
}

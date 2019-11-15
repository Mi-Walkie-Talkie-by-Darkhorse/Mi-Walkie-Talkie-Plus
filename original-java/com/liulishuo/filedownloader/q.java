package com.liulishuo.filedownloader;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: FileDownloadTaskLauncher */
class q {
    private final b a = new b();

    /* compiled from: FileDownloadTaskLauncher */
    private static class a {
        /* access modifiers changed from: private */
        public static final q a = new q();

        static {
            com.liulishuo.filedownloader.message.c.a().a((com.liulishuo.filedownloader.message.c.b) new aa());
        }
    }

    /* compiled from: FileDownloadTaskLauncher */
    private static class b {
        private ThreadPoolExecutor a;
        private LinkedBlockingQueue<Runnable> b;

        b() {
            a();
        }

        public void a(com.liulishuo.filedownloader.x.b bVar) {
            this.a.execute(new c(bVar));
        }

        private void a() {
            this.b = new LinkedBlockingQueue<>();
            this.a = com.liulishuo.filedownloader.e.b.a(3, this.b, "LauncherTask");
        }
    }

    /* compiled from: FileDownloadTaskLauncher */
    private static class c implements Runnable {
        private final com.liulishuo.filedownloader.x.b a;
        private boolean b = false;

        c(com.liulishuo.filedownloader.x.b bVar) {
            this.a = bVar;
        }

        public void run() {
            if (!this.b) {
                this.a.l();
            }
        }

        public boolean equals(Object obj) {
            return super.equals(obj) || obj == this.a;
        }
    }

    q() {
    }

    public static q a() {
        return a.a;
    }

    /* access modifiers changed from: 0000 */
    public synchronized void a(com.liulishuo.filedownloader.x.b bVar) {
        this.a.a(bVar);
    }
}

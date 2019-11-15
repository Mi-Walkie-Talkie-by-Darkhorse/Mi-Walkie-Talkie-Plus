package com.liulishuo.filedownloader.services;

import android.util.SparseArray;
import com.liulishuo.filedownloader.download.DownloadLaunchRunnable;
import com.liulishuo.filedownloader.e.b;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.e.e;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: FileDownloadThreadPool */
class h {
    private SparseArray<DownloadLaunchRunnable> a = new SparseArray<>();
    private ThreadPoolExecutor b;
    private final String c = "Network";
    private int d;
    private int e = 0;

    h(int i) {
        this.b = b.a(i, "Network");
        this.d = i;
    }

    public synchronized boolean a(int i) {
        boolean z = false;
        synchronized (this) {
            if (a() > 0) {
                d.d(this, "Can't change the max network thread count, because the  network thread pool isn't in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly.", new Object[0]);
            } else {
                int a2 = e.a(i);
                if (d.a) {
                    d.c(this, "change the max network thread count, from %d to %d", Integer.valueOf(this.d), Integer.valueOf(a2));
                }
                List shutdownNow = this.b.shutdownNow();
                this.b = b.a(a2, "Network");
                if (shutdownNow.size() > 0) {
                    d.d(this, "recreate the network thread pool and discard %d tasks", Integer.valueOf(shutdownNow.size()));
                }
                this.d = a2;
                z = true;
            }
        }
        return z;
    }

    public void a(DownloadLaunchRunnable downloadLaunchRunnable) {
        downloadLaunchRunnable.b();
        synchronized (this) {
            this.a.put(downloadLaunchRunnable.d(), downloadLaunchRunnable);
        }
        this.b.execute(downloadLaunchRunnable);
        if (this.e >= 600) {
            c();
            this.e = 0;
            return;
        }
        this.e++;
    }

    public void b(int i) {
        c();
        synchronized (this) {
            DownloadLaunchRunnable downloadLaunchRunnable = (DownloadLaunchRunnable) this.a.get(i);
            if (downloadLaunchRunnable != null) {
                downloadLaunchRunnable.a();
                boolean remove = this.b.remove(downloadLaunchRunnable);
                if (d.a) {
                    d.c(this, "successful cancel %d %B", Integer.valueOf(i), Boolean.valueOf(remove));
                }
            }
            this.a.remove(i);
        }
    }

    private synchronized void c() {
        SparseArray<DownloadLaunchRunnable> sparseArray = new SparseArray<>();
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            int keyAt = this.a.keyAt(i);
            DownloadLaunchRunnable downloadLaunchRunnable = (DownloadLaunchRunnable) this.a.get(keyAt);
            if (downloadLaunchRunnable.e()) {
                sparseArray.put(keyAt, downloadLaunchRunnable);
            }
        }
        this.a = sparseArray;
    }

    public boolean c(int i) {
        DownloadLaunchRunnable downloadLaunchRunnable = (DownloadLaunchRunnable) this.a.get(i);
        return downloadLaunchRunnable != null && downloadLaunchRunnable.e();
    }

    public int a(String str, int i) {
        if (str == null) {
            return 0;
        }
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            DownloadLaunchRunnable downloadLaunchRunnable = (DownloadLaunchRunnable) this.a.valueAt(i2);
            if (downloadLaunchRunnable != null && downloadLaunchRunnable.e() && downloadLaunchRunnable.d() != i && str.equals(downloadLaunchRunnable.f())) {
                return downloadLaunchRunnable.d();
            }
        }
        return 0;
    }

    public synchronized int a() {
        c();
        return this.a.size();
    }

    public synchronized List<Integer> b() {
        ArrayList arrayList;
        c();
        arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.a.size()) {
                arrayList.add(Integer.valueOf(((DownloadLaunchRunnable) this.a.get(this.a.keyAt(i2))).d()));
                i = i2 + 1;
            }
        }
        return arrayList;
    }
}

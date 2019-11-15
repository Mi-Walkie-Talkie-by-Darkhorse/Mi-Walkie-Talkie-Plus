package com.liulishuo.filedownloader;

import android.os.SystemClock;
import com.liulishuo.filedownloader.s.a;

/* compiled from: DownloadSpeedMonitor */
public class b implements a, com.liulishuo.filedownloader.s.b {
    private long a;
    private long b;
    private long c;
    private long d;
    private int e;
    private int f = 1000;

    public void a(long j) {
        this.d = SystemClock.uptimeMillis();
        this.c = j;
    }

    public void b(long j) {
        if (this.d > 0) {
            long j2 = j - this.c;
            this.a = 0;
            long uptimeMillis = SystemClock.uptimeMillis() - this.d;
            if (uptimeMillis <= 0) {
                this.e = (int) j2;
            } else {
                this.e = (int) (j2 / uptimeMillis);
            }
        }
    }

    public void c(long j) {
        boolean z = true;
        if (this.f > 0) {
            if (this.a != 0) {
                long uptimeMillis = SystemClock.uptimeMillis() - this.a;
                if (uptimeMillis >= ((long) this.f) || (this.e == 0 && uptimeMillis > 0)) {
                    this.e = (int) ((j - this.b) / uptimeMillis);
                    this.e = Math.max(0, this.e);
                } else {
                    z = false;
                }
            }
            if (z) {
                this.b = j;
                this.a = SystemClock.uptimeMillis();
            }
        }
    }

    public void a() {
        this.e = 0;
        this.a = 0;
    }
}

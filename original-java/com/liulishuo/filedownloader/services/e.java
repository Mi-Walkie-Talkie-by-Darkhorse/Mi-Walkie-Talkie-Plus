package com.liulishuo.filedownloader.services;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.n;
import java.lang.ref.WeakReference;

/* compiled from: FDServiceSharedHandler */
public class e extends com.liulishuo.filedownloader.c.b.a implements i {
    private final g a;
    private final WeakReference<FileDownloadService> b;

    /* compiled from: FDServiceSharedHandler */
    public interface a {
        void a();

        void a(e eVar);
    }

    e(WeakReference<FileDownloadService> weakReference, g gVar) {
        this.b = weakReference;
        this.a = gVar;
    }

    public void a(com.liulishuo.filedownloader.c.a aVar) {
    }

    public void b(com.liulishuo.filedownloader.c.a aVar) {
    }

    public boolean a(String str, String str2) {
        return this.a.a(str, str2);
    }

    public void a(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        this.a.a(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    public boolean a(int i) {
        return this.a.b(i);
    }

    public void a() {
        this.a.a();
    }

    public boolean b(int i) {
        return this.a.f(i);
    }

    public long c(int i) {
        return this.a.c(i);
    }

    public long d(int i) {
        return this.a.d(i);
    }

    public byte e(int i) {
        return this.a.e(i);
    }

    public boolean b() {
        return this.a.b();
    }

    public void a(int i, Notification notification) {
        if (this.b != null && this.b.get() != null) {
            ((FileDownloadService) this.b.get()).startForeground(i, notification);
        }
    }

    public void a(boolean z) {
        if (this.b != null && this.b.get() != null) {
            ((FileDownloadService) this.b.get()).stopForeground(z);
        }
    }

    public boolean f(int i) {
        return this.a.g(i);
    }

    public void c() {
        this.a.c();
    }

    public void a(Intent intent, int i, int i2) {
        n.b().a(this);
    }

    public IBinder a(Intent intent) {
        return null;
    }

    public void d() {
        n.b().a();
    }
}

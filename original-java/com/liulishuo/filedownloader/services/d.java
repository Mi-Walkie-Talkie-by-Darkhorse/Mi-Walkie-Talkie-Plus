package com.liulishuo.filedownloader.services;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.liulishuo.filedownloader.c.b.a;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.message.c;
import com.liulishuo.filedownloader.message.c.b;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.lang.ref.WeakReference;

/* compiled from: FDServiceSeparateHandler */
public class d extends a implements b, i {
    private final RemoteCallbackList<com.liulishuo.filedownloader.c.a> a = new RemoteCallbackList<>();
    private final g b;
    private final WeakReference<FileDownloadService> c;

    private synchronized int b(MessageSnapshot messageSnapshot) {
        int beginBroadcast;
        beginBroadcast = this.a.beginBroadcast();
        int i = 0;
        while (i < beginBroadcast) {
            try {
                ((com.liulishuo.filedownloader.c.a) this.a.getBroadcastItem(i)).a(messageSnapshot);
                i++;
            } catch (RemoteException e) {
                com.liulishuo.filedownloader.e.d.a((Object) this, (Throwable) e, "callback error", new Object[0]);
                this.a.finishBroadcast();
            } catch (Throwable th) {
                this.a.finishBroadcast();
                throw th;
            }
        }
        this.a.finishBroadcast();
        return beginBroadcast;
    }

    d(WeakReference<FileDownloadService> weakReference, g gVar) {
        this.c = weakReference;
        this.b = gVar;
        c.a().a((b) this);
    }

    public void a(com.liulishuo.filedownloader.c.a aVar) throws RemoteException {
        this.a.register(aVar);
    }

    public void b(com.liulishuo.filedownloader.c.a aVar) throws RemoteException {
        this.a.unregister(aVar);
    }

    public boolean a(String str, String str2) throws RemoteException {
        return this.b.a(str, str2);
    }

    public void a(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) throws RemoteException {
        this.b.a(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    public boolean a(int i) throws RemoteException {
        return this.b.b(i);
    }

    public void a() throws RemoteException {
        this.b.a();
    }

    public boolean b(int i) throws RemoteException {
        return this.b.f(i);
    }

    public long c(int i) throws RemoteException {
        return this.b.c(i);
    }

    public long d(int i) throws RemoteException {
        return this.b.d(i);
    }

    public byte e(int i) throws RemoteException {
        return this.b.e(i);
    }

    public boolean b() throws RemoteException {
        return this.b.b();
    }

    public void a(int i, Notification notification) throws RemoteException {
        if (this.c != null && this.c.get() != null) {
            ((FileDownloadService) this.c.get()).startForeground(i, notification);
        }
    }

    public void a(boolean z) throws RemoteException {
        if (this.c != null && this.c.get() != null) {
            ((FileDownloadService) this.c.get()).stopForeground(z);
        }
    }

    public boolean f(int i) throws RemoteException {
        return this.b.g(i);
    }

    public void c() throws RemoteException {
        this.b.c();
    }

    public void a(Intent intent, int i, int i2) {
    }

    public IBinder a(Intent intent) {
        return this;
    }

    public void d() {
        c.a().a((b) null);
    }

    public void a(MessageSnapshot messageSnapshot) {
        b(messageSnapshot);
    }
}

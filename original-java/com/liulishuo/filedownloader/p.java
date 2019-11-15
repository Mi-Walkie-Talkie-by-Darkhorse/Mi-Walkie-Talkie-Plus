package com.liulishuo.filedownloader;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.liulishuo.filedownloader.c.a.C0045a;
import com.liulishuo.filedownloader.c.b;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.message.c;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.services.FileDownloadService.SeparateProcessService;

/* compiled from: FileDownloadServiceUIGuard */
class p extends com.liulishuo.filedownloader.services.a<a, b> {

    /* compiled from: FileDownloadServiceUIGuard */
    protected static class a extends C0045a {
        protected a() {
        }

        public void a(MessageSnapshot messageSnapshot) throws RemoteException {
            c.a().a(messageSnapshot);
        }
    }

    p() {
        super(SeparateProcessService.class);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public a b() {
        return new a();
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public b b(IBinder iBinder) {
        return com.liulishuo.filedownloader.c.b.a.a(iBinder);
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public void b(b bVar, a aVar) throws RemoteException {
        bVar.a((com.liulishuo.filedownloader.c.a) aVar);
    }

    /* access modifiers changed from: protected */
    /* renamed from: b */
    public void a(b bVar, a aVar) throws RemoteException {
        bVar.b((com.liulishuo.filedownloader.c.a) aVar);
    }

    public boolean a(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        if (!c()) {
            return com.liulishuo.filedownloader.e.a.a(str, str2, z);
        }
        try {
            ((b) d()).a(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
            return true;
        } catch (RemoteException e) {
            ThrowableExtension.printStackTrace(e);
            return false;
        }
    }

    public boolean a(int i) {
        if (!c()) {
            return com.liulishuo.filedownloader.e.a.a(i);
        }
        try {
            return ((b) d()).a(i);
        } catch (RemoteException e) {
            ThrowableExtension.printStackTrace(e);
            return false;
        }
    }

    public byte b(int i) {
        if (!c()) {
            return com.liulishuo.filedownloader.e.a.b(i);
        }
        try {
            return ((b) d()).e(i);
        } catch (RemoteException e) {
            ThrowableExtension.printStackTrace(e);
            return 0;
        }
    }
}

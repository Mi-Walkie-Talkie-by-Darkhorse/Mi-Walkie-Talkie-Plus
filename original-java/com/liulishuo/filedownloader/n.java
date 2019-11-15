package com.liulishuo.filedownloader;

import android.content.Context;
import com.liulishuo.filedownloader.e.e;
import com.liulishuo.filedownloader.model.FileDownloadHeader;

/* compiled from: FileDownloadServiceProxy */
public class n implements u {
    private final u a;

    /* compiled from: FileDownloadServiceProxy */
    private static final class a {
        /* access modifiers changed from: private */
        public static final n a = new n();
    }

    public static n a() {
        return a.a;
    }

    public static com.liulishuo.filedownloader.services.e.a b() {
        if (a().a instanceof o) {
            return (com.liulishuo.filedownloader.services.e.a) a().a;
        }
        return null;
    }

    private n() {
        this.a = e.a().d ? new o() : new p();
    }

    public boolean a(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        return this.a.a(str, str2, z, i, i2, i3, z2, fileDownloadHeader, z3);
    }

    public boolean a(int i) {
        return this.a.a(i);
    }

    public byte b(int i) {
        return this.a.b(i);
    }

    public boolean c() {
        return this.a.c();
    }

    public void a(Context context) {
        this.a.a(context);
    }
}

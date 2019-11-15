package com.liulishuo.filedownloader.download;

import com.liulishuo.filedownloader.b.a.C0043a;
import com.liulishuo.filedownloader.e.c.b;
import com.liulishuo.filedownloader.e.c.d;
import com.liulishuo.filedownloader.e.c.e;
import com.liulishuo.filedownloader.e.g;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

/* compiled from: CustomComponentHolder */
public class c {
    private com.liulishuo.filedownloader.services.c a;
    private com.liulishuo.filedownloader.e.c.a b;
    private b c;
    private e d;
    private com.liulishuo.filedownloader.b.a e;
    private d f;

    /* compiled from: CustomComponentHolder */
    private static final class a {
        /* access modifiers changed from: private */
        public static final c a = new c();
    }

    public static c a() {
        return a.a;
    }

    public com.liulishuo.filedownloader.a.b a(String str) throws IOException {
        return g().a(str);
    }

    public com.liulishuo.filedownloader.d.a a(File file) throws IOException {
        return h().a(file);
    }

    public d b() {
        if (this.f != null) {
            return this.f;
        }
        synchronized (this) {
            if (this.f == null) {
                this.f = i().f();
            }
        }
        return this.f;
    }

    public com.liulishuo.filedownloader.b.a c() {
        if (this.e != null) {
            return this.e;
        }
        synchronized (this) {
            if (this.e == null) {
                this.e = i().b();
                a(this.e.b());
            }
        }
        return this.e;
    }

    public int d() {
        return i().a();
    }

    public boolean e() {
        return h().a();
    }

    public int a(int i, String str, String str2, long j) {
        return f().a(i, str, str2, j);
    }

    private com.liulishuo.filedownloader.e.c.a f() {
        if (this.b != null) {
            return this.b;
        }
        synchronized (this) {
            if (this.b == null) {
                this.b = i().e();
            }
        }
        return this.b;
    }

    private b g() {
        if (this.c != null) {
            return this.c;
        }
        synchronized (this) {
            if (this.c == null) {
                this.c = i().d();
            }
        }
        return this.c;
    }

    private e h() {
        if (this.d != null) {
            return this.d;
        }
        synchronized (this) {
            if (this.d == null) {
                this.d = i().c();
            }
        }
        return this.d;
    }

    private com.liulishuo.filedownloader.services.c i() {
        if (this.a != null) {
            return this.a;
        }
        synchronized (this) {
            if (this.a == null) {
                this.a = new com.liulishuo.filedownloader.services.c();
            }
        }
        return this.a;
    }

    private static void a(C0043a aVar) {
        long j;
        long j2;
        long j3;
        Iterator it = aVar.iterator();
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        d b2 = a().b();
        long currentTimeMillis = System.currentTimeMillis();
        while (it.hasNext()) {
            try {
                boolean z = false;
                FileDownloadModel fileDownloadModel = (FileDownloadModel) it.next();
                if (fileDownloadModel.f() == 3 || fileDownloadModel.f() == 2 || fileDownloadModel.f() == -1 || (fileDownloadModel.f() == 1 && fileDownloadModel.g() > 0)) {
                    fileDownloadModel.a(-2);
                }
                String d2 = fileDownloadModel.d();
                if (d2 == null) {
                    z = true;
                } else {
                    File file = new File(d2);
                    if (fileDownloadModel.f() == -2 && g.a(fileDownloadModel.a(), fileDownloadModel, fileDownloadModel.c(), null)) {
                        File file2 = new File(fileDownloadModel.e());
                        if (!file2.exists() && file.exists()) {
                            boolean renameTo = file.renameTo(file2);
                            if (com.liulishuo.filedownloader.e.d.a) {
                                com.liulishuo.filedownloader.e.d.c(com.liulishuo.filedownloader.b.a.class, "resume from the old no-temp-file architecture [%B], [%s]->[%s]", Boolean.valueOf(renameTo), file.getPath(), file2.getPath());
                            }
                        }
                    }
                    if (fileDownloadModel.f() == 1 && fileDownloadModel.g() <= 0) {
                        z = true;
                    } else if (!g.a(fileDownloadModel.a(), fileDownloadModel)) {
                        z = true;
                    } else if (file.exists()) {
                        z = true;
                    }
                }
                if (z) {
                    it.remove();
                    aVar.a(fileDownloadModel);
                    long j7 = 1 + j5;
                    j2 = j4;
                    long j8 = j7;
                    j3 = j6;
                    j = j8;
                } else {
                    int a2 = fileDownloadModel.a();
                    int a3 = b2.a(a2, fileDownloadModel.b(), fileDownloadModel.c(), fileDownloadModel.l());
                    if (a3 != a2) {
                        if (com.liulishuo.filedownloader.e.d.a) {
                            com.liulishuo.filedownloader.e.d.c(com.liulishuo.filedownloader.b.a.class, "the id is changed on restoring from db: old[%d] -> new[%d]", Integer.valueOf(a2), Integer.valueOf(a3));
                        }
                        fileDownloadModel.a(a3);
                        aVar.a(a2, fileDownloadModel);
                        j6++;
                    }
                    aVar.b(fileDownloadModel);
                    long j9 = j6;
                    j = j5;
                    j2 = 1 + j4;
                    j3 = j9;
                }
                j4 = j2;
                j5 = j;
                j6 = j3;
            } finally {
                g.b(com.liulishuo.filedownloader.e.c.a());
                aVar.a();
                if (com.liulishuo.filedownloader.e.d.a) {
                    com.liulishuo.filedownloader.e.d.c(com.liulishuo.filedownloader.b.a.class, "refreshed data count: %d , delete data count: %d, reset id count: %d. consume %d", Long.valueOf(j4), Long.valueOf(j5), Long.valueOf(j6), Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                }
            }
        }
    }
}

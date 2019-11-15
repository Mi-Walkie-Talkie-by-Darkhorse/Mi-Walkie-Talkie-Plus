package com.liulishuo.filedownloader.services;

import android.text.TextUtils;
import com.liulishuo.filedownloader.b.a;
import com.liulishuo.filedownloader.download.DownloadLaunchRunnable;
import com.liulishuo.filedownloader.download.c;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.model.b;
import com.liulishuo.filedownloader.y;
import java.util.List;

/* compiled from: FileDownloadManager */
class g implements y {
    private final a a;
    private final h b;

    g() {
        c a2 = c.a();
        this.a = a2.c();
        this.b = new h(a2.d());
    }

    public synchronized void a(String str, String str2, boolean z, int i, int i2, int i3, boolean z2, FileDownloadHeader fileDownloadHeader, boolean z3) {
        String a2;
        String d;
        FileDownloadModel fileDownloadModel;
        boolean z4;
        FileDownloadModel fileDownloadModel2;
        if (d.a) {
            d.c(this, "request start the task with url(%s) path(%s) isDirectory(%B)", str, str2, Boolean.valueOf(z));
        }
        int a3 = com.liulishuo.filedownloader.e.g.a(str, str2, z);
        FileDownloadModel b2 = this.a.b(a3);
        List<com.liulishuo.filedownloader.model.a> list = null;
        if (!z && b2 == null) {
            int a4 = com.liulishuo.filedownloader.e.g.a(str, com.liulishuo.filedownloader.e.g.i(str2), true);
            b2 = this.a.b(a4);
            if (b2 != null && str2.equals(b2.d())) {
                if (d.a) {
                    d.c(this, "task[%d] find model by dirCaseId[%d]", Integer.valueOf(a3), Integer.valueOf(a4));
                }
                list = this.a.c(a4);
            }
        }
        if (!com.liulishuo.filedownloader.e.c.a(a3, b2, (y) this, true)) {
            if (b2 != null) {
                a2 = b2.d();
            } else {
                a2 = com.liulishuo.filedownloader.e.g.a(str2, z, (String) null);
            }
            if (!com.liulishuo.filedownloader.e.c.a(a3, a2, z2, true)) {
                long j = b2 != null ? b2.g() : 0;
                if (b2 != null) {
                    d = b2.e();
                } else {
                    d = com.liulishuo.filedownloader.e.g.d(a2);
                }
                if (com.liulishuo.filedownloader.e.c.a(a3, j, d, a2, this)) {
                    if (d.a) {
                        d.c(this, "there is an another task with the same target-file-path %d %s", Integer.valueOf(a3), a2);
                    }
                    if (b2 != null) {
                        this.a.e(a3);
                        this.a.d(a3);
                    }
                } else {
                    if (b2 == null || !(b2.f() == -2 || b2.f() == -1 || b2.f() == 1 || b2.f() == 6 || b2.f() == 2)) {
                        if (b2 == null) {
                            fileDownloadModel = new FileDownloadModel();
                        } else {
                            fileDownloadModel = b2;
                        }
                        fileDownloadModel.a(str);
                        fileDownloadModel.a(str2, z);
                        fileDownloadModel.a(a3);
                        fileDownloadModel.a(0);
                        fileDownloadModel.c(0);
                        fileDownloadModel.a(1);
                        fileDownloadModel.b(1);
                        z4 = true;
                        fileDownloadModel2 = fileDownloadModel;
                    } else if (b2.a() != a3) {
                        this.a.e(b2.a());
                        this.a.d(b2.a());
                        b2.a(a3);
                        b2.a(str2, z);
                        if (list != null) {
                            for (com.liulishuo.filedownloader.model.a aVar : list) {
                                aVar.a(a3);
                                this.a.a(aVar);
                            }
                        }
                        z4 = true;
                        fileDownloadModel2 = b2;
                    } else if (!TextUtils.equals(str, b2.b())) {
                        b2.a(str);
                        z4 = true;
                        fileDownloadModel2 = b2;
                    } else {
                        z4 = false;
                        fileDownloadModel2 = b2;
                    }
                    if (z4) {
                        this.a.a(fileDownloadModel2);
                    }
                    this.b.a(new DownloadLaunchRunnable.a().a(fileDownloadModel2).a(fileDownloadHeader).a((y) this).a(Integer.valueOf(i2)).b(Integer.valueOf(i)).a(Boolean.valueOf(z2)).b(Boolean.valueOf(z3)).c(Integer.valueOf(i3)).a());
                }
            } else if (d.a) {
                d.c(this, "has already completed downloading %d", Integer.valueOf(a3));
            }
        } else if (d.a) {
            d.c(this, "has already started download %d", Integer.valueOf(a3));
        }
    }

    public boolean a(String str, String str2) {
        return a(com.liulishuo.filedownloader.e.g.b(str, str2));
    }

    public boolean a(int i) {
        return a(this.a.b(i));
    }

    public boolean b(int i) {
        if (d.a) {
            d.c(this, "request pause the task %d", Integer.valueOf(i));
        }
        FileDownloadModel b2 = this.a.b(i);
        if (b2 == null) {
            return false;
        }
        b2.a(-2);
        this.b.b(i);
        return true;
    }

    public void a() {
        List<Integer> b2 = this.b.b();
        if (d.a) {
            d.c(this, "pause all tasks %d", Integer.valueOf(b2.size()));
        }
        for (Integer intValue : b2) {
            b(intValue.intValue());
        }
    }

    public long c(int i) {
        FileDownloadModel b2 = this.a.b(i);
        if (b2 == null) {
            return 0;
        }
        int n = b2.n();
        if (n <= 1) {
            return b2.g();
        }
        List c = this.a.c(i);
        if (c == null || c.size() != n) {
            return 0;
        }
        return com.liulishuo.filedownloader.model.a.a(c);
    }

    public long d(int i) {
        FileDownloadModel b2 = this.a.b(i);
        if (b2 == null) {
            return 0;
        }
        return b2.h();
    }

    public byte e(int i) {
        FileDownloadModel b2 = this.a.b(i);
        if (b2 == null) {
            return 0;
        }
        return b2.f();
    }

    public boolean b() {
        return this.b.a() <= 0;
    }

    public synchronized boolean f(int i) {
        return this.b.a(i);
    }

    public boolean a(FileDownloadModel fileDownloadModel) {
        boolean z = true;
        if (fileDownloadModel == null) {
            return false;
        }
        boolean c = this.b.c(fileDownloadModel.a());
        if (b.a((int) fileDownloadModel.f())) {
            if (!c) {
                z = false;
            }
        } else if (!c) {
            d.a(this, "%d status is[%s](not finish) & but not in the pool", Integer.valueOf(fileDownloadModel.a()), Byte.valueOf(fileDownloadModel.f()));
            z = false;
        }
        return z;
    }

    public int a(String str, int i) {
        return this.b.a(str, i);
    }

    public boolean g(int i) {
        if (i == 0) {
            d.d(this, "The task[%d] id is invalid, can't clear it.", Integer.valueOf(i));
            return false;
        } else if (a(i)) {
            d.d(this, "The task[%d] is downloading, can't clear it.", Integer.valueOf(i));
            return false;
        } else {
            this.a.e(i);
            this.a.d(i);
            return true;
        }
    }

    public void c() {
        this.a.a();
    }
}

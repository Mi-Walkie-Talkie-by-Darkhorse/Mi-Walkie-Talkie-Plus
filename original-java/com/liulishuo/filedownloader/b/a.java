package com.liulishuo.filedownloader.b;

import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.List;

/* compiled from: FileDownloadDatabase */
public interface a {

    /* renamed from: com.liulishuo.filedownloader.b.a$a reason: collision with other inner class name */
    /* compiled from: FileDownloadDatabase */
    public interface C0043a extends Iterable<FileDownloadModel> {
        void a();

        void a(int i, FileDownloadModel fileDownloadModel);

        void a(FileDownloadModel fileDownloadModel);

        void b(FileDownloadModel fileDownloadModel);
    }

    void a();

    void a(int i);

    void a(int i, int i2);

    void a(int i, int i2, long j);

    void a(int i, long j);

    void a(int i, long j, String str, String str2);

    void a(int i, String str, long j, long j2, int i2);

    void a(int i, Throwable th);

    void a(int i, Throwable th, long j);

    void a(FileDownloadModel fileDownloadModel);

    void a(com.liulishuo.filedownloader.model.a aVar);

    C0043a b();

    FileDownloadModel b(int i);

    void b(int i, long j);

    List<com.liulishuo.filedownloader.model.a> c(int i);

    void c(int i, long j);

    void d(int i);

    boolean e(int i);

    void f(int i);
}

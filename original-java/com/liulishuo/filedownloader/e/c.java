package com.liulishuo.filedownloader.e;

import android.annotation.SuppressLint;
import android.content.Context;
import com.liulishuo.filedownloader.exception.PathConflictException;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.liulishuo.filedownloader.y;
import java.io.File;
import java.io.IOException;

/* compiled from: FileDownloadHelper */
public class c {
    @SuppressLint({"StaticFieldLeak"})
    private static Context a;

    /* compiled from: FileDownloadHelper */
    public interface a {
        int a(int i, String str, String str2, long j);
    }

    /* compiled from: FileDownloadHelper */
    public interface b {
        com.liulishuo.filedownloader.a.b a(String str) throws IOException;
    }

    /* renamed from: com.liulishuo.filedownloader.e.c$c reason: collision with other inner class name */
    /* compiled from: FileDownloadHelper */
    public interface C0049c {
        com.liulishuo.filedownloader.b.a a();
    }

    /* compiled from: FileDownloadHelper */
    public interface d {
        int a(int i, String str, String str2, boolean z);

        int a(String str, String str2, boolean z);
    }

    /* compiled from: FileDownloadHelper */
    public interface e {
        com.liulishuo.filedownloader.d.a a(File file) throws IOException;

        boolean a();
    }

    public static void a(Context context) {
        a = context;
    }

    public static Context a() {
        return a;
    }

    public static boolean a(int i, String str, boolean z, boolean z2) {
        if (z || str == null) {
            return false;
        }
        File file = new File(str);
        if (!file.exists()) {
            return false;
        }
        com.liulishuo.filedownloader.message.c.a().a(com.liulishuo.filedownloader.message.d.a(i, file, z2));
        return true;
    }

    public static boolean a(int i, FileDownloadModel fileDownloadModel, y yVar, boolean z) {
        if (!yVar.a(fileDownloadModel)) {
            return false;
        }
        com.liulishuo.filedownloader.message.c.a().a(com.liulishuo.filedownloader.message.d.a(i, fileDownloadModel.g(), fileDownloadModel.h(), z));
        return true;
    }

    public static boolean a(int i, long j, String str, String str2, y yVar) {
        if (!(str2 == null || str == null)) {
            int a2 = yVar.a(str, i);
            if (a2 != 0) {
                com.liulishuo.filedownloader.message.c.a().a(com.liulishuo.filedownloader.message.d.a(i, j, (Throwable) new PathConflictException(a2, str, str2)));
                return true;
            }
        }
        return false;
    }
}

package com.liulishuo.filedownloader.exception;

import android.annotation.TargetApi;
import com.liulishuo.filedownloader.e.g;
import java.io.IOException;

public class FileDownloadOutOfSpaceException extends IOException {
    private long a;
    private long b;
    private long c;

    @TargetApi(9)
    public FileDownloadOutOfSpaceException(long j, long j2, long j3, Throwable th) {
        super(g.a("The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d", Long.valueOf(j3), Long.valueOf(j2), Long.valueOf(j)), th);
        a(j, j2, j3);
    }

    public FileDownloadOutOfSpaceException(long j, long j2, long j3) {
        super(g.a("The file is too large to store, breakpoint in bytes:  %d, required space in bytes: %d, but free space in bytes: %d", Long.valueOf(j3), Long.valueOf(j2), Long.valueOf(j)));
        a(j, j2, j3);
    }

    private void a(long j, long j2, long j3) {
        this.a = j;
        this.b = j2;
        this.c = j3;
    }
}

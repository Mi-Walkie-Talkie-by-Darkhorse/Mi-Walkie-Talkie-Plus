package com.liulishuo.filedownloader.d;

import com.liulishuo.filedownloader.e.c.e;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

/* compiled from: FileDownloadRandomAccessFile */
public class b implements a {
    private final BufferedOutputStream a = new BufferedOutputStream(new FileOutputStream(this.c.getFD()));
    private final FileDescriptor b = this.c.getFD();
    private final RandomAccessFile c;

    /* compiled from: FileDownloadRandomAccessFile */
    public static class a implements e {
        public a a(File file) throws IOException {
            return new b(file);
        }

        public boolean a() {
            return true;
        }
    }

    b(File file) throws IOException {
        this.c = new RandomAccessFile(file, "rw");
    }

    public void a(byte[] bArr, int i, int i2) throws IOException {
        this.a.write(bArr, i, i2);
    }

    public void a() throws IOException {
        this.a.flush();
        this.b.sync();
    }

    public void b() throws IOException {
        this.a.close();
    }

    public void a(long j) throws IOException {
        this.c.seek(j);
    }

    public void b(long j) throws IOException {
        this.c.setLength(j);
    }
}

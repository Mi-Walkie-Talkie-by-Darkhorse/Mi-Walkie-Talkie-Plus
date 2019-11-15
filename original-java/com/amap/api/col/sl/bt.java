package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;

/* compiled from: CoordinatorSoDownloader */
public final class bt extends by {
    public bt(Context context, String str, String str2, String str3) {
        super(context, str, str2, str3);
    }

    public final void a() {
        if (this.a != null && !TextUtils.isEmpty(this.a.f()) && this.a.f().endsWith("png") && this.a.f().contains(ca.a(this.f)) && !new File(this.d).exists()) {
            start();
        }
    }

    public final void b() {
        try {
            if (this.b != null) {
                this.b.close();
            }
            String a = bw.a(this.c);
            if (a == null || !a.equalsIgnoreCase(this.e)) {
                e();
                return;
            }
            File file = new File(this.d);
            if (file.exists()) {
                e();
                return;
            }
            File file2 = new File(this.c);
            if (file2.exists()) {
                a(file2, file);
                e();
            }
        } catch (Throwable th) {
            e();
            File file3 = new File(this.d);
            if (file3.exists()) {
                file3.delete();
            }
            cj.a(th, "sdl", "ofs");
        }
    }

    private static void a(File file, File file2) {
        int i = 0;
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            fileInputStream.read(new byte[32]);
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    if (read == 1024) {
                        randomAccessFile.seek((long) i);
                        randomAccessFile.write(bArr);
                    } else {
                        byte[] bArr2 = new byte[read];
                        System.arraycopy(bArr, 0, bArr2, 0, read);
                        randomAccessFile.seek((long) i);
                        randomAccessFile.write(bArr2);
                    }
                    i += read;
                } else {
                    fileInputStream.close();
                    randomAccessFile.close();
                    file.delete();
                    return;
                }
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }
}

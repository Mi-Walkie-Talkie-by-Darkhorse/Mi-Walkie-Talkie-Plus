package com.amap.api.mapcore.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* compiled from: FileAccessI */
class bd {
    RandomAccessFile a;

    public bd() throws IOException {
        this("", 0);
    }

    public bd(String str, long j) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            try {
                if (!file.exists()) {
                    file.createNewFile();
                }
            } catch (IOException e) {
                gf.b((Throwable) e, "FileAccessI", "create");
                ThrowableExtension.printStackTrace(e);
            }
        }
        this.a = new RandomAccessFile(str, "rw");
        this.a.seek(j);
    }

    public synchronized int a(byte[] bArr) throws IOException {
        this.a.write(bArr);
        return bArr.length;
    }

    public void a() {
        if (this.a != null) {
            try {
                this.a.close();
            } catch (IOException e) {
                ThrowableExtension.printStackTrace(e);
            }
            this.a = null;
        }
    }
}

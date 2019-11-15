package com.amap.api.mapcore.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: FileCopy */
public class be {

    /* compiled from: FileCopy */
    public interface a {
        void a(String str, String str2);

        void a(String str, String str2, float f);

        void a(String str, String str2, int i);

        void b(String str, String str2);
    }

    public long a(File file, File file2, long j, long j2, a aVar) {
        long j3;
        if (j == 0) {
            if (aVar != null) {
                aVar.a("", "", -1);
            }
            return 0;
        }
        String absolutePath = file.getAbsolutePath();
        String absolutePath2 = file2.getAbsolutePath();
        try {
            if (!file.isDirectory()) {
                File parentFile = file2.getParentFile();
                if (parentFile == null || parentFile.exists() || parentFile.mkdirs()) {
                    if (aVar != null && j <= 0) {
                        aVar.a(absolutePath, absolutePath2);
                    }
                    FileInputStream fileInputStream = new FileInputStream(file);
                    FileOutputStream fileOutputStream = new FileOutputStream(file2);
                    byte[] bArr = new byte[1024];
                    while (true) {
                        j3 = j;
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                        j = j3 + ((long) read);
                        if (aVar != null) {
                            aVar.a(absolutePath, absolutePath2, a(j, j2));
                        }
                    }
                    fileInputStream.close();
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    if (aVar == null || j3 < j2 - 1) {
                        return j3;
                    }
                    aVar.b(absolutePath, absolutePath2);
                    return j3;
                }
                throw new IOException("Cannot create dir " + parentFile.getAbsolutePath());
            } else if (file2.exists() || file2.mkdirs()) {
                String[] list = file.list();
                if (list == null) {
                    return j;
                }
                int i = 0;
                j3 = j;
                while (i < list.length) {
                    try {
                        j3 = a(new File(file, list[i]), new File(file2, list[i]), j3, j2, aVar);
                        i++;
                    } catch (Exception e) {
                        e = e;
                        ThrowableExtension.printStackTrace(e);
                        if (aVar == null) {
                            return j3;
                        }
                        aVar.a(absolutePath, absolutePath2, -1);
                        return j3;
                    }
                }
                return j3;
            } else {
                throw new IOException("Cannot create dir " + file2.getAbsolutePath());
            }
        } catch (Exception e2) {
            e = e2;
            j3 = j;
        }
    }

    private float a(long j, long j2) {
        return (((float) j) / ((float) j2)) * 100.0f;
    }
}

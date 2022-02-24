package com.xiaomi.accountsdk.diagnosis.e;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes2.dex */
public class f {
    public static void a(File[] fileArr, File file) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        ZipOutputStream zipOutputStream = new ZipOutputStream(fileOutputStream);
        for (File file2 : fileArr) {
            if (file2.exists() && file2.isFile()) {
                FileInputStream fileInputStream = new FileInputStream(file2);
                zipOutputStream.putNextEntry(new ZipEntry(file2.getName()));
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read < 0) {
                        break;
                    }
                    zipOutputStream.write(bArr, 0, read);
                }
                fileInputStream.close();
            }
        }
        zipOutputStream.close();
        fileOutputStream.close();
    }
}

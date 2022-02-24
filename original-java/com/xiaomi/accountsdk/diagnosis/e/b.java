package com.xiaomi.accountsdk.diagnosis.e;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes2.dex */
public class b {
    public static void a(File file) {
        IOException e = null;
        for (File file2 : f(file)) {
            try {
                e(file2);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    public static boolean a(File file, String str) {
        File file2 = new File(file.getCanonicalPath(), str);
        return !file2.getAbsolutePath().equals(file2.getCanonicalPath());
    }

    public static boolean b(File file) {
        if (file != null) {
            return c(file);
        }
        throw new NullPointerException("File must not be null");
    }

    public static boolean c(File file) {
        return a(file.getParentFile(), file.getName());
    }

    public static void d(File file) {
        if (file.exists()) {
            if (!b(file)) {
                a(file);
            }
            if (!file.delete()) {
                throw new IOException("Unable to delete directory " + file + ".");
            }
        }
    }

    public static void e(File file) {
        if (file.isDirectory()) {
            d(file);
            return;
        }
        boolean exists = file.exists();
        if (file.delete()) {
            return;
        }
        if (!exists) {
            throw new FileNotFoundException("File does not exist: " + file);
        }
        throw new IOException("Unable to delete file: " + file);
    }

    private static File[] f(File file) {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                return listFiles;
            }
            throw new IOException("Failed to list contents of " + file);
        } else {
            throw new IllegalArgumentException(file + " is not a directory");
        }
    }
}

package com.xiaomi.accountsdk.diagnosis.p271e;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Objects;

/* renamed from: com.xiaomi.accountsdk.diagnosis.e.b */
/* loaded from: classes2.dex */
public class C5854b {
    /* renamed from: a */
    public static void m4202a(File file) {
        IOException e = null;
        for (File file2 : m4196f(file)) {
            try {
                m4197e(file2);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    /* renamed from: a */
    public static boolean m4201a(File file, String str) {
        File file2 = new File(file.getCanonicalPath(), str);
        return !file2.getAbsolutePath().equals(file2.getCanonicalPath());
    }

    /* renamed from: b */
    public static boolean m4200b(File file) {
        Objects.requireNonNull(file, "File must not be null");
        return m4199c(file);
    }

    /* renamed from: c */
    public static boolean m4199c(File file) {
        return m4201a(file.getParentFile(), file.getName());
    }

    /* renamed from: d */
    public static void m4198d(File file) {
        if (file.exists()) {
            if (!m4200b(file)) {
                m4202a(file);
            }
            if (file.delete()) {
                return;
            }
            throw new IOException("Unable to delete directory " + file + ".");
        }
    }

    /* renamed from: e */
    public static void m4197e(File file) {
        if (file.isDirectory()) {
            m4198d(file);
            return;
        }
        boolean exists = file.exists();
        if (file.delete()) {
            return;
        }
        if (exists) {
            throw new IOException("Unable to delete file: " + file);
        }
        throw new FileNotFoundException("File does not exist: " + file);
    }

    /* renamed from: f */
    private static File[] m4196f(File file) {
        if (!file.exists()) {
            throw new IllegalArgumentException(file + " does not exist");
        } else if (!file.isDirectory()) {
            throw new IllegalArgumentException(file + " is not a directory");
        } else {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                return listFiles;
            }
            throw new IOException("Failed to list contents of " + file);
        }
    }
}

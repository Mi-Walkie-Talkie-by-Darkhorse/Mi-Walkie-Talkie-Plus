package com.ifengyu.library.utils;

import android.content.Context;
import android.os.Environment;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: FileUtils.java */
/* renamed from: com.ifengyu.library.utils.j */
/* loaded from: classes2.dex */
public class C4970j {

    /* renamed from: a */
    private static final String f16387a = "j";

    /* renamed from: a */
    public static void m8669a(Context context, String str, String str2, String str3) {
        File file = new File(str2);
        try {
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(str2, str3);
            file2.createNewFile();
            m8668b(context, str, file2.getPath());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m8668b(Context context, String str, String str2) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(str2);
        InputStream open = context.getAssets().open(str);
        byte[] bArr = new byte[1024];
        for (int read = open.read(bArr); read > 0; read = open.read(bArr)) {
            fileOutputStream.write(bArr, 0, read);
        }
        fileOutputStream.flush();
        open.close();
        fileOutputStream.close();
    }

    /* renamed from: c */
    public static void m8667c(File file) {
        File[] listFiles;
        if (file != null && file.exists() && file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                if (file2.isFile()) {
                    file2.delete();
                } else if (file2.isDirectory()) {
                    m8667c(file2);
                }
            }
            file.delete();
        }
    }

    /* renamed from: d */
    public static File m8666d(Context context, String str) {
        String path;
        if (!"mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable()) {
            path = context.getCacheDir().getPath();
        } else {
            path = context.getExternalCacheDir().getPath();
        }
        return new File(path + File.separator + str);
    }

    /* renamed from: e */
    public static boolean m8665e(String str) {
        return str == null || str.trim().length() == 0;
    }

    /* renamed from: f */
    public static boolean m8664f(String str) {
        if (m8665e(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    /* renamed from: g */
    public static File m8663g(String str, String str2) {
        m8662h(str);
        File file = null;
        try {
            File file2 = new File(str + str2);
            try {
                if (file2.exists()) {
                    return file2;
                }
                file2.createNewFile();
                return file2;
            } catch (Exception e) {
                e = e;
                file = file2;
                e.printStackTrace();
                return file;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    /* renamed from: h */
    public static void m8662h(String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                if (file.getParentFile().exists()) {
                    file.mkdir();
                } else {
                    m8662h(file.getParentFile().getAbsolutePath());
                    m8662h(str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0070 A[Catch: Exception -> 0x006c, TRY_LEAVE, TryCatch #3 {Exception -> 0x006c, blocks: (B:40:0x0068, B:44:0x0070), top: B:50:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] m8661i(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream;
        if (str == null) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(str);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (IOException e) {
                e = e;
                byteArrayOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
                if (fileInputStream != null) {
                }
                if (byteArrayOutputStream != null) {
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            byteArrayOutputStream = null;
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            byteArrayOutputStream = null;
        }
        try {
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                fileInputStream.close();
                byteArrayOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    fileInputStream.close();
                    byteArrayOutputStream.close();
                } catch (Exception e3) {
                    C4971k.m8646n(f16387a, "readBytes close error,", e3);
                }
                return byteArray;
            } catch (Throwable th4) {
                th = th4;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e4) {
                        C4971k.m8646n(f16387a, "readBytes close error,", e4);
                        throw th;
                    }
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                throw th;
            }
        } catch (IOException e5) {
            e = e5;
            C4971k.m8656d(f16387a, "Got exception while readBytes,", e);
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception e6) {
                    C4971k.m8646n(f16387a, "readBytes close error,", e6);
                    return null;
                }
            }
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.io.BufferedOutputStream] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* renamed from: j */
    public static File m8660j(byte[] bArr, String str, String str2) {
        FileOutputStream fileOutputStream;
        File m8663g = m8663g(str, str2);
        BufferedOutputStream bufferedOutputStream = null;
        bufferedOutputStream = 0;
        bufferedOutputStream = 0;
        bufferedOutputStream = 0;
        bufferedOutputStream = null;
        try {
            try {
            } catch (IOException e) {
                bufferedOutputStream = f16387a;
                C4971k.m8646n(bufferedOutputStream, "writeBytes close error,", e);
            }
            if (m8663g == null) {
                return null;
            }
            try {
                fileOutputStream = new FileOutputStream(m8663g);
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                    try {
                        bufferedOutputStream2.write(bArr);
                        bufferedOutputStream2.close();
                        fileOutputStream.close();
                    } catch (Exception e2) {
                        e = e2;
                        bufferedOutputStream = bufferedOutputStream2;
                        C4971k.m8656d(f16387a, "Got exception while writeBytes,", e);
                        if (bufferedOutputStream != 0) {
                            bufferedOutputStream.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        return m8663g;
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        if (bufferedOutputStream != null) {
                            try {
                                bufferedOutputStream.close();
                            } catch (IOException e3) {
                                C4971k.m8646n(f16387a, "writeBytes close error,", e3);
                                throw th;
                            }
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                }
            } catch (Exception e5) {
                e = e5;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
            return m8663g;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}

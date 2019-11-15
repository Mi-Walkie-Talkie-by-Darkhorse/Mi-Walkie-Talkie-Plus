package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import dalvik.system.DexFile;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.RandomAccessFile;
import java.util.List;

/* compiled from: DexFileManager */
public class hd {

    /* compiled from: DexFileManager */
    public static class a {
        public static void a(gl glVar, hh hhVar, String str) {
            glVar.a((Object) hhVar, str);
        }

        public static hh a(gl glVar, String str) {
            List b = glVar.b(hh.b(str), hh.class);
            if (b == null || b.size() <= 0) {
                return null;
            }
            return (hh) b.get(0);
        }

        public static List<hh> a(gl glVar, String str, String str2) {
            return glVar.b(hh.b(str, str2), hh.class);
        }
    }

    static String a(String str) {
        return str + ".o";
    }

    static String a(Context context, String str, String str2) {
        return fu.b(str + str2 + fs.t(context)) + ".jar";
    }

    static String b(Context context, String str, String str2) {
        return a(context, a(context, str, str2));
    }

    static String a(Context context, String str) {
        return a(context) + File.separator + str;
    }

    static String a(Context context) {
        return context.getFilesDir().getAbsolutePath() + File.separator + "pngex";
    }

    static void a(Context context, fx fxVar) {
        try {
            String b = b(context, fxVar.a(), fxVar.b());
            if (!TextUtils.isEmpty(b)) {
                File file = new File(b);
                File parentFile = file.getParentFile();
                if (file.exists()) {
                    String a2 = a(context, a(file.getName()));
                    DexFile loadDex = DexFile.loadDex(b, a2, 0);
                    if (loadDex != null) {
                        loadDex.close();
                        a(context, file, a2, fxVar);
                    }
                } else if (parentFile != null && parentFile.exists()) {
                    c(context, fxVar.a(), fxVar.b());
                }
            }
        } catch (Throwable th) {
            hj.a(th, "BaseLoader", "getInstanceByThread()");
        }
    }

    static void b(Context context, String str) {
        gl glVar = new gl(context, hf.a());
        List a2 = a.a(glVar, str, "copy");
        hj.a(a2);
        if (a2 != null && a2.size() > 1) {
            int size = a2.size();
            for (int i = 1; i < size; i++) {
                c(context, glVar, ((hh) a2.get(i)).a());
            }
        }
    }

    static void a(Context context, gl glVar, String str) {
        c(context, glVar, str);
        c(context, glVar, a(str));
    }

    static void c(final Context context, final String str, final String str2) {
        gf.c().submit(new Runnable() {
            public void run() {
                try {
                    gl glVar = new gl(context, hf.a());
                    List<hh> b2 = glVar.b(hh.a(str), hh.class);
                    if (b2 != null && b2.size() > 0) {
                        for (hh hhVar : b2) {
                            if (!str2.equalsIgnoreCase(hhVar.d())) {
                                hd.c(context, glVar, hhVar.a());
                            }
                        }
                    }
                } catch (Throwable th) {
                    hj.a(th, "FileManager", "clearUnSuitableV");
                }
            }
        });
    }

    static void a(gl glVar, Context context, String str) {
        List<hh> a2 = a.a(glVar, str, "used");
        if (a2 != null && a2.size() > 0) {
            for (hh hhVar : a2) {
                if (hhVar != null && hhVar.c().equals(str)) {
                    a(context, glVar, hhVar.a());
                    List b = glVar.b(hh.a(str, hhVar.e()), hh.class);
                    if (b != null && b.size() > 0) {
                        hh hhVar2 = (hh) b.get(0);
                        hhVar2.c("errorstatus");
                        a.a(glVar, hhVar2, hh.b(hhVar2.a()));
                        File file = new File(a(context, hhVar2.a()));
                        if (file.exists()) {
                            file.delete();
                        }
                    }
                }
            }
        }
    }

    static void a(Context context, gl glVar, fx fxVar, String str, String str2) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileInputStream fileInputStream;
        RandomAccessFile randomAccessFile2;
        FileInputStream fileInputStream2;
        File file;
        try {
            String a2 = fxVar.a();
            String a3 = a(context, a2, fxVar.b());
            a(context, glVar, a3);
            fileInputStream2 = new FileInputStream(new File(str));
            try {
                fileInputStream2.read(new byte[32]);
                file = new File(b(context, a2, fxVar.b()));
                randomAccessFile2 = new RandomAccessFile(file, "rw");
            } catch (Throwable th) {
                th = th;
                randomAccessFile2 = null;
                try {
                    hj.a((Closeable) fileInputStream2);
                } catch (Throwable th2) {
                    ThrowableExtension.printStackTrace(th2);
                }
                try {
                    hj.a((Closeable) randomAccessFile2);
                } catch (Throwable th3) {
                    ThrowableExtension.printStackTrace(th3);
                }
                throw th;
            }
            try {
                byte[] bArr = new byte[1024];
                int i = 0;
                while (true) {
                    int read = fileInputStream2.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    if (read == 1024) {
                        randomAccessFile2.seek((long) i);
                        randomAccessFile2.write(bArr);
                    } else {
                        byte[] bArr2 = new byte[read];
                        System.arraycopy(bArr, 0, bArr2, 0, read);
                        randomAccessFile2.seek((long) i);
                        randomAccessFile2.write(bArr2);
                    }
                    i += read;
                }
                hh a4 = new com.amap.api.mapcore.util.hh.a(a3, fu.a(file.getAbsolutePath()), a2, fxVar.b(), str2).a("used").a();
                a.a(glVar, a4, hh.b(a4.a()));
                try {
                    hj.a((Closeable) fileInputStream2);
                } catch (Throwable th4) {
                    ThrowableExtension.printStackTrace(th4);
                }
                try {
                    hj.a((Closeable) randomAccessFile2);
                } catch (Throwable th5) {
                    ThrowableExtension.printStackTrace(th5);
                }
            } catch (Throwable th6) {
                th = th6;
                hj.a((Closeable) fileInputStream2);
                hj.a((Closeable) randomAccessFile2);
                throw th;
            }
        } catch (Throwable th7) {
            th = th7;
            randomAccessFile2 = null;
            fileInputStream2 = null;
            hj.a((Closeable) fileInputStream2);
            hj.a((Closeable) randomAccessFile2);
            throw th;
        }
    }

    static String a(Context context, gl glVar, fx fxVar) {
        List b = glVar.b(hh.b(fxVar.a(), "copy"), hh.class);
        if (b == null || b.size() == 0) {
            return null;
        }
        hj.a(b);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= b.size()) {
                return null;
            }
            hh hhVar = (hh) b.get(i2);
            if (hj.a(context, glVar, hhVar.a(), fxVar)) {
                try {
                    a(context, glVar, fxVar, a(context, hhVar.a()), hhVar.e());
                    return hhVar.e();
                } catch (Throwable th) {
                    hj.a(th, "FileManager", "loadAvailableD");
                }
            } else {
                c(context, glVar, hhVar.a());
                i = i2 + 1;
            }
        }
    }

    static void a(Context context, File file, fx fxVar) {
        File parentFile = file.getParentFile();
        if (!file.exists() && parentFile != null && parentFile.exists()) {
            c(context, fxVar.a(), fxVar.b());
        }
    }

    /* access modifiers changed from: private */
    public static void c(Context context, gl glVar, String str) {
        File file = new File(a(context, str));
        if (file.exists()) {
            file.delete();
        }
        glVar.a(hh.b(str), hh.class);
    }

    private static void a(Context context, File file, String str, fx fxVar) {
        String str2 = null;
        gl glVar = new gl(context, hf.a());
        hh a2 = a.a(glVar, file.getName());
        if (a2 != null) {
            str2 = a2.e();
        }
        File file2 = new File(str);
        if (!TextUtils.isEmpty(str2) && file2.exists()) {
            String a3 = fu.a(str);
            String name = file2.getName();
            a.a(glVar, new com.amap.api.mapcore.util.hh.a(name, a3, fxVar.a(), fxVar.b(), str2).a("useod").a(), hh.b(name));
        }
    }
}

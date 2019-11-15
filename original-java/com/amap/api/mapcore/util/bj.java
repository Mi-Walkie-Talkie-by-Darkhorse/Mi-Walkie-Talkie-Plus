package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* compiled from: UnZipFile */
public class bj {
    private b a;

    /* compiled from: UnZipFile */
    public static class a {
        public boolean a = false;
    }

    /* compiled from: UnZipFile */
    private class b {
        private String b;
        private String c;
        private bf d = null;
        private a e = new a();
        private String f;

        public b(bg bgVar, bf bfVar) {
            this.b = bgVar.B();
            this.c = bgVar.C();
            this.d = bfVar;
        }

        public void a(String str) {
            if (str.length() > 1) {
                this.f = str;
            }
        }

        public String a() {
            return this.b;
        }

        public String b() {
            return this.c;
        }

        public String c() {
            return this.f;
        }

        public bf d() {
            return this.d;
        }

        public a e() {
            return this.e;
        }

        public void f() {
            this.e.a = true;
        }
    }

    /* compiled from: UnZipFile */
    public interface c {
        void a();

        void a(long j);
    }

    public bj(bg bgVar, bf bfVar) {
        this.a = new b(bgVar, bfVar);
    }

    public void a() {
        if (this.a != null) {
            this.a.f();
        }
    }

    public void b() {
        if (this.a != null) {
            a(this.a);
        }
    }

    private static void a(b bVar) {
        if (bVar != null) {
            final bf d = bVar.d();
            if (d != null) {
                d.q();
            }
            String a2 = bVar.a();
            String b2 = bVar.b();
            if (!TextUtils.isEmpty(a2) && !TextUtils.isEmpty(b2)) {
                File file = new File(a2);
                if (file.exists()) {
                    File file2 = new File(b2);
                    if (file2.exists() || !file2.mkdirs()) {
                    }
                    AnonymousClass1 r2 = new c() {
                        public void a(long j) {
                            try {
                                if (d != null) {
                                    d.a(j);
                                }
                            } catch (Exception e) {
                            }
                        }

                        public void a() {
                            if (d != null) {
                                d.r();
                            }
                        }
                    };
                    try {
                        if (bVar.e().a && d != null) {
                            d.s();
                        }
                        a(file, file2, r2, bVar);
                        if (bVar.e().a) {
                            if (d != null) {
                                d.s();
                            }
                        } else if (d != null) {
                            d.b(bVar.c());
                        }
                    } catch (Throwable th) {
                        if (bVar.e().a) {
                            if (d != null) {
                                d.s();
                            }
                        } else if (d != null) {
                            d.r();
                        }
                    }
                } else if (bVar.e().a) {
                    if (d != null) {
                        d.s();
                    }
                } else if (d != null) {
                    d.r();
                }
            } else if (bVar.e().a) {
                if (d != null) {
                    d.s();
                }
            } else if (d != null) {
                d.r();
            }
        }
    }

    private static void a(File file, File file2, c cVar, b bVar) throws Exception {
        StringBuffer stringBuffer = new StringBuffer();
        a e = bVar.e();
        long j = 0;
        if (cVar != null) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                CheckedInputStream checkedInputStream = new CheckedInputStream(fileInputStream, new CRC32());
                ZipInputStream zipInputStream = new ZipInputStream(checkedInputStream);
                while (true) {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry != null) {
                        if (e != null && e.a) {
                            zipInputStream.closeEntry();
                            zipInputStream.close();
                            checkedInputStream.close();
                            fileInputStream.close();
                            break;
                        }
                        if (!nextEntry.isDirectory()) {
                            if (!a(nextEntry.getName())) {
                                cVar.a();
                                break;
                            }
                            stringBuffer.append(nextEntry.getName()).append(";");
                        }
                        j += nextEntry.getSize();
                        zipInputStream.closeEntry();
                    } else {
                        break;
                    }
                }
                bVar.a(stringBuffer.toString());
                zipInputStream.close();
                checkedInputStream.close();
                fileInputStream.close();
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
        FileInputStream fileInputStream2 = new FileInputStream(file);
        CheckedInputStream checkedInputStream2 = new CheckedInputStream(fileInputStream2, new CRC32());
        ZipInputStream zipInputStream2 = new ZipInputStream(checkedInputStream2);
        a(file2, zipInputStream2, j, cVar, e);
        zipInputStream2.close();
        checkedInputStream2.close();
        fileInputStream2.close();
    }

    private static void a(File file, ZipInputStream zipInputStream, long j, c cVar, a aVar) throws Exception {
        int i = 0;
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                return;
            }
            if (aVar == null || !aVar.a) {
                String str = file.getPath() + File.separator + nextEntry.getName();
                if (a(str)) {
                    File file2 = new File(str);
                    a(file2);
                    int a2 = nextEntry.isDirectory() ? !file2.mkdirs() ? i : i : a(file2, zipInputStream, (long) i, j, cVar, aVar) + i;
                    zipInputStream.closeEntry();
                    i = a2;
                } else if (cVar != null) {
                    cVar.a();
                    return;
                } else {
                    return;
                }
            } else {
                zipInputStream.closeEntry();
                return;
            }
        }
    }

    private static boolean a(String str) {
        if (str.contains("../")) {
            return false;
        }
        return true;
    }

    private static int a(File file, ZipInputStream zipInputStream, long j, long j2, c cVar, a aVar) throws Exception {
        int i = 0;
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
        byte[] bArr = new byte[1024];
        while (true) {
            int read = zipInputStream.read(bArr, 0, 1024);
            if (read != -1) {
                if (aVar != null && aVar.a) {
                    bufferedOutputStream.close();
                    break;
                }
                bufferedOutputStream.write(bArr, 0, read);
                i += read;
                if (j2 > 0 && cVar != null) {
                    long j3 = ((((long) i) + j) * 100) / j2;
                    if (aVar == null || !aVar.a) {
                        cVar.a(j3);
                    }
                }
            } else {
                bufferedOutputStream.close();
                break;
            }
        }
        return i;
    }

    private static void a(File file) {
        File parentFile = file.getParentFile();
        if (!parentFile.exists()) {
            a(parentFile);
            if (!parentFile.mkdir()) {
            }
        }
    }
}

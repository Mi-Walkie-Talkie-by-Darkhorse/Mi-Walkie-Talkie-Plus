package com.ifengyu.intercom.b;

import android.content.Context;
import android.os.Process;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ACache */
public class a {
    private static Map<String, a> a = new HashMap();
    private C0028a b;

    /* renamed from: com.ifengyu.intercom.b.a$a reason: collision with other inner class name */
    /* compiled from: ACache */
    public class C0028a {
        protected File a;
        /* access modifiers changed from: private */
        public final AtomicLong c;
        /* access modifiers changed from: private */
        public final AtomicInteger d;
        private final long e;
        private final int f;
        /* access modifiers changed from: private */
        public final Map<File, Long> g;

        private C0028a(File file, long j, int i) {
            this.g = Collections.synchronizedMap(new HashMap());
            this.a = file;
            this.e = j;
            this.f = i;
            this.c = new AtomicLong();
            this.d = new AtomicInteger();
            a();
        }

        private void a() {
            new Thread(new Runnable() {
                public void run() {
                    File[] listFiles = C0028a.this.a.listFiles();
                    if (listFiles != null) {
                        int i = 0;
                        int i2 = 0;
                        for (File file : listFiles) {
                            i2 = (int) (((long) i2) + C0028a.this.b(file));
                            i++;
                            C0028a.this.g.put(file, Long.valueOf(file.lastModified()));
                        }
                        C0028a.this.c.set((long) i2);
                        C0028a.this.d.set(i);
                    }
                }
            }).start();
        }

        /* access modifiers changed from: private */
        public void a(File file) {
            int i = this.d.get();
            while (i + 1 > this.f) {
                this.c.addAndGet(-b());
                i = this.d.addAndGet(-1);
            }
            this.d.addAndGet(1);
            long b2 = b(file);
            long j = this.c.get();
            while (j + b2 > this.e) {
                j = this.c.addAndGet(-b());
            }
            this.c.addAndGet(b2);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.g.put(file, valueOf);
        }

        /* access modifiers changed from: private */
        public File a(String str) {
            File b2 = b(str);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            b2.setLastModified(valueOf.longValue());
            this.g.put(b2, valueOf);
            return b2;
        }

        /* access modifiers changed from: private */
        public File b(String str) {
            return new File(this.a, str.hashCode() + "");
        }

        /* access modifiers changed from: private */
        public boolean c(String str) {
            return a(str).delete();
        }

        private long b() {
            File file;
            Long l;
            File file2 = null;
            if (this.g.isEmpty()) {
                return 0;
            }
            Set<Entry> entrySet = this.g.entrySet();
            synchronized (this.g) {
                Long l2 = null;
                for (Entry entry : entrySet) {
                    if (file2 == null) {
                        file = (File) entry.getKey();
                        l = (Long) entry.getValue();
                    } else {
                        Long l3 = (Long) entry.getValue();
                        if (l3.longValue() < l2.longValue()) {
                            File file3 = (File) entry.getKey();
                            l = l3;
                            file = file3;
                        } else {
                            file = file2;
                            l = l2;
                        }
                    }
                    file2 = file;
                    l2 = l;
                }
            }
            long b2 = b(file2);
            if (!file2.delete()) {
                return b2;
            }
            this.g.remove(file2);
            return b2;
        }

        /* access modifiers changed from: private */
        public long b(File file) {
            return file.length();
        }
    }

    /* compiled from: ACache */
    private static class b {
        /* access modifiers changed from: private */
        public static boolean c(byte[] bArr) {
            String[] f = f(bArr);
            if (f != null && f.length == 2) {
                String str = f[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(f[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: private */
        public static byte[] b(int i, byte[] bArr) {
            byte[] bytes = a(i).getBytes();
            byte[] bArr2 = new byte[(bytes.length + bArr.length)];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* access modifiers changed from: private */
        public static byte[] d(byte[] bArr) {
            if (e(bArr)) {
                return a(bArr, a(bArr, ' ') + 1, bArr.length);
            }
            return bArr;
        }

        private static boolean e(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14;
        }

        private static String[] f(byte[] bArr) {
            if (!e(bArr)) {
                return null;
            }
            return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
        }

        /* JADX WARNING: Incorrect type for immutable var: ssa=char, code=byte, for r3v0, types: [byte, char] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static int a(byte[] r2, byte r3) {
            /*
                r0 = 0
            L_0x0001:
                int r1 = r2.length
                if (r0 >= r1) goto L_0x000c
                byte r1 = r2[r0]
                if (r1 != r3) goto L_0x0009
            L_0x0008:
                return r0
            L_0x0009:
                int r0 = r0 + 1
                goto L_0x0001
            L_0x000c:
                r0 = -1
                goto L_0x0008
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.b.a.b.a(byte[], char):int");
        }

        private static byte[] a(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException(i + " > " + i2);
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
            return bArr2;
        }

        private static String a(int i) {
            String str = System.currentTimeMillis() + "";
            while (str.length() < 13) {
                str = "0" + str;
            }
            return str + "-" + i + ' ';
        }
    }

    public static a a(Context context, String str) {
        return a(new File(context.getCacheDir(), str), 50000000, Integer.MAX_VALUE);
    }

    public static a a(File file) {
        return a(file, 50000000, Integer.MAX_VALUE);
    }

    public static a a(File file, long j, int i) {
        a aVar = (a) a.get(file.getAbsoluteFile() + a());
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(file, j, i);
        a.put(file.getAbsolutePath() + a(), aVar2);
        return aVar2;
    }

    private static String a() {
        return "_" + Process.myPid();
    }

    private a(File file, long j, int i) {
        if (file.exists() || file.mkdirs()) {
            this.b = new C0028a(file, j, i);
            return;
        }
        throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0029 A[SYNTHETIC, Splitter:B:16:0x0029] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x003e A[SYNTHETIC, Splitter:B:24:0x003e] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.lang.String r5, byte[] r6) {
        /*
            r4 = this;
            com.ifengyu.intercom.b.a$a r0 = r4.b
            java.io.File r3 = r0.b(r5)
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0022, all -> 0x003a }
            r1.<init>(r3)     // Catch:{ Exception -> 0x0022, all -> 0x003a }
            r1.write(r6)     // Catch:{ Exception -> 0x0051 }
            if (r1 == 0) goto L_0x0017
            r1.flush()     // Catch:{ IOException -> 0x001d }
            r1.close()     // Catch:{ IOException -> 0x001d }
        L_0x0017:
            com.ifengyu.intercom.b.a$a r0 = r4.b
            r0.a(r3)
        L_0x001c:
            return
        L_0x001d:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0017
        L_0x0022:
            r0 = move-exception
            r1 = r2
        L_0x0024:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x004f }
            if (r1 == 0) goto L_0x002f
            r1.flush()     // Catch:{ IOException -> 0x0035 }
            r1.close()     // Catch:{ IOException -> 0x0035 }
        L_0x002f:
            com.ifengyu.intercom.b.a$a r0 = r4.b
            r0.a(r3)
            goto L_0x001c
        L_0x0035:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x002f
        L_0x003a:
            r0 = move-exception
            r1 = r2
        L_0x003c:
            if (r1 == 0) goto L_0x0044
            r1.flush()     // Catch:{ IOException -> 0x004a }
            r1.close()     // Catch:{ IOException -> 0x004a }
        L_0x0044:
            com.ifengyu.intercom.b.a$a r1 = r4.b
            r1.a(r3)
            throw r0
        L_0x004a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0044
        L_0x004f:
            r0 = move-exception
            goto L_0x003c
        L_0x0051:
            r0 = move-exception
            goto L_0x0024
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.b.a.a(java.lang.String, byte[]):void");
    }

    public void a(String str, byte[] bArr, int i) {
        a(str, b.b(i, bArr));
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x0062 A[SYNTHETIC, Splitter:B:39:0x0062] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] a(java.lang.String r7) {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            com.ifengyu.intercom.b.a$a r2 = r6.b     // Catch:{ Exception -> 0x004d, all -> 0x005d }
            java.io.File r3 = r2.a(r7)     // Catch:{ Exception -> 0x004d, all -> 0x005d }
            boolean r2 = r3.exists()     // Catch:{ Exception -> 0x004d, all -> 0x005d }
            if (r2 != 0) goto L_0x0019
            if (r0 == 0) goto L_0x0013
            r1.close()     // Catch:{ IOException -> 0x0014 }
        L_0x0013:
            return r0
        L_0x0014:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0013
        L_0x0019:
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch:{ Exception -> 0x004d, all -> 0x005d }
            java.lang.String r1 = "r"
            r2.<init>(r3, r1)     // Catch:{ Exception -> 0x004d, all -> 0x005d }
            long r4 = r2.length()     // Catch:{ Exception -> 0x006d }
            int r1 = (int) r4     // Catch:{ Exception -> 0x006d }
            byte[] r1 = new byte[r1]     // Catch:{ Exception -> 0x006d }
            r2.read(r1)     // Catch:{ Exception -> 0x006d }
            boolean r3 = com.ifengyu.intercom.b.a.b.c(r1)     // Catch:{ Exception -> 0x006d }
            if (r3 != 0) goto L_0x003f
            byte[] r0 = com.ifengyu.intercom.b.a.b.d(r1)     // Catch:{ Exception -> 0x006d }
            if (r2 == 0) goto L_0x0013
            r2.close()     // Catch:{ IOException -> 0x003a }
            goto L_0x0013
        L_0x003a:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0013
        L_0x003f:
            if (r2 == 0) goto L_0x0044
            r2.close()     // Catch:{ IOException -> 0x0048 }
        L_0x0044:
            r6.c(r7)
            goto L_0x0013
        L_0x0048:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0044
        L_0x004d:
            r1 = move-exception
            r2 = r0
        L_0x004f:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x006b }
            if (r2 == 0) goto L_0x0013
            r2.close()     // Catch:{ IOException -> 0x0058 }
            goto L_0x0013
        L_0x0058:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0013
        L_0x005d:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L_0x0060:
            if (r2 == 0) goto L_0x0065
            r2.close()     // Catch:{ IOException -> 0x0066 }
        L_0x0065:
            throw r0
        L_0x0066:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0065
        L_0x006b:
            r0 = move-exception
            goto L_0x0060
        L_0x006d:
            r1 = move-exception
            goto L_0x004f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.b.a.a(java.lang.String):byte[]");
    }

    public void a(String str, Serializable serializable) {
        a(str, serializable, -1);
    }

    public void a(String str, Serializable serializable, int i) {
        ObjectOutputStream objectOutputStream;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(serializable);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (i != -1) {
                    a(str, byteArray, i);
                } else {
                    a(str, byteArray);
                }
                try {
                    objectOutputStream.close();
                } catch (IOException e) {
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            objectOutputStream = null;
            try {
                ThrowableExtension.printStackTrace(e);
                try {
                    objectOutputStream.close();
                } catch (IOException e4) {
                }
            } catch (Throwable th) {
                th = th;
                try {
                    objectOutputStream.close();
                } catch (IOException e5) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream = null;
            objectOutputStream.close();
            throw th;
        }
    }

    /* JADX WARNING: type inference failed for: r2v0, types: [java.io.ObjectInputStream] */
    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.ObjectInputStream] */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r2v7 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0032 A[SYNTHETIC, Splitter:B:24:0x0032] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0037 A[SYNTHETIC, Splitter:B:27:0x0037] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x004b A[SYNTHETIC, Splitter:B:36:0x004b] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0050 A[SYNTHETIC, Splitter:B:39:0x0050] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 0
            byte[] r1 = r4.a(r5)
            if (r1 == 0) goto L_0x001f
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch:{ Exception -> 0x002a, all -> 0x0045 }
            r3.<init>(r1)     // Catch:{ Exception -> 0x002a, all -> 0x0045 }
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch:{ Exception -> 0x0064, all -> 0x005e }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0064, all -> 0x005e }
            java.lang.Object r0 = r2.readObject()     // Catch:{ Exception -> 0x0067 }
            if (r3 == 0) goto L_0x001a
            r3.close()     // Catch:{ IOException -> 0x0020 }
        L_0x001a:
            if (r2 == 0) goto L_0x001f
            r2.close()     // Catch:{ IOException -> 0x0025 }
        L_0x001f:
            return r0
        L_0x0020:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001a
        L_0x0025:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001f
        L_0x002a:
            r1 = move-exception
            r2 = r0
            r3 = r0
        L_0x002d:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)     // Catch:{ all -> 0x0062 }
            if (r3 == 0) goto L_0x0035
            r3.close()     // Catch:{ IOException -> 0x0040 }
        L_0x0035:
            if (r2 == 0) goto L_0x001f
            r2.close()     // Catch:{ IOException -> 0x003b }
            goto L_0x001f
        L_0x003b:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x001f
        L_0x0040:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0035
        L_0x0045:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        L_0x0049:
            if (r3 == 0) goto L_0x004e
            r3.close()     // Catch:{ IOException -> 0x0054 }
        L_0x004e:
            if (r2 == 0) goto L_0x0053
            r2.close()     // Catch:{ IOException -> 0x0059 }
        L_0x0053:
            throw r0
        L_0x0054:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x004e
        L_0x0059:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0053
        L_0x005e:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto L_0x0049
        L_0x0062:
            r0 = move-exception
            goto L_0x0049
        L_0x0064:
            r1 = move-exception
            r2 = r0
            goto L_0x002d
        L_0x0067:
            r1 = move-exception
            goto L_0x002d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.b.a.b(java.lang.String):java.lang.Object");
    }

    public boolean c(String str) {
        return this.b.c(str);
    }
}

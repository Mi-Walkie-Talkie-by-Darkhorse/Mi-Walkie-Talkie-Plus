package com.ifengyu.intercom.i;

import android.content.Context;
import android.os.Process;
import com.xiaomi.mipush.sdk.Constants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: ACache.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, g> f5313b = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private b f5314a;

    /* compiled from: ACache.java */
    /* loaded from: classes2.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicLong f5315a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f5316b;

        /* renamed from: c  reason: collision with root package name */
        private final long f5317c;
        private final int d;
        private final Map<File, Long> e;
        protected File f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ACache.java */
        /* loaded from: classes2.dex */
        public class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                File[] listFiles = b.this.f.listFiles();
                if (listFiles != null) {
                    int i = 0;
                    int i2 = 0;
                    for (File file : listFiles) {
                        i = (int) (i + b.this.a(file));
                        i2++;
                        b.this.e.put(file, Long.valueOf(file.lastModified()));
                    }
                    b.this.f5315a.set(i);
                    b.this.f5316b.set(i2);
                }
            }
        }

        private b(g gVar, File file, long j, int i) {
            this.e = Collections.synchronizedMap(new HashMap());
            this.f = file;
            this.f5317c = j;
            this.d = i;
            this.f5315a = new AtomicLong();
            this.f5316b = new AtomicInteger();
            a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c(String str) {
            return a(str).delete();
        }

        private void a() {
            new Thread(new a()).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(File file) {
            int i = this.f5316b.get();
            while (i + 1 > this.d) {
                this.f5315a.addAndGet(-b());
                i = this.f5316b.addAndGet(-1);
            }
            this.f5316b.addAndGet(1);
            long a2 = a(file);
            long j = this.f5315a.get();
            while (j + a2 > this.f5317c) {
                j = this.f5315a.addAndGet(-b());
            }
            this.f5315a.addAndGet(a2);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.e.put(file, valueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File a(String str) {
            File b2 = b(str);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            b2.setLastModified(valueOf.longValue());
            this.e.put(b2, valueOf);
            return b2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long a(File file) {
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File b(String str) {
            File file = this.f;
            return new File(file, str.hashCode() + "");
        }

        private long b() {
            File file;
            if (this.e.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> entrySet = this.e.entrySet();
            synchronized (this.e) {
                file = null;
                Long l = null;
                for (Map.Entry<File, Long> entry : entrySet) {
                    if (file == null) {
                        file = entry.getKey();
                        l = entry.getValue();
                    } else {
                        Long value = entry.getValue();
                        if (value.longValue() < l.longValue()) {
                            file = entry.getKey();
                            l = value;
                        }
                    }
                }
            }
            long a2 = a(file);
            if (file.delete()) {
                this.e.remove(file);
            }
            return a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ACache.java */
    /* loaded from: classes2.dex */
    public static class c {
        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] c(byte[] bArr) {
            return e(bArr) ? a(bArr, a(bArr, ' ') + 1, bArr.length) : bArr;
        }

        private static String[] d(byte[] bArr) {
            if (e(bArr)) {
                return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
            }
            return null;
        }

        private static boolean e(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean f(byte[] bArr) {
            String[] d = d(bArr);
            if (d != null && d.length == 2) {
                String str = d[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(d[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] b(int i, byte[] bArr) {
            byte[] bytes = a(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        private static int a(byte[] bArr, char c2) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c2) {
                    return i;
                }
            }
            return -1;
        }

        private static byte[] a(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        private static String a(int i) {
            String str = System.currentTimeMillis() + "";
            while (str.length() < 13) {
                str = "0" + str;
            }
            return str + Constants.ACCEPT_TIME_SEPARATOR_SERVER + i + ' ';
        }
    }

    private g(File file, long j, int i) {
        if (file.exists() || file.mkdirs()) {
            this.f5314a = new b(file, j, i);
            return;
        }
        throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
    }

    public static g a(Context context, String str) {
        return a(new File(context.getCacheDir(), str), 50000000L, Integer.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public Object b(String str) {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        Exception e;
        ObjectInputStream a2 = a(str);
        try {
            if (a2 == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(a2);
            } catch (Exception e2) {
                e = e2;
                objectInputStream = null;
                byteArrayInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                byteArrayInputStream = null;
                a2 = 0;
            }
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    Object readObject = objectInputStream.readObject();
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    try {
                        objectInputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    return readObject;
                } catch (Exception e5) {
                    e = e5;
                    e.printStackTrace();
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (Exception e8) {
                e = e8;
                objectInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                a2 = 0;
                if (byteArrayInputStream != null) {
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e9) {
                        e9.printStackTrace();
                    }
                }
                if (a2 != 0) {
                    try {
                        a2.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public boolean c(String str) {
        return this.f5314a.c(str);
    }

    public static g a(File file) {
        return a(file, 50000000L, Integer.MAX_VALUE);
    }

    public static g a(File file, long j, int i) {
        Map<String, g> map = f5313b;
        g gVar = map.get(file.getAbsoluteFile() + a());
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g(file, j, i);
        Map<String, g> map2 = f5313b;
        map2.put(file.getAbsolutePath() + a(), gVar2);
        return gVar2;
    }

    private static String a() {
        return "_" + Process.myPid();
    }

    public void a(String str, byte[] bArr) {
        Throwable th;
        IOException e;
        Exception e2;
        FileOutputStream fileOutputStream;
        File b2 = this.f5314a.b(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(b2);
            } catch (Exception e3) {
                e2 = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileOutputStream.write(bArr);
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e4) {
                e = e4;
                e.printStackTrace();
                this.f5314a.b(b2);
            }
        } catch (Exception e5) {
            e2 = e5;
            fileOutputStream2 = fileOutputStream;
            e2.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e6) {
                    e = e6;
                    e.printStackTrace();
                    this.f5314a.b(b2);
                }
            }
            this.f5314a.b(b2);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
            this.f5314a.b(b2);
            throw th;
        }
        this.f5314a.b(b2);
    }

    public void a(String str, byte[] bArr, int i) {
        a(str, c.b(i, bArr));
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0053: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:30:0x0053 */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public byte[] a(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            com.ifengyu.intercom.i.g$b r1 = r5.f5314a     // Catch: all -> 0x0040, Exception -> 0x0042
            java.io.File r1 = com.ifengyu.intercom.i.g.b.c(r1, r6)     // Catch: all -> 0x0040, Exception -> 0x0042
            boolean r2 = r1.exists()     // Catch: all -> 0x0040, Exception -> 0x0042
            if (r2 != 0) goto L_0x000e
            return r0
        L_0x000e:
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch: all -> 0x0040, Exception -> 0x0042
            java.lang.String r3 = "r"
            r2.<init>(r1, r3)     // Catch: all -> 0x0040, Exception -> 0x0042
            long r3 = r2.length()     // Catch: Exception -> 0x003e, all -> 0x0052
            int r1 = (int) r3     // Catch: Exception -> 0x003e, all -> 0x0052
            byte[] r1 = new byte[r1]     // Catch: Exception -> 0x003e, all -> 0x0052
            r2.read(r1)     // Catch: Exception -> 0x003e, all -> 0x0052
            boolean r3 = com.ifengyu.intercom.i.g.c.a(r1)     // Catch: Exception -> 0x003e, all -> 0x0052
            if (r3 != 0) goto L_0x0032
            byte[] r6 = com.ifengyu.intercom.i.g.c.b(r1)     // Catch: Exception -> 0x003e, all -> 0x0052
            r2.close()     // Catch: IOException -> 0x002d
            goto L_0x0031
        L_0x002d:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0031:
            return r6
        L_0x0032:
            r2.close()     // Catch: IOException -> 0x0036
            goto L_0x003a
        L_0x0036:
            r1 = move-exception
            r1.printStackTrace()
        L_0x003a:
            r5.c(r6)
            return r0
        L_0x003e:
            r6 = move-exception
            goto L_0x0044
        L_0x0040:
            r6 = move-exception
            goto L_0x0054
        L_0x0042:
            r6 = move-exception
            r2 = r0
        L_0x0044:
            r6.printStackTrace()     // Catch: all -> 0x0052
            if (r2 == 0) goto L_0x0051
            r2.close()     // Catch: IOException -> 0x004d
            goto L_0x0051
        L_0x004d:
            r6 = move-exception
            r6.printStackTrace()
        L_0x0051:
            return r0
        L_0x0052:
            r6 = move-exception
            r0 = r2
        L_0x0054:
            if (r0 == 0) goto L_0x005e
            r0.close()     // Catch: IOException -> 0x005a
            goto L_0x005e
        L_0x005a:
            r0 = move-exception
            r0.printStackTrace()
        L_0x005e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.i.g.a(java.lang.String):byte[]");
    }

    public void a(String str, Serializable serializable) {
        a(str, serializable, -1);
    }

    public void a(String str, Serializable serializable, int i) {
        Throwable th;
        Exception e;
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
            try {
                objectOutputStream.writeObject(serializable);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (i != -1) {
                    a(str, byteArray, i);
                } else {
                    a(str, byteArray);
                }
                objectOutputStream.close();
            } catch (Exception e3) {
                e = e3;
                objectOutputStream2 = objectOutputStream;
                e.printStackTrace();
                objectOutputStream2.close();
            } catch (Throwable th3) {
                th = th3;
                objectOutputStream2 = objectOutputStream;
                try {
                    objectOutputStream2.close();
                } catch (IOException unused) {
                }
                throw th;
            }
        } catch (IOException unused2) {
        }
    }
}

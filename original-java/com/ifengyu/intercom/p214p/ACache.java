package com.ifengyu.intercom.p214p;

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
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: com.ifengyu.intercom.p.k */
/* loaded from: classes2.dex */
public class ACache {

    /* renamed from: b */
    private static Map<String, ACache> f14463b = new HashMap();

    /* renamed from: a */
    private C4156b f14464a;

    /* compiled from: ACache.java */
    /* renamed from: com.ifengyu.intercom.p.k$b */
    /* loaded from: classes2.dex */
    public class C4156b {

        /* renamed from: a */
        private final AtomicLong f14465a;

        /* renamed from: b */
        private final AtomicInteger f14466b;

        /* renamed from: c */
        private final long f14467c;

        /* renamed from: d */
        private final int f14468d;

        /* renamed from: e */
        private final Map<File, Long> f14469e;

        /* renamed from: f */
        protected File f14470f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ACache.java */
        /* renamed from: com.ifengyu.intercom.p.k$b$a */
        /* loaded from: classes2.dex */
        public class RunnableC4157a implements Runnable {
            RunnableC4157a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                File[] listFiles = C4156b.this.f14470f.listFiles();
                if (listFiles != null) {
                    int i = 0;
                    int i2 = 0;
                    for (File file : listFiles) {
                        i = (int) (i + C4156b.this.m11114j(file));
                        i2++;
                        C4156b.this.f14469e.put(file, Long.valueOf(file.lastModified()));
                    }
                    C4156b.this.f14465a.set(i);
                    C4156b.this.f14466b.set(i2);
                }
            }
        }

        /* renamed from: i */
        private void m11115i() {
            new Thread(new RunnableC4157a()).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public long m11114j(File file) {
            return file.length();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public File m11113k(String str) {
            File m11112l = m11112l(str);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            m11112l.setLastModified(valueOf.longValue());
            this.f14469e.put(m11112l, valueOf);
            return m11112l;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public File m11112l(String str) {
            File file = this.f14470f;
            return new File(file, str.hashCode() + "");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: m */
        public void m11111m(File file) {
            int i = this.f14466b.get();
            while (i + 1 > this.f14468d) {
                this.f14465a.addAndGet(-m11109o());
                i = this.f14466b.addAndGet(-1);
            }
            this.f14466b.addAndGet(1);
            long m11114j = m11114j(file);
            long j = this.f14465a.get();
            while (j + m11114j > this.f14467c) {
                j = this.f14465a.addAndGet(-m11109o());
            }
            this.f14465a.addAndGet(m11114j);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            file.setLastModified(valueOf.longValue());
            this.f14469e.put(file, valueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public boolean m11110n(String str) {
            return m11113k(str).delete();
        }

        /* renamed from: o */
        private long m11109o() {
            File file;
            if (this.f14469e.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> entrySet = this.f14469e.entrySet();
            synchronized (this.f14469e) {
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
            long m11114j = m11114j(file);
            if (file.delete()) {
                this.f14469e.remove(file);
            }
            return m11114j;
        }

        private C4156b(ACache aCache, File file, long j, int i) {
            this.f14469e = Collections.synchronizedMap(new HashMap());
            this.f14470f = file;
            this.f14467c = j;
            this.f14468d = i;
            this.f14465a = new AtomicLong();
            this.f14466b = new AtomicInteger();
            m11115i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ACache.java */
    /* renamed from: com.ifengyu.intercom.p.k$c */
    /* loaded from: classes2.dex */
    public static class C4158c {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public static byte[] m11105d(byte[] bArr) {
            return m11101h(bArr) ? m11104e(bArr, m11100i(bArr, ' ') + 1, bArr.length) : bArr;
        }

        /* renamed from: e */
        private static byte[] m11104e(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        /* renamed from: f */
        private static String m11103f(int i) {
            String str = System.currentTimeMillis() + "";
            while (str.length() < 13) {
                str = "0" + str;
            }
            return str + Constants.ACCEPT_TIME_SEPARATOR_SERVER + i + ' ';
        }

        /* renamed from: g */
        private static String[] m11102g(byte[] bArr) {
            if (m11101h(bArr)) {
                return new String[]{new String(m11104e(bArr, 0, 13)), new String(m11104e(bArr, 14, m11100i(bArr, ' ')))};
            }
            return null;
        }

        /* renamed from: h */
        private static boolean m11101h(byte[] bArr) {
            return bArr != null && bArr.length > 15 && bArr[13] == 45 && m11100i(bArr, ' ') > 14;
        }

        /* renamed from: i */
        private static int m11100i(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: j */
        public static boolean m11099j(byte[] bArr) {
            String[] m11102g = m11102g(bArr);
            if (m11102g != null && m11102g.length == 2) {
                String str = m11102g[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(m11102g[1]).longValue() * 1000)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: k */
        public static byte[] m11098k(int i, byte[] bArr) {
            byte[] bytes = m11103f(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }
    }

    private ACache(File file, long j, int i) {
        if (!file.exists() && !file.mkdirs()) {
            throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
        }
        this.f14464a = new C4156b(file, j, i);
    }

    /* renamed from: a */
    public static ACache m11134a(Context context, String str) {
        return m11132c(new File(context.getCacheDir(), str), 50000000L, Integer.MAX_VALUE);
    }

    /* renamed from: b */
    public static ACache m11133b(File file) {
        return m11132c(file, 50000000L, Integer.MAX_VALUE);
    }

    /* renamed from: c */
    public static ACache m11132c(File file, long j, int i) {
        Map<String, ACache> map = f14463b;
        ACache aCache = map.get(file.getAbsoluteFile() + m11129f());
        if (aCache == null) {
            ACache aCache2 = new ACache(file, j, i);
            Map<String, ACache> map2 = f14463b;
            map2.put(file.getAbsolutePath() + m11129f(), aCache2);
            return aCache2;
        }
        return aCache;
    }

    /* renamed from: f */
    private static String m11129f() {
        return "_" + Process.myPid();
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0053: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:35:0x0053 */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] m11131d(String str) {
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2;
        RandomAccessFile randomAccessFile3 = null;
        try {
            try {
                File m11113k = this.f14464a.m11113k(str);
                if (m11113k.exists()) {
                    randomAccessFile = new RandomAccessFile(m11113k, "r");
                    try {
                        byte[] bArr = new byte[(int) randomAccessFile.length()];
                        randomAccessFile.read(bArr);
                        if (!C4158c.m11099j(bArr)) {
                            byte[] m11105d = C4158c.m11105d(bArr);
                            try {
                                randomAccessFile.close();
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                            return m11105d;
                        }
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        m11124k(str);
                        return null;
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        return null;
                    }
                }
                return null;
            } catch (Exception e5) {
                e = e5;
                randomAccessFile = null;
            } catch (Throwable th) {
                th = th;
                if (randomAccessFile3 != null) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile3 = randomAccessFile2;
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* renamed from: e */
    public Object m11130e(String str) {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        ObjectInputStream m11131d = m11131d(str);
        try {
            if (m11131d != 0) {
                try {
                    byteArrayInputStream = new ByteArrayInputStream(m11131d);
                    try {
                        objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    } catch (Exception e) {
                        e = e;
                        objectInputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        m11131d = 0;
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        if (m11131d != 0) {
                            try {
                                m11131d.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e4) {
                    e = e4;
                    objectInputStream = null;
                    byteArrayInputStream = null;
                } catch (Throwable th2) {
                    byteArrayInputStream = null;
                    th = th2;
                    m11131d = 0;
                }
                try {
                    Object readObject = objectInputStream.readObject();
                    try {
                        byteArrayInputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                    try {
                        objectInputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                    return readObject;
                } catch (Exception e7) {
                    e = e7;
                    e.printStackTrace();
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e8) {
                            e8.printStackTrace();
                        }
                    }
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e9) {
                            e9.printStackTrace();
                        }
                    }
                    return null;
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: g */
    public void m11128g(String str, Serializable serializable) {
        m11127h(str, serializable, -1);
    }

    /* renamed from: h */
    public void m11127h(String str, Serializable serializable, int i) {
        ObjectOutputStream objectOutputStream = null;
        try {
            try {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                    try {
                        objectOutputStream2.writeObject(serializable);
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        if (i != -1) {
                            m11125j(str, byteArray, i);
                        } else {
                            m11126i(str, byteArray);
                        }
                        objectOutputStream2.close();
                    } catch (Exception e) {
                        e = e;
                        objectOutputStream = objectOutputStream2;
                        e.printStackTrace();
                        objectOutputStream.close();
                    } catch (Throwable th) {
                        th = th;
                        objectOutputStream = objectOutputStream2;
                        try {
                            objectOutputStream.close();
                        } catch (IOException unused) {
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
    }

    /* renamed from: i */
    public void m11126i(String str, byte[] bArr) {
        File m11112l = this.f14464a.m11112l(str);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(m11112l);
                try {
                    fileOutputStream2.write(bArr);
                } catch (Exception e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (IOException e2) {
                            e = e2;
                            e.printStackTrace();
                            this.f14464a.m11111m(m11112l);
                        }
                    }
                    this.f14464a.m11111m(m11112l);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    this.f14464a.m11111m(m11112l);
                    throw th;
                }
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    this.f14464a.m11111m(m11112l);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e5) {
            e = e5;
        }
        this.f14464a.m11111m(m11112l);
    }

    /* renamed from: j */
    public void m11125j(String str, byte[] bArr, int i) {
        m11126i(str, C4158c.m11098k(i, bArr));
    }

    /* renamed from: k */
    public boolean m11124k(String str) {
        return this.f14464a.m11110n(str);
    }
}

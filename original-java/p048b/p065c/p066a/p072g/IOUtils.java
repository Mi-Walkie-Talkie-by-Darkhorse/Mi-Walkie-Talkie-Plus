package p048b.p065c.p066a.p072g;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;

/* renamed from: b.c.a.g.c */
/* loaded from: classes2.dex */
public class IOUtils {
    /* renamed from: a */
    public static void m21056a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Exception e) {
            OkLogger.m21049a(e);
        }
    }

    /* renamed from: b */
    public static boolean m21055b(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            file.delete();
        }
        return file.mkdirs();
    }

    /* renamed from: c */
    public static boolean m21054c(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            file.delete();
            return true;
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    m21054c(file2);
                }
            }
            file.delete();
            return true;
        } else {
            return true;
        }
    }

    /* renamed from: d */
    public static byte[] m21053d(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m21050g(inputStream, byteArrayOutputStream);
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0034: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:22:0x0034 */
    /* renamed from: e */
    public static byte[] m21052e(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        Closeable closeable;
        Closeable closeable2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (IOException e) {
                    e = e;
                    objectOutputStream = null;
                } catch (Throwable th) {
                    th = th;
                    m21056a(closeable2);
                    m21056a(byteArrayOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                byteArrayOutputStream = null;
                objectOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
            try {
                objectOutputStream.writeObject(obj);
                objectOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                m21056a(objectOutputStream);
                m21056a(byteArrayOutputStream);
                return byteArray;
            } catch (IOException e3) {
                e = e3;
                OkLogger.m21049a(e);
                m21056a(objectOutputStream);
                m21056a(byteArrayOutputStream);
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            closeable2 = closeable;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* renamed from: f */
    public static Object m21051f(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        try {
            if (bArr == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(bArr);
            } catch (Exception e) {
                e = e;
                objectInputStream = null;
                byteArrayInputStream = null;
            } catch (Throwable th) {
                byteArrayInputStream = null;
                th = th;
                bArr = 0;
            }
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
            } catch (Exception e2) {
                e = e2;
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                bArr = 0;
                m21056a(bArr);
                m21056a(byteArrayInputStream);
                throw th;
            }
            try {
                Object readObject = objectInputStream.readObject();
                m21056a(objectInputStream);
                m21056a(byteArrayInputStream);
                return readObject;
            } catch (Exception e3) {
                e = e3;
                OkLogger.m21049a(e);
                m21056a(objectInputStream);
                m21056a(byteArrayInputStream);
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: g */
    public static void m21050g(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }
}

package com.tencent.open.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Properties;
import java.util.zip.ZipException;

/* compiled from: ProGuard */
public final class a {
    private static final j a = new j(101010256);
    /* access modifiers changed from: private */
    public static final k b = new k(38651);

    /* renamed from: com.tencent.open.utils.a$a reason: collision with other inner class name */
    /* compiled from: ProGuard */
    private static class C0058a {
        Properties a;
        byte[] b;

        private C0058a() {
            this.a = new Properties();
        }

        /* access modifiers changed from: 0000 */
        public void a(byte[] bArr) throws IOException {
            if (bArr != null) {
                ByteBuffer wrap = ByteBuffer.wrap(bArr);
                int length = a.b.a().length;
                byte[] bArr2 = new byte[length];
                wrap.get(bArr2);
                if (!a.b.equals(new k(bArr2))) {
                    throw new ProtocolException("unknow protocl [" + Arrays.toString(bArr) + "]");
                } else if (bArr.length - length > 2) {
                    byte[] bArr3 = new byte[2];
                    wrap.get(bArr3);
                    int b2 = new k(bArr3).b();
                    if ((bArr.length - length) - 2 >= b2) {
                        byte[] bArr4 = new byte[b2];
                        wrap.get(bArr4);
                        this.a.load(new ByteArrayInputStream(bArr4));
                        int length2 = ((bArr.length - length) - b2) - 2;
                        if (length2 > 0) {
                            this.b = new byte[length2];
                            wrap.get(this.b);
                        }
                    }
                }
            }
        }

        public String toString() {
            return "ApkExternalInfo [p=" + this.a + ", otherData=" + Arrays.toString(this.b) + "]";
        }
    }

    public static String a(File file, String str) throws IOException {
        RandomAccessFile randomAccessFile;
        Throwable th;
        String str2 = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                byte[] a2 = a(randomAccessFile);
                if (a2 != null) {
                    C0058a aVar = new C0058a();
                    aVar.a(a2);
                    str2 = aVar.a.getProperty(str);
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                } else if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            Throwable th4 = th3;
            randomAccessFile = null;
            th = th4;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            throw th;
        }
    }

    public static String a(File file) throws IOException {
        return a(file, "channelNo");
    }

    private static byte[] a(RandomAccessFile randomAccessFile) throws IOException {
        boolean z = true;
        long length = randomAccessFile.length() - 22;
        randomAccessFile.seek(length);
        byte[] a2 = a.a();
        int read = randomAccessFile.read();
        while (true) {
            if (read != -1) {
                if (read == a2[0] && randomAccessFile.read() == a2[1] && randomAccessFile.read() == a2[2] && randomAccessFile.read() == a2[3]) {
                    break;
                }
                length--;
                randomAccessFile.seek(length);
                read = randomAccessFile.read();
            } else {
                z = false;
                break;
            }
        }
        if (!z) {
            throw new ZipException("archive is not a ZIP archive");
        }
        randomAccessFile.seek(16 + length + 4);
        byte[] bArr = new byte[2];
        randomAccessFile.readFully(bArr);
        int b2 = new k(bArr).b();
        if (b2 == 0) {
            return null;
        }
        byte[] bArr2 = new byte[b2];
        randomAccessFile.read(bArr2);
        return bArr2;
    }
}

package com.xiaomi.push.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.just.agentweb.WebIndicator;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5968aa;
import com.xiaomi.push.C6023bo;
import com.xiaomi.push.C6475z;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;

/* renamed from: com.xiaomi.push.service.at */
/* loaded from: classes2.dex */
public class C6365at {

    /* renamed from: a */
    private static long f22986a;

    /* renamed from: com.xiaomi.push.service.at$a */
    /* loaded from: classes2.dex */
    public static class C6366a {

        /* renamed from: a */
        int f22987a;

        /* renamed from: a */
        byte[] f22988a;

        public C6366a(byte[] bArr, int i) {
            this.f22988a = bArr;
            this.f22987a = i;
        }
    }

    /* renamed from: com.xiaomi.push.service.at$b */
    /* loaded from: classes2.dex */
    public static class C6367b {

        /* renamed from: a */
        public long f22989a;

        /* renamed from: a */
        public Bitmap f22990a;

        public C6367b(Bitmap bitmap, long j) {
            this.f22990a = bitmap;
            this.f22989a = j;
        }
    }

    /* renamed from: a */
    private static int m1590a(Context context, InputStream inputStream) {
        int i;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            AbstractC5876b.m4147a("decode dimension failed for bitmap.");
            return 1;
        }
        int round = Math.round((context.getResources().getDisplayMetrics().densityDpi / 160.0f) * 48.0f);
        int i2 = options.outWidth;
        if (i2 <= round || (i = options.outHeight) <= round) {
            return 1;
        }
        return Math.min(i2 / round, i / round);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: a */
    public static Bitmap m1589a(Context context, String str) {
        InputStream inputStream;
        InputStream inputStream2;
        int m1590a;
        Uri parse = Uri.parse(str);
        ?? r0 = 0;
        r0 = 0;
        try {
            try {
                inputStream = context.getContentResolver().openInputStream(parse);
                try {
                    m1590a = m1590a(context, inputStream);
                    inputStream2 = context.getContentResolver().openInputStream(parse);
                } catch (IOException e) {
                    e = e;
                    inputStream2 = null;
                } catch (Throwable th) {
                    th = th;
                    C5968aa.m3810a((Closeable) r0);
                    C5968aa.m3810a(inputStream);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                inputStream2 = null;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
            }
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = m1590a;
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream2, null, options);
                C5968aa.m3810a(inputStream2);
                C5968aa.m3810a(inputStream);
                return decodeStream;
            } catch (IOException e3) {
                e = e3;
                AbstractC5876b.m4143a(e);
                C5968aa.m3810a(inputStream2);
                C5968aa.m3810a(inputStream);
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            r0 = context;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00dd, code lost:
        if (r1 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00df, code lost:
        r1.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fc, code lost:
        if (r1 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ff, code lost:
        return null;
     */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0101: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:64:0x0101 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static C6366a m1586a(String str, boolean z) {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        Closeable closeable;
        Closeable closeable2 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection.setConnectTimeout(WebIndicator.MAX_UNIFORM_SPEED_DURATION);
                    httpURLConnection.setReadTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
                    httpURLConnection.setRequestProperty("User-agent", "Mozilla/5.0 (Linux; U;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser");
                    httpURLConnection.connect();
                    int contentLength = httpURLConnection.getContentLength();
                    if (z && contentLength > 102400) {
                        AbstractC5876b.m4147a("Bitmap size is too big, max size is 102400  contentLen size is " + contentLength + " from url " + str);
                        C5968aa.m3810a((Closeable) null);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return null;
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != 200) {
                        AbstractC5876b.m4147a("Invalid Http Response Code " + responseCode + " received");
                        C5968aa.m3810a((Closeable) null);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return null;
                    }
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        int i = z ? 102400 : 2048000;
                        byte[] bArr = new byte[1024];
                        while (i > 0) {
                            int read = inputStream.read(bArr, 0, 1024);
                            if (read == -1) {
                                break;
                            }
                            i -= read;
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                        if (i <= 0) {
                            AbstractC5876b.m4147a("length 102400 exhausted.");
                            C6366a c6366a = new C6366a(null, 102400);
                            C5968aa.m3810a(inputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            return c6366a;
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        C6366a c6366a2 = new C6366a(byteArray, byteArray.length);
                        C5968aa.m3810a(inputStream);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        return c6366a2;
                    } catch (SocketTimeoutException unused) {
                        AbstractC5876b.m4138d("Connect timeout to " + str);
                        C5968aa.m3810a(inputStream);
                    } catch (IOException e) {
                        e = e;
                        AbstractC5876b.m4143a(e);
                        C5968aa.m3810a(inputStream);
                    }
                } catch (SocketTimeoutException unused2) {
                    inputStream = null;
                } catch (IOException e2) {
                    e = e2;
                    inputStream = null;
                } catch (Throwable th) {
                    th = th;
                    C5968aa.m3810a(closeable2);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (SocketTimeoutException unused3) {
                httpURLConnection = null;
                inputStream = null;
            } catch (IOException e3) {
                e = e3;
                httpURLConnection = null;
                inputStream = null;
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = null;
            }
        } catch (Throwable th3) {
            th = th3;
            closeable2 = closeable;
        }
    }

    /* renamed from: a */
    public static C6367b m1588a(Context context, String str, boolean z) {
        C6366a m1586a;
        ByteArrayInputStream byteArrayInputStream = null;
        C6367b c6367b = new C6367b(null, 0L);
        Bitmap m1585b = m1585b(context, str);
        try {
            if (m1585b != null) {
                c6367b.f22990a = m1585b;
                return c6367b;
            }
            try {
                m1586a = m1586a(str, z);
            } catch (Exception e) {
                e = e;
            }
            if (m1586a == null) {
                C5968aa.m3810a((Closeable) null);
                return c6367b;
            }
            c6367b.f22989a = m1586a.f22987a;
            byte[] bArr = m1586a.f22988a;
            if (bArr != null) {
                if (z) {
                    ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr);
                    try {
                        int m1590a = m1590a(context, byteArrayInputStream2);
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inSampleSize = m1590a;
                        c6367b.f22990a = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                        byteArrayInputStream = byteArrayInputStream2;
                    } catch (Exception e2) {
                        e = e2;
                        byteArrayInputStream = byteArrayInputStream2;
                        AbstractC5876b.m4143a(e);
                        C5968aa.m3810a(byteArrayInputStream);
                        return c6367b;
                    } catch (Throwable th) {
                        th = th;
                        byteArrayInputStream = byteArrayInputStream2;
                        C5968aa.m3810a(byteArrayInputStream);
                        throw th;
                    }
                } else {
                    c6367b.f22990a = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                }
            }
            m1587a(context, m1586a.f22988a, str);
            C5968aa.m3810a(byteArrayInputStream);
            return c6367b;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    private static void m1591a(Context context) {
        File file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon");
        if (file.exists()) {
            if (f22986a == 0) {
                f22986a = C6475z.m1221a(file);
            }
            if (f22986a > 15728640) {
                try {
                    File[] listFiles = file.listFiles();
                    for (int i = 0; i < listFiles.length; i++) {
                        if (!listFiles[i].isDirectory() && Math.abs(System.currentTimeMillis() - listFiles[i].lastModified()) > 1209600) {
                            listFiles[i].delete();
                        }
                    }
                } catch (Exception e) {
                    AbstractC5876b.m4143a(e);
                }
                f22986a = 0L;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m1587a(Context context, byte[] bArr, String str) {
        Closeable closeable;
        if (bArr == null) {
            AbstractC5876b.m4147a("cannot save small icon cause bitmap is null");
            return;
        }
        m1591a(context);
        ?? file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon");
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File((File) file, C6023bo.m3620a(str));
        BufferedOutputStream bufferedOutputStream = null;
        try {
            try {
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                file = new FileOutputStream(file2);
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(file);
                    try {
                        bufferedOutputStream2.write(bArr);
                        bufferedOutputStream2.flush();
                        C5968aa.m3810a(bufferedOutputStream2);
                        closeable = file;
                    } catch (Exception e) {
                        e = e;
                        bufferedOutputStream = bufferedOutputStream2;
                        AbstractC5876b.m4143a(e);
                        C5968aa.m3810a(bufferedOutputStream);
                        closeable = file;
                        C5968aa.m3810a(closeable);
                        file = (f22986a > 0L ? 1 : (f22986a == 0L ? 0 : -1));
                        if (file != 0) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        C5968aa.m3810a(bufferedOutputStream);
                        C5968aa.m3810a((Closeable) file);
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                file = 0;
            } catch (Throwable th2) {
                th = th2;
                file = 0;
            }
            C5968aa.m3810a(closeable);
            file = (f22986a > 0L ? 1 : (f22986a == 0L ? 0 : -1));
            if (file != 0) {
                f22986a = C6475z.m1221a(new File(context.getCacheDir().getPath() + File.separator + "mipush_icon")) + file2.length();
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: b */
    private static Bitmap m1585b(Context context, String str) {
        Throwable th;
        FileInputStream fileInputStream;
        Bitmap bitmap;
        File file = new File(context.getCacheDir().getPath() + File.separator + "mipush_icon", C6023bo.m3620a(str));
        FileInputStream fileInputStream2 = null;
        Bitmap bitmap2 = null;
        fileInputStream2 = null;
        if (!file.exists()) {
            return null;
        }
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    bitmap2 = BitmapFactory.decodeStream(fileInputStream);
                    file.setLastModified(System.currentTimeMillis());
                    C5968aa.m3810a(fileInputStream);
                    return bitmap2;
                } catch (Exception e) {
                    e = e;
                    Bitmap bitmap3 = bitmap2;
                    fileInputStream2 = fileInputStream;
                    bitmap = bitmap3;
                    AbstractC5876b.m4143a(e);
                    C5968aa.m3810a(fileInputStream2);
                    return bitmap;
                } catch (Throwable th2) {
                    th = th2;
                    C5968aa.m3810a(fileInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                FileInputStream fileInputStream3 = fileInputStream2;
                th = th3;
                fileInputStream = fileInputStream3;
            }
        } catch (Exception e2) {
            e = e2;
            bitmap = null;
        }
    }
}

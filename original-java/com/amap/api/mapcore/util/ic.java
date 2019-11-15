package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* compiled from: StatisticsManager */
public class ic {
    public static int a = 13;
    public static int b = 6;
    private static boolean c = true;

    public static synchronized void a(final ib ibVar, final Context context) {
        synchronized (ic.class) {
            gf.c().submit(new Runnable() {
                public void run() {
                    id.a(context, gd.g, 307200, ibVar.a());
                }
            });
        }
    }

    private static byte[] b(Context context) {
        byte[] c2 = c(context);
        byte[] d = d(context);
        byte[] bArr = new byte[(c2.length + d.length)];
        System.arraycopy(c2, 0, bArr, 0, c2.length);
        System.arraycopy(d, 0, bArr, c2.length, d.length);
        return a(context, bArr);
    }

    public static void a(Context context) {
        try {
            if (e(context)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(new SimpleDateFormat("yyyyMMdd HHmmss").format(new Date()));
                stringBuffer.append(Token.SEPARATOR);
                stringBuffer.append(UUID.randomUUID().toString());
                stringBuffer.append(Token.SEPARATOR);
                if (stringBuffer.length() == 53) {
                    byte[] a2 = fy.a(stringBuffer.toString());
                    byte[] b2 = b(context);
                    byte[] bArr = new byte[(a2.length + b2.length)];
                    System.arraycopy(a2, 0, bArr, 0, a2.length);
                    System.arraycopy(b2, 0, bArr, a2.length, b2.length);
                    hp.a().b(new ge(fy.c(bArr), "2"));
                }
            }
        } catch (Throwable th) {
            gc.a(th, "sm", "usd");
        }
    }

    private static byte[] a(Context context, byte[] bArr) {
        try {
            return fr.a(context, bArr);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    private static byte[] c(Context context) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[0];
        try {
            fy.a(byteArrayOutputStream, "1.2.." + a + "." + b);
            fy.a(byteArrayOutputStream, "Android");
            fy.a(byteArrayOutputStream, fs.t(context));
            fy.a(byteArrayOutputStream, fs.l(context));
            fy.a(byteArrayOutputStream, fs.h(context));
            fy.a(byteArrayOutputStream, Build.MANUFACTURER);
            fy.a(byteArrayOutputStream, Build.MODEL);
            fy.a(byteArrayOutputStream, Build.DEVICE);
            fy.a(byteArrayOutputStream, fs.u(context));
            fy.a(byteArrayOutputStream, fo.c(context));
            fy.a(byteArrayOutputStream, fo.d(context));
            fy.a(byteArrayOutputStream, fo.f(context));
            byteArrayOutputStream.write(new byte[]{0});
            bArr = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                th = th;
                ThrowableExtension.printStackTrace(th);
                return bArr;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return bArr;
    }

    private static byte[] d(Context context) {
        return id.a(context, gd.g, 307200);
    }

    private static boolean e(Context context) {
        try {
            if (fs.p(context) != 1 || !c || id.a(context, gd.g) < 30) {
                return false;
            }
            long b2 = id.b(context, "c.log");
            long time = new Date().getTime();
            if (time - b2 < OpenStreetMapTileProviderConstants.ONE_HOUR) {
                return false;
            }
            id.a(context, time, "c.log");
            c = false;
            return true;
        } catch (Throwable th) {
            gc.a(th, "sm", "iud");
            return false;
        }
    }
}

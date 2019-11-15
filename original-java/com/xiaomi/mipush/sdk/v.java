package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.xmpush.thrift.ab;
import com.xiaomi.xmpush.thrift.ac;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ah;
import com.xiaomi.xmpush.thrift.aj;
import com.xiaomi.xmpush.thrift.ak;
import com.xiaomi.xmpush.thrift.am;
import com.xiaomi.xmpush.thrift.ao;
import com.xiaomi.xmpush.thrift.aq;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.x;
import com.xiaomi.xmpush.thrift.y;
import java.nio.ByteBuffer;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.thrift.a;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class v {
    private static final byte[] a = {100, 23, 84, 114, 72, 0, 4, 97, 73, 97, 2, 52, 84, 102, 18, HttpConstants.SP};

    protected static <T extends a<T, ?>> ac a(Context context, T t, com.xiaomi.xmpush.thrift.a aVar) {
        return a(context, t, aVar, !aVar.equals(com.xiaomi.xmpush.thrift.a.Registration), context.getPackageName(), c.a(context).c());
    }

    protected static <T extends a<T, ?>> ac a(Context context, T t, com.xiaomi.xmpush.thrift.a aVar, boolean z, String str, String str2) {
        byte[] a2 = ar.a(t);
        if (a2 == null) {
            b.a("invoke convertThriftObjectToBytes method, return null.");
            return null;
        }
        ac acVar = new ac();
        if (z) {
            String f = c.a(context).f();
            if (TextUtils.isEmpty(f)) {
                b.a("regSecret is empty, return null");
                return null;
            }
            try {
                a2 = b(com.xiaomi.channel.commonutils.string.a.a(f), a2);
            } catch (Exception e) {
                b.d("encryption error. ");
            }
        }
        com.xiaomi.xmpush.thrift.v vVar = new com.xiaomi.xmpush.thrift.v();
        vVar.a = 5;
        vVar.b = "fakeid";
        acVar.a(vVar);
        acVar.a(ByteBuffer.wrap(a2));
        acVar.a(aVar);
        acVar.c(true);
        acVar.b(str);
        acVar.a(z);
        acVar.a(str2);
        return acVar;
    }

    private static Cipher a(byte[] bArr, int i) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(a);
        Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
        instance.init(i, secretKeySpec, ivParameterSpec);
        return instance;
    }

    public static a a(Context context, ac acVar) {
        byte[] f;
        if (acVar.c()) {
            try {
                f = a(com.xiaomi.channel.commonutils.string.a.a(c.a(context).f()), acVar.f());
            } catch (Exception e) {
                throw new d("the aes decrypt failed.", e);
            }
        } else {
            f = acVar.f();
        }
        a a2 = a(acVar.a(), acVar.c);
        if (a2 != null) {
            ar.a(a2, f);
        }
        return a2;
    }

    private static a a(com.xiaomi.xmpush.thrift.a aVar, boolean z) {
        switch (w.a[aVar.ordinal()]) {
            case 1:
                return new ah();
            case 2:
                return new ao();
            case 3:
                return new am();
            case 4:
                return new aq();
            case 5:
                return new ak();
            case 6:
                return new x();
            case 7:
                return new ab();
            case 8:
                return new aj();
            case 9:
                if (z) {
                    return new af();
                }
                y yVar = new y();
                yVar.a(true);
                return yVar;
            case 10:
                return new ab();
            default:
                return null;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        return a(bArr, 2).doFinal(bArr2);
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        return a(bArr, 1).doFinal(bArr2);
    }
}

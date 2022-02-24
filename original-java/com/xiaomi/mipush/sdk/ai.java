package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bl;
import com.xiaomi.push.h;
import com.xiaomi.push.hv;
import com.xiaomi.push.ik;
import com.xiaomi.push.il;
import com.xiaomi.push.im;
import com.xiaomi.push.iq;
import com.xiaomi.push.ir;
import com.xiaomi.push.iu;
import com.xiaomi.push.iw;
import com.xiaomi.push.ix;
import com.xiaomi.push.iy;
import com.xiaomi.push.ja;
import com.xiaomi.push.jc;
import com.xiaomi.push.je;
import com.xiaomi.push.jf;
import com.xiaomi.push.jg;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class ai {
    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends jg<T, ?>> ir a(Context context, T t, hv hvVar) {
        return a(context, t, hvVar, !hvVar.equals(hv.Registration), context.getPackageName(), b.m36a(context).m37a());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends jg<T, ?>> ir a(Context context, T t, hv hvVar, boolean z, String str, String str2) {
        return a(context, t, hvVar, z, str, str2, true);
    }

    protected static <T extends jg<T, ?>> ir a(Context context, T t, hv hvVar, boolean z, String str, String str2, boolean z2) {
        String str3;
        byte[] a2 = jf.a(t);
        if (a2 == null) {
            str3 = "invoke convertThriftObjectToBytes method, return null.";
        } else {
            ir irVar = new ir();
            if (z) {
                String d = b.m36a(context).d();
                if (TextUtils.isEmpty(d)) {
                    str3 = "regSecret is empty, return null";
                } else {
                    try {
                        a2 = h.b(bl.m102a(d), a2);
                    } catch (Exception unused) {
                        b.d("encryption error. ");
                    }
                }
            }
            ik ikVar = new ik();
            ikVar.f575a = 5L;
            ikVar.f576a = "fakeid";
            irVar.a(ikVar);
            irVar.a(ByteBuffer.wrap(a2));
            irVar.a(hvVar);
            irVar.b(z2);
            irVar.b(str);
            irVar.a(z);
            irVar.a(str2);
            return irVar;
        }
        b.m1a(str3);
        return null;
    }

    public static jg a(Context context, ir irVar) {
        byte[] bArr;
        if (irVar.m438b()) {
            byte[] a2 = i.a(context, irVar, e.ASSEMBLE_PUSH_FCM);
            if (a2 == null) {
                a2 = bl.m102a(b.m36a(context).d());
            }
            try {
                bArr = h.a(a2, irVar.m436a());
            } catch (Exception e) {
                throw new u("the aes decrypt failed.", e);
            }
        } else {
            bArr = irVar.m436a();
        }
        jg a3 = a(irVar.a(), irVar.f655b);
        if (a3 != null) {
            jf.a(a3, bArr);
        }
        return a3;
    }

    private static jg a(hv hvVar, boolean z) {
        switch (aj.f8685a[hvVar.ordinal()]) {
            case 1:
                return new iw();
            case 2:
                return new jc();
            case 3:
                return new ja();
            case 4:
                return new je();
            case 5:
                return new iy();
            case 6:
                return new il();
            case 7:
                return new iq();
            case 8:
                return new ix();
            case 9:
                if (z) {
                    return new iu();
                }
                im imVar = new im();
                imVar.a(true);
                return imVar;
            case 10:
                return new iq();
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends jg<T, ?>> ir b(Context context, T t, hv hvVar, boolean z, String str, String str2) {
        return a(context, t, hvVar, z, str, str2, false);
    }
}

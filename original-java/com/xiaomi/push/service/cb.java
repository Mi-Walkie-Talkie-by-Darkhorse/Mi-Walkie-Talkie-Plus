package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.push.hv;
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

/* loaded from: classes2.dex */
public class cb {
    public static jg a(Context context, ir irVar) {
        if (irVar.m438b()) {
            return null;
        }
        byte[] a2 = irVar.m436a();
        jg a3 = a(irVar.a(), irVar.f655b);
        if (a3 != null) {
            jf.a(a3, a2);
        }
        return a3;
    }

    private static jg a(hv hvVar, boolean z) {
        switch (cc.f9309a[hvVar.ordinal()]) {
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
}

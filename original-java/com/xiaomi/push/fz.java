package com.xiaomi.push;

import android.util.Log;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gc;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class fz {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f8971a = Log.isLoggable("BCompressed", 3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(fy fyVar, byte[] bArr) {
        try {
            byte[] a2 = gc.a.a(bArr);
            if (f8971a) {
                b.m2a("BCompressed", "decompress " + bArr.length + " to " + a2.length + " for " + fyVar);
                if (fyVar.f391a == 1) {
                    b.m2a("BCompressed", "decompress not support upStream");
                }
            }
            return a2;
        } catch (Exception e) {
            b.m2a("BCompressed", "decompress error " + e);
            return bArr;
        }
    }
}

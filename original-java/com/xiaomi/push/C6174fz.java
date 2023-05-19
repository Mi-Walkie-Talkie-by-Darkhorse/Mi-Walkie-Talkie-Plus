package com.xiaomi.push;

import android.util.Log;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6179gc;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.fz */
/* loaded from: classes2.dex */
public class C6174fz {

    /* renamed from: a */
    private static final boolean f21682a = Log.isLoggable("BCompressed", 3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static byte[] m2820a(C6173fy c6173fy, byte[] bArr) {
        try {
            byte[] m2783a = C6179gc.C6180a.m2783a(bArr);
            if (f21682a) {
                AbstractC5876b.m4145a("BCompressed", "decompress " + bArr.length + " to " + m2783a.length + " for " + c6173fy);
                if (c6173fy.f21677a == 1) {
                    AbstractC5876b.m4145a("BCompressed", "decompress not support upStream");
                }
            }
            return m2783a;
        } catch (Exception e) {
            AbstractC5876b.m4145a("BCompressed", "decompress error " + e);
            return bArr;
        }
    }
}

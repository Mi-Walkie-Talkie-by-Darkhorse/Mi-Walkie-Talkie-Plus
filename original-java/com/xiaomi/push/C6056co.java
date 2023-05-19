package com.xiaomi.push;

import android.os.Build;
import android.system.Os;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.io.File;

/* renamed from: com.xiaomi.push.co */
/* loaded from: classes2.dex */
public class C6056co {
    /* renamed from: a */
    public static long m3494a(String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                if (new File(str).exists()) {
                    return Os.stat(str).st_size;
                }
                return 0L;
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
                return 0L;
            }
        }
        return 0L;
    }
}

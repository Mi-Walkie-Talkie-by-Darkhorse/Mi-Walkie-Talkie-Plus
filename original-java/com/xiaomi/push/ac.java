package com.xiaomi.push;

import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.channel.commonutils.logger.b;
import java.io.File;

/* loaded from: classes2.dex */
public class ac {
    public static long a() {
        File externalStorageDirectory;
        if (!b() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null && !TextUtils.isEmpty(externalStorageDirectory.getPath())) {
            try {
                StatFs statFs = new StatFs(externalStorageDirectory.getPath());
                return statFs.getBlockSize() * (statFs.getAvailableBlocks() - 4);
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    /* renamed from: a  reason: collision with other method in class */
    public static boolean m66a() {
        try {
            return Environment.getExternalStorageState().equals("removed");
        } catch (Exception e) {
            b.a(e);
            return true;
        }
    }

    public static boolean b() {
        try {
            return true ^ Environment.getExternalStorageState().equals("mounted");
        } catch (Exception e) {
            Log.e("XMPush-", "check SDCard is busy: " + e);
            return true;
        }
    }

    public static boolean c() {
        return a() <= 102400;
    }

    public static boolean d() {
        return !b() && !c() && !m66a();
    }
}

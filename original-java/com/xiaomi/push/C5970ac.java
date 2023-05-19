package com.xiaomi.push;

import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.io.File;

/* renamed from: com.xiaomi.push.ac */
/* loaded from: classes2.dex */
public class C5970ac {
    /* renamed from: a */
    public static long m3802a() {
        File externalStorageDirectory;
        if (!m3800b() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null && !TextUtils.isEmpty(externalStorageDirectory.getPath())) {
            try {
                StatFs statFs = new StatFs(externalStorageDirectory.getPath());
                return statFs.getBlockSize() * (statFs.getAvailableBlocks() - 4);
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    /* renamed from: a */
    public static boolean m3801a() {
        try {
            return Environment.getExternalStorageState().equals("removed");
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
            return true;
        }
    }

    /* renamed from: b */
    public static boolean m3800b() {
        try {
            return true ^ Environment.getExternalStorageState().equals("mounted");
        } catch (Exception e) {
            Log.e("XMPush-", "check SDCard is busy: " + e);
            return true;
        }
    }

    /* renamed from: c */
    public static boolean m3799c() {
        return m3802a() <= 102400;
    }

    /* renamed from: d */
    public static boolean m3798d() {
        return (m3800b() || m3799c() || m3801a()) ? false : true;
    }
}

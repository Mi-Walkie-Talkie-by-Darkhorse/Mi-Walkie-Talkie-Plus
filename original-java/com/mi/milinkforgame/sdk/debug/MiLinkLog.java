package com.mi.milinkforgame.sdk.debug;

import android.support.v4.media.session.PlaybackStateCompat;
import com.mi.milinkforgame.sdk.base.debug.FileTracer;
import com.mi.milinkforgame.sdk.base.debug.LogcatTracer;
import com.mi.milinkforgame.sdk.data.Const.Debug;
import com.mi.milinkforgame.sdk.data.Option;

public final class MiLinkLog extends MiLinkTracer {
    private static volatile MiLinkLog sInstance = null;

    public static MiLinkLog getInstance() {
        if (sInstance == null) {
            synchronized (MiLinkLog.class) {
                if (sInstance == null) {
                    sInstance = new MiLinkLog();
                }
            }
        }
        return sInstance;
    }

    public static void setMaxFolderSize(long j) {
        int i = (int) (j / PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED);
        if (i < 1) {
            i = 72;
        }
        Option.putInt(Debug.FileBlockCount, i).commit();
    }

    public static void setMaxKeepPeriod(long j) {
        if (j < 86400000) {
            j = Debug.DefFileKeepPeriod;
        }
        Option.putLong(Debug.FileKeepPeriod, j).commit();
    }

    public static void setFileTraceLevel(int i) {
        if (i > 63 || i < 0) {
            i = 63;
        }
        Option.putInt(Debug.FileTraceLevel, i).commit();
    }

    public static void setLogcatTraceLevel(int i) {
        if (i > 63 || i < 0) {
            i = 63;
        }
        Option.putInt(Debug.LogcatTraceLevel, i).commit();
    }

    public static void v(String str, String str2) {
        getInstance().trace(1, str, str2, null);
    }

    public static void v(String str, String str2, Throwable th) {
        getInstance().trace(1, str, str2, th);
    }

    public static void d(String str, String str2) {
        getInstance().trace(2, str, str2, null);
    }

    public static void d(String str, String str2, Throwable th) {
        getInstance().trace(2, str, str2, th);
    }

    public static void i(String str, String str2) {
        getInstance().trace(4, str, str2, null);
    }

    public static void i(String str, String str2, Throwable th) {
        getInstance().trace(4, str, str2, th);
    }

    public static void w(String str, String str2) {
        getInstance().trace(8, str, str2, null);
    }

    public static void w(String str, String str2, Throwable th) {
        getInstance().trace(8, str, str2, th);
    }

    public static void e(String str, String str2) {
        getInstance().trace(16, str, str2, null);
    }

    public static void e(String str, Throwable th) {
        getInstance().trace(16, str, "", th);
    }

    public static void e(String str, String str2, Throwable th) {
        getInstance().trace(16, str, str2, th);
    }

    protected MiLinkLog() {
        this.fileTracer = new FileTracer(SERVICE_CONFIG);
        this.logcatTracer = new LogcatTracer();
        MiLinkTracer.setInstance(this);
        onSharedPreferenceChanged(null, Debug.FileTraceLevel);
        onSharedPreferenceChanged(null, Debug.LogcatTraceLevel);
    }
}

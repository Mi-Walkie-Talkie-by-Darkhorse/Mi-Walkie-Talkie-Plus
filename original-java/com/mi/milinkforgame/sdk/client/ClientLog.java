package com.mi.milinkforgame.sdk.client;

import android.support.v4.media.session.PlaybackStateCompat;
import com.mi.milinkforgame.sdk.base.debug.FileTracer;
import com.mi.milinkforgame.sdk.base.debug.FileTracerReader;
import com.mi.milinkforgame.sdk.base.debug.LogcatTracer;
import com.mi.milinkforgame.sdk.data.Const.Debug;
import com.mi.milinkforgame.sdk.data.Option;
import com.mi.milinkforgame.sdk.debug.MiLinkTracer;
import com.mi.milinkforgame.sdk.util.FileUtils;
import java.io.File;

public class ClientLog extends MiLinkTracer {
    private static ClientLog sInstance = null;

    public static ClientLog getInstance() {
        if (sInstance == null) {
            synchronized (ClientLog.class) {
                if (sInstance == null) {
                    sInstance = new ClientLog();
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
        Option.putInt(Debug.ClientFileBlockCount, i).commit();
    }

    public static void setMaxKeepPeriod(long j) {
        if (j < 86400000) {
            j = Debug.DefFileKeepPeriod;
        }
        Option.putLong(Debug.ClientFileKeepPeriod, j).commit();
    }

    public static void setFileTraceLevel(int i) {
        if (i > 63 || i < 0) {
            i = 63;
        }
        Option.putInt(Debug.ClientFileTraceLevel, i).commit();
    }

    public static void setLogcatTraceLevel(int i) {
        if (i > 63 || i < 0) {
            i = 63;
        }
        Option.putInt(Debug.ClientLogcatTraceLevel, i).commit();
    }

    public static final void v(String str, String str2) {
        getInstance().trace(1, str, str2, null);
    }

    public static final void v(String str, String str2, Throwable th) {
        getInstance().trace(1, str, str2, th);
    }

    public static final void d(String str, String str2) {
        getInstance().trace(2, str, str2, null);
    }

    public static final void d(String str, String str2, Throwable th) {
        getInstance().trace(2, str, str2, th);
    }

    public static final void i(String str, String str2) {
        getInstance().trace(4, str, str2, null);
    }

    public static final void i(String str, String str2, Throwable th) {
        getInstance().trace(4, str, str2, th);
    }

    public static final void w(String str, String str2) {
        getInstance().trace(8, str, str2, null);
    }

    public static final void w(String str, String str2, Throwable th) {
        getInstance().trace(8, str, str2, th);
    }

    public static final void e(String str, String str2) {
        getInstance().trace(16, str, str2, null);
    }

    public static final void e(String str, String str2, Throwable th) {
        getInstance().trace(16, str, str2, th);
    }

    public static boolean packLogs(long j, File file, File file2) {
        return getInstance().pack(j, file, file2);
    }

    public static void ensureLogsToFile() {
        getInstance().flush();
    }

    protected ClientLog() {
        this.fileTracer = new FileTracer(CLIENT_CONFIG);
        this.logcatTracer = new LogcatTracer();
        MiLinkTracer.setInstance(this);
        onSharedPreferenceChanged(null, Debug.ClientFileTraceLevel);
        onSharedPreferenceChanged(null, Debug.ClientLogcatTraceLevel);
    }

    public boolean pack(long j, File file, File file2) {
        return FileUtils.zip(new File[]{new FileTracerReader(SERVICE_CONFIG).pack(j, file, false), new FileTracerReader(CLIENT_CONFIG).pack(j, file, false)}, file2);
    }
}

package com.tencent.open.a;

import android.text.format.Time;
import android.util.Log;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import com.mi.milinkforgame.sdk.base.os.Http;
import com.mi.milinkforgame.sdk.util.CommonUtils;

/* compiled from: ProGuard */
public final class h {
    public static final h a = new h();

    public final String a(int i) {
        switch (i) {
            case 1:
                return TraceFormat.STR_VERBOSE;
            case 2:
                return TraceFormat.STR_DEBUG;
            case 4:
                return TraceFormat.STR_INFO;
            case 8:
                return TraceFormat.STR_WARN;
            case 16:
                return TraceFormat.STR_ERROR;
            case 32:
                return TraceFormat.STR_ASSERT;
            default:
                return "-";
        }
    }

    public String a(int i, Thread thread, long j, String str, String str2, Throwable th) {
        long j2 = j % 1000;
        Time time = new Time();
        time.set(j);
        StringBuilder sb = new StringBuilder();
        sb.append(a(i)).append(Http.PROTOCOL_HOST_SPLITTER).append(time.format(TraceFormat.TRACE_TIME_FORMAT)).append('.');
        if (j2 < 10) {
            sb.append("00");
        } else if (j2 < 100) {
            sb.append('0');
        }
        sb.append(j2).append(' ').append('[');
        if (thread == null) {
            sb.append(CommonUtils.NOT_AVALIBLE);
        } else {
            sb.append(thread.getName());
        }
        sb.append(']').append('[').append(str).append(']').append(' ').append(str2).append(10);
        if (th != null) {
            sb.append("* Exception : \n").append(Log.getStackTraceString(th)).append(10);
        }
        return sb.toString();
    }
}

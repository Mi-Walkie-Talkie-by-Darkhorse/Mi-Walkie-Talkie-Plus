package com.mi.milinkforgame.sdk.base.debug;

import android.text.format.Time;
import android.util.Log;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.os.Http;
import com.mi.milinkforgame.sdk.util.CommonUtils;

public class TraceFormat {
    public static final TraceFormat DEFAULT = new TraceFormat();
    public static final String STR_ASSERT = "A";
    public static final String STR_DEBUG = "D";
    public static final String STR_ERROR = "E";
    public static final String STR_INFO = "I";
    public static final String STR_UNKNOWN = "-";
    public static final String STR_VERBOSE = "V";
    public static final String STR_WARN = "W";
    public static final String TRACE_TIME_FORMAT = "%Y-%m-%d %H:%M:%S";

    public static final String getLevelPrefix(int i) {
        switch (i) {
            case 1:
                return STR_VERBOSE;
            case 2:
                return STR_DEBUG;
            case 4:
                return STR_INFO;
            case 8:
                return STR_WARN;
            case 16:
                return STR_ERROR;
            case 32:
                return STR_ASSERT;
            default:
                return "-";
        }
    }

    public String formatTrace(int i, Thread thread, long j, String str, String str2, Throwable th) {
        try {
            long j2 = j % 1000;
            Time time = new Time();
            time.set(j);
            StringBuilder sb = new StringBuilder();
            sb.append(getLevelPrefix(i)).append(Http.PROTOCOL_HOST_SPLITTER).append(time.format(TRACE_TIME_FORMAT)).append('.');
            if (j2 < 10) {
                sb.append("00");
            } else if (j2 < 100) {
                sb.append('0');
            }
            sb.append(j2).append(' ').append('[').append(Global.getPid()).append(']').append('[');
            if (thread == null) {
                sb.append(CommonUtils.NOT_AVALIBLE);
            } else {
                sb.append(thread.getName());
            }
            sb.append(']').append('[').append(str).append(']').append(' ').append(str2).append(10);
            if (th != null) {
                sb.append("*** Exception : \n").append(Log.getStackTraceString(th)).append(10);
            }
            return sb.toString();
        } catch (OutOfMemoryError e) {
            return "";
        }
    }
}

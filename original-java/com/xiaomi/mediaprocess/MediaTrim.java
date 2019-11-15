package com.xiaomi.mediaprocess;

import android.util.Log;

public class MediaTrim {
    private static String TAG = "MediaTrim";

    private static native int MediaTrimJni(String str, String str2, long j, long j2);

    public static int MediaTrim(String str, String str2, long j, long j2) {
        Log.d(TAG, "MediaTrim");
        return MediaTrimJni(str, str2, j, j2);
    }
}

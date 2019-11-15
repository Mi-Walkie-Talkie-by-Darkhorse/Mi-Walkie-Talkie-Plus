package com.xiaomi.mediaprocess;

import android.util.Log;

public class VideoThumbnail {
    private static String TAG = "MediaThumbnail";

    private static native void CancelThumbnailsJni();

    private static native String[] GenerateThumbnailsJni(String str, String str2, int i, int i2, int i3);

    public static String[] GenerateThumbnails(String str, String str2, int i, int i2, int i3) {
        Log.d(TAG, "GenerateThumbnails");
        return GenerateThumbnailsJni(str, str2, i, i2, i3);
    }

    public static void CancelThumbnails() {
        Log.d(TAG, "CancelThumbnails");
        CancelThumbnailsJni();
    }
}

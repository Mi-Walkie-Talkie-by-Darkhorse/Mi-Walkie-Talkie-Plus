package com.xiaomi.mediaprocess;

import android.util.Log;

public class MediaProcess {
    public static final String[] FILTER_SAMPLE_PARAMS = {"com.wali.live.videofilter.basic", "com.wali.live.videofilter.sweet", "com.wali.live.videofilter.crema", "com.wali.live.videofilter.nashville", "com.wali.live.videofilter.aden", "com.wali.live.videofilter.gingham", "com.wali.live.videofilter.stinson", "com.wali.live.videofilter.clarendon", "com.wali.live.videofilter.juno", "com.wali.live.videofilter.dogpatch", "com.wali.live.videofilter.gray"};
    private static String TAG = "MediaProcess";

    public interface Callback {
        void OnConvertProgress(int i);
    }

    private static native int cancelmediaconvertJni(String str);

    private static native int mediaconvertJni(String str, long j, String str2, String str3, float f, String str4, int i, int i2, long j2, long j3, float f2, String str5, long j4, long j5, float f3, float f4, Callback callback);

    public static int mediaconvert(String str, long j, String str2, String str3, float f, String str4, int i, int i2, long j2, long j3, float f2, String str5, long j4, long j5, float f3, float f4, Callback callback) {
        Log.d(TAG, "mediaconvert");
        return mediaconvertJni(str, j, str2, str3, f, str4, i, i2, j2, j3, f2, str5, j4, j5, f3, f4, callback);
    }

    public static int cancelmediaconvert(String str) {
        Log.d(TAG, "cancel mediaconvert ");
        return cancelmediaconvertJni(str);
    }
}

package com.xiaomi.mediaprocess;

import android.util.Log;

public class VideoThumbnailHelper {
    private static String TAG = "MediaThumbnail";
    private long mNativeThumbnail = 0;
    private VideoThumbnailNotifier mNotifier = null;

    public interface VideoThumbnailNotifier {
        void OnReceiveAllComplete();

        void OnReceivePngFile(String str, long j);
    }

    private native void CancelThumbnailsJni();

    private native long ConstructThumbnailJni();

    private native void DestructThumbnailJni();

    private native boolean GenerateThumbnailsJni(String str, String str2, int i, int i2, int i3);

    public boolean GenerateThumbnails(String str, String str2, int i, int i2, int i3, VideoThumbnailNotifier videoThumbnailNotifier) {
        Log.d(TAG, "GenerateThumbnails");
        this.mNotifier = videoThumbnailNotifier;
        this.mNativeThumbnail = ConstructThumbnailJni();
        boolean GenerateThumbnailsJni = GenerateThumbnailsJni(str, str2, i, i2, i3);
        DestructThumbnailJni();
        this.mNativeThumbnail = 0;
        return GenerateThumbnailsJni;
    }

    public void CancelThumbnails() {
        Log.d(TAG, "CancelThumbnails");
        if (this.mNativeThumbnail != 0) {
            CancelThumbnailsJni();
            DestructThumbnailJni();
            this.mNotifier = null;
            this.mNativeThumbnail = 0;
        }
    }

    private void OnReceivePngFile(String str, long j) {
        if (this.mNotifier != null) {
            this.mNotifier.OnReceivePngFile(str, j);
        }
    }

    private void OnReceiveAllComplete() {
        if (this.mNotifier != null) {
            this.mNotifier.OnReceiveAllComplete();
        }
    }
}

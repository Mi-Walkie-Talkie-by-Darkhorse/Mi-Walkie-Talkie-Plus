package com.xiaomi.broadcaster;

import android.content.Context;
import android.util.Log;
import com.xiaomi.broadcaster.callback.RecordingSessionCallback;

public class RecordingSessionWrapper {
    private static String TAG = "RecordingSessionWrapper";
    private RecordingSessionCallback rc = null;
    private long recordingSession = 0;

    private native void addRecordingExternalAudioStreamJni(long j, boolean z, int i, int i2);

    private native void addRecordingExternalVideoStreamJni(long j, boolean z, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, int i);

    private native long constructRecordingSessionJni(Context context, int i, int i2, int i3, int i4);

    private native void destructRecordingSessionJni();

    private native void pushExtraYUVFrameJni(int i, int i2, byte[] bArr, int i3, int i4, int i5, long j, long j2);

    private native void pushRecordingExternalAudioFrameJni(int i, int i2, int i3, int i4, byte[] bArr, long j, long j2);

    private native void removeRecordingExternalAudioStreamJni(long j);

    private native void removeRecordingExternalVideoStreamJni(long j);

    private native boolean startRecordingJni(String str);

    private native void stopRecordingJni();

    public void constructRecordingSession(Context context, RecordingSessionCallback recordingSessionCallback, int i, int i2, int i3, int i4) {
        Log.d(TAG, "constructRecordingSession enter");
        this.rc = recordingSessionCallback;
        this.recordingSession = constructRecordingSessionJni(context, i, i2, i3, i4);
    }

    public long getRecordingSession() {
        Log.d(TAG, "getRecordingSession enter");
        return this.recordingSession;
    }

    public void destructRecordingSession() {
        Log.d(TAG, "destructRecordingSession enter");
        destructRecordingSessionJni();
        this.recordingSession = 0;
    }

    public void addRecordingExternalVideoStream(long j, boolean z, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, int i) {
        Log.d(TAG, "addRecordingExternalVideoStream");
        addRecordingExternalVideoStreamJni(j, z, f, f2, f3, f4, f5, f6, f7, f8, f9, f10, i);
    }

    public void removeRecordingExternalVideoStream(long j) {
        Log.d(TAG, "removeRecordingExternalVideoStream");
        removeRecordingExternalVideoStreamJni(j);
    }

    public void addRecordingExternalAudioStream(long j, boolean z, int i, int i2) {
        Log.d(TAG, "addRecordingExternalAudioStream");
        addRecordingExternalAudioStreamJni(j, z, i, i2);
    }

    public void removeRecordingExternalAudioStream(long j) {
        Log.d(TAG, "removeRecordingExternalAudioStream");
        removeRecordingExternalAudioStreamJni(j);
    }

    public void pushRecordingExternalAudioFrame(int i, int i2, int i3, int i4, byte[] bArr, long j, long j2) {
        Log.d(TAG, "pushRecordingExternalAudioFrame");
        pushRecordingExternalAudioFrameJni(i, i2, i3, i4, bArr, j, j2);
    }

    public boolean startRecording(String str) {
        Log.d(TAG, "startRecording");
        return startRecordingJni(str);
    }

    public void stopRecording() {
        Log.d(TAG, "startRecording");
        stopRecordingJni();
    }

    public void pushExtraYUVFrame(int i, int i2, byte[] bArr, int i3, int i4, int i5, long j, long j2) {
        Log.d(TAG, "pushExtraYUVFrame");
        pushExtraYUVFrameJni(i, i2, bArr, i3, i4, i5, j, j2);
    }

    public void onRecordingOk(int i) {
        Log.d(TAG, "callback:onRecordingOk");
        this.rc.onRecordingOk(i);
    }

    public void onRecordingFailed() {
        Log.d(TAG, "callback:onRecordingFailed");
        this.rc.onRecordingFailed();
    }
}

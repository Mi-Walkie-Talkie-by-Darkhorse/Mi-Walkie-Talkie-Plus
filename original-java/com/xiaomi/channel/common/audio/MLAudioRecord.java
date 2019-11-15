package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.os.Handler;

public abstract class MLAudioRecord extends TouchableXMAudioRecord {
    private static long mComposingMessageId;
    private boolean mIsCancelled;
    private boolean mIsStopRecordingAction;

    public MLAudioRecord(Context context, Handler handler) {
        this(context, 60000, handler);
    }

    public MLAudioRecord(Context context, int i, Handler handler) {
        super(context, i, handler);
        this.mIsCancelled = false;
        this.mIsStopRecordingAction = false;
    }

    public void onRecordInitializationSucceed() {
    }

    public void setCancelled(boolean z) {
        this.mIsCancelled = z;
    }

    public static boolean isComposing(long j) {
        return mComposingMessageId == j;
    }

    public void stopRecordingAction() {
        this.mIsStopRecordingAction = true;
    }
}

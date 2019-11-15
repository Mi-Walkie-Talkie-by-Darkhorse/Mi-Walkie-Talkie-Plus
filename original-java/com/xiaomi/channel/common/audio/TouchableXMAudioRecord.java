package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.os.Handler;
import com.mi.milinkforgame.sdk.client.ClientLog;

public abstract class TouchableXMAudioRecord extends AbstractXMAudioRecord {
    public static int ACTION_START = 1;
    public static int ACTION_STOP = 2;
    private static final String TAG = TouchableXMAudioRecord.class.getSimpleName();

    public abstract String creatAudioPath();

    public TouchableXMAudioRecord(Context context, Handler handler) {
        this(context, 60000, handler);
    }

    public TouchableXMAudioRecord(Context context, int i, Handler handler) {
        super(context, i, handler);
    }

    public boolean onTouch(int i) {
        ClientLog.d(TAG, "signal is " + i);
        if (i == ACTION_STOP) {
            endRecord(false);
        } else if (isRecordable() && i == ACTION_START) {
            startRecord(creatAudioPath());
        }
        return true;
    }
}

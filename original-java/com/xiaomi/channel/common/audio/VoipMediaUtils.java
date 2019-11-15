package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.media.AudioManager;
import com.mi.milinkforgame.sdk.client.ClientLog;

public class VoipMediaUtils {
    private static final String LOG_TAG = VoipMediaUtils.class.getSimpleName();
    private static volatile VoipMediaUtils mInstance;
    private AudioManager mAudioManager;

    public static VoipMediaUtils getInstance(Context context) {
        if (mInstance == null) {
            synchronized (VoipMediaUtils.class) {
                if (mInstance == null) {
                    mInstance = new VoipMediaUtils(context);
                }
            }
        }
        return mInstance;
    }

    private VoipMediaUtils(Context context) {
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
    }

    public AudioManager getAudioManager() {
        return this.mAudioManager;
    }

    public void setSpeakerphoneOn(boolean z) {
        ClientLog.i(LOG_TAG, "setSpeakerphoneOn: " + z);
        if (z != isSpeakerphoneOn()) {
            this.mAudioManager.setSpeakerphoneOn(z);
        }
    }

    public boolean isSpeakerphoneOn() {
        ClientLog.i(LOG_TAG, "isSpeakerphoneOn: " + this.mAudioManager.isSpeakerphoneOn());
        return this.mAudioManager.isSpeakerphoneOn();
    }
}

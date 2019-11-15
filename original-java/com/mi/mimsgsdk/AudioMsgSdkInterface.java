package com.mi.mimsgsdk;

import android.content.Context;
import android.support.annotation.NonNull;
import com.xiaomi.channel.common.audio.CustomAudioManager.DownloadCallback;

public interface AudioMsgSdkInterface {
    void audioMsgSdkInit(Context context, AudioRecordListener audioRecordListener);

    void playVoiceWithUrl(String str);

    void playVoiceWithUrl(String str, @NonNull DownloadCallback downloadCallback);

    void startRecord();

    void stopPlayVoice();

    void stopRecord();
}

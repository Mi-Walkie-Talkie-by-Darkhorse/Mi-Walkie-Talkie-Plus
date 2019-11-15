package com.xiaomi.broadcaster.callback;

import com.xiaomi.broadcaster.enums.VCNetworkQuality;
import com.xiaomi.broadcaster.enums.VCSessionErrType;
import com.xiaomi.broadcaster.enums.VCSessionState;

public interface BroadcastCallback {
    void onAudioDataProcess(byte[] bArr, int i);

    void onAudioMixedMusicFinished();

    void onAudioMixedMusicProgress(int i);

    void onAvgBiteRate(int i);

    void onConnectionStatusChanged(VCSessionState vCSessionState);

    void onDetectedThroughput(float f, int i);

    void onNetworkQualityStatus(VCNetworkQuality vCNetworkQuality);

    void onStreamClosed(String str);

    void onStreamPublished(String str);

    void onTakingPicFailed();

    void onTakingPicOk();

    void onVCSessionErr(VCSessionErrType vCSessionErrType);
}

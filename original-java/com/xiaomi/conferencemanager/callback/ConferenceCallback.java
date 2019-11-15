package com.xiaomi.conferencemanager.callback;

import com.xiaomi.conferencemanager.ConferenceManager.EngineErrorTypeT;
import com.xiaomi.conferencemanager.Model.MonitorData.Type;

public interface ConferenceCallback {
    void OnSelectionChanged(String[] strArr);

    void onAccessServerError(int i);

    void onCallEnded();

    void onConferenceJoined();

    void onConferenceLeaved(EngineErrorTypeT engineErrorTypeT);

    void onError(String str, EngineErrorTypeT engineErrorTypeT);

    void onGetBestConnectionTime(int i, int i2, Type type);

    void onGetFirstAudioSample();

    void onGetFirstVideoSample();

    void onGetSpeekerDetect(String[] strArr);

    void onJoin(String str);

    void onLeave(String str);

    void onLoad(boolean z);

    void onLocalVidStreamActive();

    void onLocalVidStreamDeactive();

    void onNetworkStatus(String str, int i, int i2);

    void onReceivedRemoteFrameStatus(String str, int i);

    void onReconnectStatus(int i);

    void onReflectorDown();

    void onRemoteVidResize(String str, int i, int i2);

    void onRemoteVidStreamCreated(String str);

    void onRemoteVidStreamRemoved(String str);

    void onReportTraffic(int i);

    void onScreamChange(int i);

    void onStartCamera();

    void onStopCamera();
}

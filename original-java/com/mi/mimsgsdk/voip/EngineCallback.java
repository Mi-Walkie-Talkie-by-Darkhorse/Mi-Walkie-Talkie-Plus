package com.mi.mimsgsdk.voip;

import android.os.Handler;
import android.os.Message;
import android.support.v4.os.EnvironmentCompat;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.MsgSdkManager;
import com.mi.mimsgsdk.utils.LogType;
import com.mi.mimsgsdk.utils.StatUtils;
import io.agora.rtc.a;
import io.agora.rtc.a.C0078a;
import io.agora.rtc.a.d;

public class EngineCallback extends a {
    private static final String TAG = EngineCallback.class.getSimpleName();
    private volatile Handler mHandler;
    private volatile int qualityIntersept;
    private volatile int selfUid;

    public EngineCallback(Handler handler) {
        this.mHandler = handler;
    }

    public boolean updateUI(int i, String str) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = i;
        obtainMessage.obj = str;
        this.mHandler.sendMessage(obtainMessage);
        return true;
    }

    public boolean updateUI(int i, int i2, String str) {
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = i;
        obtainMessage.obj = str;
        obtainMessage.arg1 = i2;
        this.mHandler.sendMessage(obtainMessage);
        return true;
    }

    public void onError(int i) {
        updateUI(1001, "Agora Voice SDK report error: " + i);
    }

    public void onJoinChannelSuccess(String str, int i, int i2) {
        updateUI(1001, "Channel joined: channel " + str + " uid " + (((long) i) & 4294967295L) + " elapsed " + i2 + " ms");
        updateUI(1002, i, Key.UID);
        this.selfUid = i;
    }

    public void onRejoinChannelSuccess(String str, int i, int i2) {
        updateUI(1001, "Channel rejoined: channel " + str + " uid " + (((long) i) & 4294967295L) + " elapsed " + i2 + " ms");
        updateUI(1004, i, Key.UID);
    }

    public void onLeaveChannel(d dVar) {
        updateUI(1001, "end of call: duration " + dVar.a + " secs, total " + (dVar.b + dVar.c) + " bytes");
        updateUI(1003, this.selfUid, Key.UID);
    }

    public void onAudioVolumeIndication(C0078a[] aVarArr, int i) {
        String str = "*******\n";
        for (int i2 = 0; i2 < aVarArr.length; i2++) {
            str = str + " speakers.uid " + aVarArr[i2].a + " speakers.volume" + aVarArr[i2].b + "\n";
        }
        ClientLog.d("EngineCallback onAudioVolumeIndication", str + "*******\n");
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = 2001;
        obtainMessage.obj = aVarArr;
        this.mHandler.sendMessage(obtainMessage);
    }

    public void onRtcStats(d dVar) {
    }

    static String getQualityDesc(int i) {
        switch (i) {
            case 1:
                return "5";
            case 2:
                return "4";
            case 3:
                return "3";
            case 4:
                return "2";
            case 5:
                return "1";
            case 6:
                return "0";
            default:
                return EnvironmentCompat.MEDIA_UNKNOWN;
        }
    }

    public void onAudioQuality(int i, int i2, short s, short s2) {
        updateUI(1001, String.format("user %d quality %s delay %d lost %d", new Object[]{Long.valueOf(((long) i) & 4294967295L), getQualityDesc(i2), Short.valueOf(s), Short.valueOf(s2)}));
        if (this.qualityIntersept % 60 == 0) {
            StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_MIXUN_SDK_QUA, MsgSdkManager.getInstance().getInitParams().getgUid(), (long) i2, (long) s, (long) s2);
            this.qualityIntersept = 0;
        }
        this.qualityIntersept++;
    }

    public void onUserJoined(int i, int i2) {
        ClientLog.d(TAG, "tuning test uid = " + i + "onUserJoined");
        updateUI(1001, "user " + (((long) i) & 4294967295L) + " is joined");
        updateUI(1002, i, Key.UID);
    }

    public void onUserOffline(int i, int i2) {
        ClientLog.d(TAG, "tuning test uid = " + i + "onUserOffline");
        updateUI(1001, "user " + (((long) i) & 4294967295L) + " is offline");
        updateUI(1005, i, Key.UID);
    }

    public void onUserMuteAudio(int i, boolean z) {
        ClientLog.d(TAG, "onUserMuteAudio");
        Message obtainMessage = this.mHandler.obtainMessage();
        obtainMessage.what = 2002;
        obtainMessage.arg1 = i;
        obtainMessage.obj = Boolean.valueOf(z);
        this.mHandler.sendMessage(obtainMessage);
    }

    public void onUserMuteVideo(int i, boolean z) {
        updateUI(1001, String.format("user %d onUserMuteVideo fired", new Object[]{Long.valueOf(((long) i) & 4294967295L)}));
    }

    public void onLocalVideoStat(int i, int i2) {
    }

    public void onConnectionLost() {
        String str = "connection lost";
        updateUI(1001, str);
        updateUI(1006, str);
    }
}

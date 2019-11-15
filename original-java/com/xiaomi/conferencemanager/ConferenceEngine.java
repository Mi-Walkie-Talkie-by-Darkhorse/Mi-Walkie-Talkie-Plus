package com.xiaomi.conferencemanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.xiaomi.conferencemanager.ConferenceManager.DynamicViewPolicyT;
import com.xiaomi.conferencemanager.ConferenceManager.EngineErrorTypeT;
import com.xiaomi.conferencemanager.ConferenceManager.VideoContentTypeT;
import com.xiaomi.conferencemanager.Model.ConnectionData;
import com.xiaomi.conferencemanager.Model.MonitorData;
import com.xiaomi.conferencemanager.Model.MonitorData.Type;
import com.xiaomi.conferencemanager.callback.ConferenceCallback;
import com.xiaomi.utils.Logger;

public class ConferenceEngine {
    private static final String TAG = "ConferenceEngine";
    private static ConferenceEngine instance;
    private long address;
    private ConferenceCallback cc;

    public static class InVideoStat {
        public int mBitrate;
        public String mCodecName;
        public int mDistinctNacksRequested;
        public int mDistinctNacksTransmitted;
        public int mFecSuccessRate;
        public int mFrameRate;
        public int mFramesDecoded;
        public int mFramesDisplay;
        public int mHeight;
        public int mNacksSent;
        public int mPacketsLost;
        public int mPacketsReceived;
        public byte mPayloadType;
        public int mRTT;
        public int mRecvBandwidth;
        public int mRecvBitRateApp;
        public int mRecvBitRateAudio;
        public int mRecvBitRateTotal;
        public int mRecvBitRateVideo;
        public int mWidth;

        public InVideoStat(String str, byte b, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
            this.mCodecName = str;
            this.mPayloadType = b;
            this.mBitrate = i;
            this.mPacketsReceived = i2;
            this.mPacketsLost = i3;
            this.mFrameRate = i4;
            this.mFramesDecoded = i5;
            this.mFramesDisplay = i6;
            this.mWidth = i7;
            this.mHeight = i8;
            this.mRTT = i9;
            this.mFecSuccessRate = i10;
            this.mNacksSent = i11;
            this.mDistinctNacksRequested = i12;
            this.mDistinctNacksTransmitted = i13;
            this.mRecvBitRateVideo = i14;
            this.mRecvBitRateAudio = i15;
            this.mRecvBitRateApp = i16;
            this.mRecvBitRateTotal = i17;
            this.mRecvBandwidth = i18;
        }

        public String toString() {
            return "\nVideo Recv{\nmBitrate = " + (this.mBitrate / 8000) + "\nmPacketsReceived = " + this.mPacketsReceived + "\nmPacketsLost = " + this.mPacketsLost + "\nmFrameRate = " + this.mFrameRate + "\nmFramesDecoded = " + this.mFramesDecoded + "\nmFramesDisplay = " + this.mFramesDisplay + "\nmWidth = " + this.mWidth + ", mHeight = " + this.mHeight + "\nmFecSuccessRate = " + this.mFecSuccessRate + "\nmNacksSent = " + this.mNacksSent + "\nNacksRequested = " + this.mDistinctNacksRequested + "\nNacksTransmitted = " + this.mDistinctNacksTransmitted + "\nmRecBW = " + this.mRecvBandwidth + "\nmRecVideoBW = " + this.mRecvBitRateVideo + "\nmRecAudioBW = " + this.mRecvBitRateAudio + "\nmRecTotalBW = " + this.mRecvBitRateTotal + "}\n";
        }
    }

    public static class OutVideoStat {
        public int mBitrate;
        public int mCaptureFrameRate;
        public String mCodecName;
        public int mDistinctNacksRcvd;
        public int mDistinctPacketsRetransmitted;
        public int mEncodeFrameRate;
        public int mHeight;
        public int mIFramesSent;
        public int mNacksRcvd;
        public byte mPayloadType;
        public int mRTT;
        public int mSendBandwidth;
        public int mSendBitRateApp;
        public int mSendBitRateAudio;
        public int mSendBitRateTotal;
        public int mSendBitRateVideo;
        public int mWidth;

        public OutVideoStat(String str, byte b, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
            this.mCodecName = str;
            this.mPayloadType = b;
            this.mBitrate = i;
            this.mCaptureFrameRate = i2;
            this.mEncodeFrameRate = i3;
            this.mIFramesSent = i4;
            this.mWidth = i5;
            this.mHeight = i6;
            this.mRTT = i7;
            this.mNacksRcvd = i8;
            this.mDistinctNacksRcvd = i9;
            this.mDistinctPacketsRetransmitted = i10;
            this.mSendBitRateVideo = i11;
            this.mSendBitRateAudio = i12;
            this.mSendBitRateApp = i13;
            this.mSendBitRateTotal = i14;
            this.mSendBandwidth = i15;
        }

        public String toString() {
            return "\nVideo Send{\nmBitrate = " + (this.mBitrate / 8000) + "\nmCaptureFrameRate = " + this.mCaptureFrameRate + "\nmEncodeFrameRate = " + this.mEncodeFrameRate + "\nmIFramesSent = " + this.mIFramesSent + "\nmWidth = " + this.mWidth + ", mHeight = " + this.mHeight + "\nmRTT = " + this.mRTT + ", mNacksRcvd = " + this.mNacksRcvd + "\nmDistinctNacksRcvd = " + this.mDistinctNacksRcvd + "\nPacketsRetransmitted = " + this.mDistinctPacketsRetransmitted + "\nmSendBandwidth = " + this.mSendBandwidth + "\nmSendBitRateVideo = " + this.mSendBitRateVideo + "\nmSendBitRateAudio = " + this.mSendBitRateAudio + "\nmSendBitRateTotal = " + this.mSendBitRateTotal + "}";
        }
    }

    public static native boolean WriteSettings(String str, String str2);

    public static native String getEngineVersion();

    public static native int getEngineVersionInt();

    public native void AutoStartCamera(boolean z);

    public native void AutoStartMicrophone(boolean z);

    public native void AutoStartSpeaker(boolean z);

    public native long Construct(Context context, long j, String str, byte[] bArr, String str2, int i, int i2);

    public native void Dispose();

    public native boolean Join(String str, String str2, String str3, boolean z, boolean z2, boolean z3, String str4, String str5, String str6);

    public native void Leave();

    public native void MuteMicrophone(boolean z);

    public native boolean MuteVideo(boolean z);

    public native boolean SetGslbConfig(byte[] bArr);

    public native void SetSecure(boolean z);

    public native boolean StartVideo(boolean z);

    public native void acceptCall();

    public native void declineCall();

    public native void enableCameraRotation(boolean z);

    public native void enableMonitorTraffic(boolean z);

    public native String getIceStat();

    public native InVideoStat getInVideoStat();

    public native MonitorData getMonitorData();

    public native OutVideoStat getOutVideoStat();

    public native int getParticipantVolume(String str);

    public native int getRunHorseTime();

    public native int getVoiceMode();

    public native void localParticipantSetDynamicViewPolicy(DynamicViewPolicyT dynamicViewPolicyT);

    public native void muteUserAudio(String str, boolean z);

    public native void setAudioType(int i);

    public native void setCallResolutionMode(int i, int i2);

    public native void setEncoderMaxBitRate(int i);

    public native void setLocalNetWork(String str, String str2);

    public native void setMirrorCamera(boolean z);

    public native void setPlayoutVolume(int i);

    public native void setPowerStatus(int i, boolean z);

    public native void setRemoteNetWork(String str, String str2);

    public native boolean setScreenFps(int i);

    public native boolean setScreenResolution(int i, int i2);

    public native void setUserPlayoutVolume(String str, double d);

    public native boolean switchVideoContent(VideoContentTypeT videoContentTypeT);

    public String getNetworkEnv(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "No network";
        }
        if (activeNetworkInfo.getType() == 1) {
            return "WIFI";
        }
        if (activeNetworkInfo.getType() != 0) {
            return "Unknown";
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                return "Unknown";
        }
    }

    public EngineErrorTypeT getEngineError(int i) {
        EngineErrorTypeT engineErrorTypeT = EngineErrorTypeT.ENGINE_UNKNOWN_ERROR;
        EngineErrorTypeT[] values = EngineErrorTypeT.values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            EngineErrorTypeT engineErrorTypeT2 = values[i2];
            if (engineErrorTypeT2.ordinal() != i) {
                engineErrorTypeT2 = engineErrorTypeT;
            }
            i2++;
            engineErrorTypeT = engineErrorTypeT2;
        }
        return engineErrorTypeT;
    }

    public static ConferenceEngine getInstance() {
        if (instance == null) {
            synchronized (ConferenceEngine.class) {
                if (instance == null) {
                    instance = new ConferenceEngine();
                }
            }
        }
        return instance;
    }

    public long getAddress() {
        return this.address;
    }

    public void onError(String str, int i) {
        Logger.LogI("Java onError: " + i + Token.SEPARATOR + getEngineError(i));
        this.cc.onError(str, getEngineError(i));
    }

    public void onCallEnded() {
        this.cc.onCallEnded();
    }

    public void onJoin(String str) {
        this.cc.onJoin(str);
    }

    public void onLeave(String str) {
        this.cc.onLeave(str);
    }

    public void onConferenceLeaved(int i) {
        Logger.LogI("Java onConferenceLeaved.");
        this.cc.onConferenceLeaved(getEngineError(i));
    }

    public void onConferenceJoined() {
        Logger.LogI("Java onConferenceJoined.");
        this.cc.onConferenceJoined();
    }

    public void onRemoteVidStreamCreated(String str) {
        this.cc.onRemoteVidStreamCreated(str);
    }

    public void onRemoteVidStreamRemoved(String str) {
        this.cc.onRemoteVidStreamRemoved(str);
    }

    public void onRemoteVidResize(String str, int i, int i2) {
        this.cc.onRemoteVidResize(str, i, i2);
    }

    public void onReconnectStatus(int i) {
        this.cc.onReconnectStatus(i);
    }

    public void onNetworkStatus(String str, int i, int i2) {
        this.cc.onNetworkStatus(str, i, i2);
    }

    public void onReceivedRemoteFrameStatus(String str, int i) {
        this.cc.onReceivedRemoteFrameStatus(str, i);
    }

    public void onStartCamera() {
        this.cc.onStartCamera();
    }

    public void onStopCamera() {
        this.cc.onStopCamera();
    }

    public void onGetFirstAudioSample() {
        this.cc.onGetFirstAudioSample();
    }

    public void onGetFirstVideoSample() {
        this.cc.onGetFirstVideoSample();
    }

    public void onAccessServerError(int i) {
        this.cc.onAccessServerError(i);
    }

    public void OnSelectionChanged(String[] strArr) {
        this.cc.OnSelectionChanged(strArr);
    }

    public void onLocalVidStreamActive() {
        this.cc.onLocalVidStreamActive();
    }

    public void onLocalVidStreamDeactive() {
        this.cc.onLocalVidStreamDeactive();
    }

    public void onGetBestConnectionTime(int i, int i2, int i3) {
        Logger.LogI("Java getBestConnectionTime." + String.valueOf(i) + "java getBestConnectionSuccess " + String.valueOf(i2) + " java getBestConnectionType " + String.valueOf(i3));
        this.cc.onGetBestConnectionTime(i, i2, Type.valueOf(i3));
    }

    public void onGetSpeekerDetect(String[] strArr) {
        this.cc.onGetSpeekerDetect(strArr);
    }

    public void onReportTraffic(int i) {
        this.cc.onReportTraffic(i);
    }

    public void onGetConnnectionData(ConnectionData connectionData) {
        Logger.LogI("Java onGetConnectionData.");
    }

    public void onReflectorDown() {
        this.cc.onReflectorDown();
    }

    public void onScreamChange(int i) {
        this.cc.onScreamChange(i);
    }

    public boolean initialize(Context context, long j, String str, byte[] bArr, ConferenceCallback conferenceCallback, String str2, int i, int i2) {
        this.cc = conferenceCallback;
        if (bArr != null) {
            Logger.LogI("Java gslb_config_str.length. " + String.valueOf(bArr.length));
            Logger.LogI("Java gslb_config_str.length. " + new String(bArr));
        }
        this.address = Construct(context, j, str, bArr, str2, i, i2);
        if (this.address == 0) {
            return false;
        }
        return true;
    }

    public void uninitialize() {
        Dispose();
        this.cc = null;
    }
}

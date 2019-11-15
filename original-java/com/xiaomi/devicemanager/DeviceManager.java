package com.xiaomi.devicemanager;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;

public class DeviceManager {
    static final int AUTO = 0;
    static final int EARPIECE = 2;
    static final int HEADSET = 3;
    static final int SPEAKER = 1;
    private static final String TAG = "DeviceManager";
    private AudioManager audioManager;
    private int audioOutputDevice = 0;
    private DeviceCallback cc;
    private long devicemanagerInst = 0;
    private Context mContext;

    public enum DeviceErrorTypeT {
        DEVICE_START_CAMERA_FAILED,
        DEVICE_CAMERA_CHANGE_MODE_FAILED,
        DEVICE_SET_CAMERA_FRAMERATE_FAILED,
        DEVICE_NO_CAMERA,
        DEVICE_SETUP_CAMERA_ERROR,
        DEVICE_FAILED_GET_VOICEPRO_STATE,
        DEVICE_START_MIC_FAILED,
        DEVICE_START_SPEAKER_FAILED,
        DEVICE_UNKNOWN_ERROR
    }

    public enum VideoContentTypeT {
        KPeople,
        KScreen
    }

    private native boolean addVideoPreprocessFilterJni(long j, int i);

    private native long constructDeviceManagerJni(Context context, String str);

    private native boolean destructDeviceManagerJni();

    private native void enableMicMixMusicJni(boolean z);

    private native void enableRotationJni(boolean z);

    private native boolean enableVideoPreprocessJni(boolean z);

    private native int getCurrentVideoZoomFactorJni();

    private native int getEyeZoomRatioJni();

    private native int getFaceThinRatioJni();

    private native int getSmoothLevelJni();

    private native int getSupportedVideoZoomMaxFactorJni();

    private native float getVideoFilterIntensityJni();

    private native boolean isSupportResolutionJni(int i, int i2, int i3);

    private native boolean isUsingFrontCameraJni();

    private native boolean isVideoZoomSupportedJni();

    private native void loopbackAudioJni(boolean z);

    private native void muteMicrophoneJni(boolean z);

    private native void muteSpeakerJni(boolean z);

    private native void pauseMixMusicJni();

    private native void playEffectiveJni(String str);

    private native boolean registerObserverJni();

    private native void removeVideoPreprocessFilterJni(long j, int i);

    private native void resumeMixMusicJni();

    private native void setAudioOutputModelJni(int i);

    private native void setAudioTypeJni(int i);

    private native void setBackgroundVolumeJni(int i);

    private native boolean setCameraParamJni(int i, int i2, int i3);

    private native void setEyeZoomRatioJni(int i);

    private native void setFaceThinRatioJni(int i);

    private native void setFlashStateJni(boolean z);

    private native void setFocusPointJni(float f, float f2);

    private native void setForegroundVolumeJni(int i);

    private native void setLoopbackBackgroundVolumeJni(int i);

    private native void setOrientationJni(int i, int i2);

    private native void setSmoothLevelJni(int i);

    private native boolean setStickerPathJni(String str);

    private native void setVideoFilterIntensityJni(float f);

    private native void setVideoFilterJni(String str);

    private native boolean setVideoOutputParamJni(int i, int i2, int i3);

    private native void setVideoPreprocessParametersJni(float f, float f2);

    private native void setVideoZoomFactorJni(int i);

    private native boolean startCameraJni(boolean z);

    private native void startMicrophoneJni(boolean z);

    private native void startMixMusicJni(String str, boolean z);

    private native long startPlayBackgroundMusicJni(String str, boolean z);

    private native void startReverberationJni(int i);

    private native void startSpeakerJni(boolean z);

    private native void stopMixMusicJni();

    private native void stopPlayBackgroundMusicJni(long j);

    private native void stopReverberationJni();

    private native boolean switchCameraJni();

    private native boolean unregisterObserverJni();

    public long getInstance() {
        return this.devicemanagerInst;
    }

    private int getOutPutDevice() {
        if (this.audioManager.isSpeakerphoneOn()) {
            this.audioOutputDevice = 1;
        } else if (this.audioManager.isWiredHeadsetOn()) {
            this.audioOutputDevice = 3;
        } else {
            this.audioOutputDevice = 2;
        }
        return this.audioOutputDevice;
    }

    public boolean constructDeviceManager(Context context) {
        Log.d(TAG, "construct DeviceManager...");
        if (this.mContext != null) {
            Log.d(TAG, "construct error, please destroy the engine first");
            return false;
        }
        this.mContext = context;
        this.devicemanagerInst = constructDeviceManagerJni(context, context.getPackageName());
        return true;
    }

    public boolean destructDeviceManager() {
        Log.d(TAG, "destruct DeviceManager...");
        if (this.mContext == null) {
            Log.d(TAG, "destruct error, please destroy the engine first");
            return false;
        }
        destructDeviceManagerJni();
        this.mContext = null;
        this.devicemanagerInst = 0;
        return true;
    }

    public boolean setVideoOutputParam(int i, int i2, int i3) {
        Log.i(TAG, "setting  video output param ...");
        if (this.mContext == null) {
            Log.e(TAG, "setVideoOutputParam error, please init the engine first");
            return false;
        } else if (!setVideoOutputParamJni(i, i2, i3)) {
            Log.e(TAG, "set video output param failed");
            return false;
        } else {
            Log.i(TAG, " set video output param succeeded");
            return true;
        }
    }

    public boolean setCameraParam(int i, int i2, int i3) {
        Log.i(TAG, "setting  camera param ...");
        if (this.mContext == null) {
            Log.e(TAG, "setCameraParam error, please init the engine first");
            return false;
        } else if (!setCameraParamJni(i, i2, i3)) {
            Log.e(TAG, "set camera param failed");
            return false;
        } else {
            Log.i(TAG, " set camera param succeeded");
            return true;
        }
    }

    public boolean startCamera() {
        Log.i(TAG, "starting camera...");
        if (this.mContext == null) {
            Log.e(TAG, "startCamera error, please init the engine first");
            return false;
        } else if (!startCameraJni(true)) {
            Log.e(TAG, "start camera failed");
            return false;
        } else {
            Log.i(TAG, " start camera succeeded");
            return true;
        }
    }

    public boolean stopCamera() {
        Log.i(TAG, "stopping camera...");
        if (this.mContext == null) {
            Log.e(TAG, "stopCamera error, please init the engine first");
            return false;
        } else if (!startCameraJni(false)) {
            Log.e(TAG, "stop camera failed");
            return false;
        } else {
            Log.i(TAG, "stop camera succeeded");
            return true;
        }
    }

    public boolean switchCamera() {
        Log.i(TAG, "switching camera...");
        if (this.mContext == null) {
            Log.e(TAG, "switchCamera error, please init the engine first");
            return false;
        } else if (!switchCameraJni()) {
            Log.e(TAG, "switch camera failed");
            return false;
        } else {
            Log.i(TAG, "switch camera succeeded");
            return true;
        }
    }

    public boolean isUsingFrontCamera() {
        Log.d(TAG, "isUsingFrontCamera enter");
        return isUsingFrontCameraJni();
    }

    public boolean muteSpeaker() {
        Log.i(TAG, "starting muteSpeaker...");
        if (this.mContext == null) {
            Log.e(TAG, "muteSpeaker error, please init the engine first");
            return false;
        }
        muteSpeakerJni(true);
        Log.i(TAG, "muteSpeaker succeeded");
        return true;
    }

    public boolean unMuteSpeaker() {
        Log.i(TAG, "unMuting Speaker...");
        if (this.mContext == null) {
            Log.e(TAG, "unMuteSpeaker error, please init the engine first");
            return false;
        }
        muteSpeakerJni(false);
        Log.i(TAG, "unMute Speaker succeeded");
        return true;
    }

    public boolean muteMicrophone() {
        Log.i(TAG, "starting muteMicrophone...");
        if (this.mContext == null) {
            Log.e(TAG, "muteMicrophone error, please init the engine first");
            return false;
        }
        muteMicrophoneJni(true);
        Log.i(TAG, "muteMicrophone succeeded");
        return true;
    }

    public boolean unMuteMicrophone() {
        Log.i(TAG, "unMuting Microphone...");
        if (this.mContext == null) {
            Log.e(TAG, "unMuteMicrophone error, please init the engine first");
            return false;
        }
        muteMicrophoneJni(false);
        Log.i(TAG, "unMute Microphone succeeded");
        return true;
    }

    public void setSpeaker(boolean z) {
        Log.i(TAG, "setting speaker:" + z);
        Build.MODEL.toLowerCase();
        if (this.mContext == null) {
            Log.e(TAG, "setSpeaker error, please init the engine first");
            return;
        }
        this.audioManager = (AudioManager) this.mContext.getSystemService("audio");
        if (this.audioManager == null) {
            Log.e(TAG, "Could not change audio routing - no audio manager");
            return;
        }
        int i = VERSION.SDK_INT;
        if (3 == i || 4 == i) {
            if (z) {
            }
        } else if ((!Build.BRAND.equals("Samsung") && !Build.BRAND.equals("samsung")) || (5 != i && 6 != i && 7 != i)) {
            this.audioManager.setSpeakerphoneOn(z);
            Log.i(TAG, "set speaker 1111111 done");
        } else if (z) {
            this.audioManager.setSpeakerphoneOn(z);
        } else {
            this.audioManager.setSpeakerphoneOn(z);
        }
        getOutPutDevice();
        setAudioOutputModelJni(this.audioOutputDevice);
        Log.i(TAG, "set speaker done");
    }

    public void enableRotation(boolean z) {
        Log.i(TAG, "Eanble rotate with:" + z);
        if (this.mContext == null) {
            Log.e(TAG, "enableRotation error, please init the engine first");
            return;
        }
        enableRotationJni(z);
        Log.i(TAG, "set rotate done");
    }

    public void SetOrientation(int i, int i2) {
        Log.i(TAG, "setting orientation with deviceOrientation:" + i + " UI orientation:" + i2);
        if (this.mContext == null) {
            Log.e(TAG, "SetOrientation error, please init the engine first");
            return;
        }
        setOrientationJni(i, i2);
        Log.i(TAG, "set orientation done");
    }

    public void startAudioDevice() {
        Log.i(TAG, " startAudioDevice ");
        if (this.mContext == null) {
            Log.e(TAG, "start AudioDevice error, please init the engine first");
            return;
        }
        startSpeakerJni(true);
        startMicrophoneJni(true);
    }

    public void stopAudioDevice() {
        Log.i(TAG, " stopAudioDevice ");
        if (this.mContext == null) {
            Log.e(TAG, "stop AudioDevice error, please init the engine first");
            return;
        }
        startMicrophoneJni(false);
        startSpeakerJni(false);
    }

    public void startMixMusic(String str, boolean z) {
        Log.i(TAG, " startMixMusic ");
        if (this.mContext == null) {
            Log.e(TAG, " startMixMusic error, please init the engine first");
        } else {
            startMixMusicJni(str, z);
        }
    }

    public long startPlayBackgroundMusic(String str, boolean z) {
        Log.i(TAG, " startMixMusic ");
        if (this.mContext != null) {
            return startPlayBackgroundMusicJni(str, z);
        }
        Log.e(TAG, " startMixMusic error, please init the engine first");
        return 0;
    }

    public void stopPlayBackgroundMusic(long j) {
        Log.i(TAG, " stopPlayBackgroundMusic");
        if (this.mContext == null) {
            Log.e(TAG, " stopPlayBackgroundMusic error, please init the engine first");
        } else {
            stopPlayBackgroundMusicJni(j);
        }
    }

    public void setAudioType(int i) {
        Log.d(TAG, "setAudioType");
        setAudioTypeJni(i);
    }

    public void playEffective(String str) {
        Log.d(TAG, "playEffective");
        playEffectiveJni(str);
    }

    public void pauseMixMusic() {
        Log.d(TAG, "pauseMixMusic");
        pauseMixMusicJni();
    }

    public void resumeMixMusic() {
        Log.d(TAG, "resumeMixMusic");
        resumeMixMusicJni();
    }

    public void enableMicMixMusic(boolean z) {
        Log.d(TAG, "enableMicMixMusic");
        enableMicMixMusicJni(z);
    }

    public void setBackgroundVolume(int i) {
        Log.d(TAG, "setBackgroundVolume");
        setBackgroundVolumeJni(i);
    }

    public void setLoopbackBackgroundVolume(int i) {
        Log.d(TAG, "setBackgroundVolume");
        setLoopbackBackgroundVolumeJni(i);
    }

    public void setForegroundVolume(int i) {
        Log.d(TAG, "setForegroundVolume");
        setForegroundVolumeJni(i);
    }

    public void setVideoPreprocessParameters(float f, float f2) {
        Log.d(TAG, "setVideoPreprocessParameters");
        setVideoPreprocessParametersJni(f, f2);
    }

    public void setSmoothLevel(int i) {
        Log.d(TAG, "setSmoothLevel");
        setSmoothLevelJni(i);
    }

    public int getSmoothLevel() {
        Log.d(TAG, "getSmoothLevel");
        return getSmoothLevelJni();
    }

    public void setEyeZoomRatio(int i) {
        Log.d(TAG, "setEyeZoomRatio");
        setEyeZoomRatioJni(i);
    }

    public int getEyeZoomRatio() {
        Log.d(TAG, "getEyeZoomRatio");
        return getEyeZoomRatioJni();
    }

    public void setFaceThinRatio(int i) {
        Log.d(TAG, "setFaceThinRatio");
        setFaceThinRatioJni(i);
    }

    public int getFaceThinRatio() {
        Log.d(TAG, "getFaceThinRatio");
        return getFaceThinRatioJni();
    }

    public void setVideoFilter(String str) {
        Log.d(TAG, "setVideoFilter");
        setVideoFilterJni(str);
    }

    public void setVideoFilterIntensity(float f) {
        Log.d(TAG, "setVideoFilterIntensity");
        setVideoFilterIntensityJni(f);
    }

    public float getVideoFilterIntensity() {
        Log.d(TAG, "getVideoFilterIntensity");
        return getVideoFilterIntensityJni();
    }

    public boolean enableVideoPreprocess(boolean z) {
        Log.d(TAG, "enableVideoPreprocess");
        return enableVideoPreprocessJni(z);
    }

    public boolean isSupportResolution(int i, int i2, int i3) {
        Log.d(TAG, " isSupportResolution:" + i + "x" + i2 + ":" + i3);
        return isSupportResolutionJni(i, i2, i3);
    }

    public void setFocusPoint(float f, float f2) {
        Log.d(TAG, "setFocusPoint");
        setFocusPointJni(f, f2);
    }

    public void setVideoZoomFactor(int i) {
        Log.d(TAG, "setVideoZoomFactor");
        setVideoZoomFactorJni(i);
    }

    public boolean isVideoZoomSupported() {
        Log.d(TAG, "isVideoZoomSupported");
        return isVideoZoomSupportedJni();
    }

    public int getSupportedVideoZoomMaxFactor() {
        Log.d(TAG, "getSupportedVideoZoomMaxFactor");
        return getSupportedVideoZoomMaxFactorJni();
    }

    public int getCurrentVideoZoomFactor() {
        Log.d(TAG, "getCurrentVideoZoomFactor");
        return getCurrentVideoZoomFactorJni();
    }

    public void setFlashState(boolean z) {
        Log.d(TAG, "setFlashState");
        setFlashStateJni(z);
    }

    public void startReverberation(int i) {
        Log.d(TAG, "startReverberation");
        startReverberationJni(i);
    }

    public void stopReverberation() {
        Log.d(TAG, "stopReverberation");
        stopReverberationJni();
    }

    public void stopMixMusic() {
        Log.i(TAG, " stopMixMusic ");
        if (this.mContext == null) {
            Log.e(TAG, " stopMixMusic error, please init the engine first");
        } else {
            stopMixMusicJni();
        }
    }

    public void EnableMicMixMusic(boolean z) {
        Log.i(TAG, " EnableMicMixMusic ");
        if (this.mContext == null) {
            Log.e(TAG, " EnableMicMixMusic error, please init the engine first");
        } else {
            enableMicMixMusicJni(z);
        }
    }

    public void loopbackAudio(boolean z) {
        Log.i(TAG, " loopbackAudio ");
        if (this.mContext == null) {
            Log.e(TAG, " loopbackAudio error, please init the engine first");
        } else {
            loopbackAudioJni(z);
        }
    }

    public boolean addVideoPreprocessFilter(long j, int i) {
        Log.d(TAG, "addVideoPreprocessFilter filter:" + j + " filterType:" + i);
        return addVideoPreprocessFilterJni(j, i);
    }

    public void removeVideoPreprocessFilter(long j, int i) {
        Log.d(TAG, "removeVideoPreprocessFilter filter:" + j + " filterType:" + i);
        removeVideoPreprocessFilterJni(j, i);
    }

    public boolean setStickerPath(String str) {
        Log.d(TAG, "setStickerPath:" + str);
        return setStickerPathJni(str);
    }

    public boolean attachCallback(DeviceCallback deviceCallback) {
        Log.d(TAG, " java attachCallback");
        this.cc = deviceCallback;
        return registerObserverJni();
    }

    public boolean disattachCallback() {
        Log.d(TAG, " java attachCallback");
        boolean unregisterObserverJni = unregisterObserverJni();
        this.cc = null;
        return unregisterObserverJni;
    }

    private void onStartCamera() {
        Log.d(TAG, " java onStartCamera");
        if (this.cc != null) {
            this.cc.onStartCamera();
        }
    }

    private void onStopCamera() {
        Log.d(TAG, " java onStopCamera");
        if (this.cc != null) {
            this.cc.onStopCamera();
        }
    }

    private void OnMicStartFailed() {
        Log.d(TAG, " java OnMicStartFailed");
        if (this.cc != null) {
            this.cc.OnMicStartFailed();
        }
    }

    private void OnCameraStartFailed() {
        Log.d(TAG, " java OnCameraStartFailed");
        if (this.cc != null) {
            this.cc.OnCameraStartFailed();
        }
    }

    private void OnMixDataReady(short[] sArr, int i, int i2, int i3) {
        Log.d(TAG, " java OnMixDataReady");
        if (this.cc != null) {
            this.cc.OnMixDataReady(sArr, i, i2, i3);
        }
    }
}

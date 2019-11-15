package com.xiaomi.devicemanager;

public interface DeviceCallback {
    void OnCameraStartFailed();

    void OnMicStartFailed();

    void OnMixDataReady(short[] sArr, int i, int i2, int i3);

    void onStartCamera();

    void onStopCamera();
}

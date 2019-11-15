package com.autonavi.ae.gmap.callback;

public interface JniMapCoreCallback {
    void OnMapAnimationFinished(int i, int i2);

    byte[] OnMapLoadResourceByName(int i, String str);

    void OnMapResourceReLoad(int i, String str, int i2);

    void OnMapResourceRequired(int i, String str, int i2);

    byte[] onCharBitmapRequired(int i, int i2);

    void onClearCache(int i);

    void onLoadTextureByName(int i, String str, int i2);

    byte[] onMapCharsWidthsRequired(int i, int[] iArr, int i2, int i3);

    void onMapDataRequired(int i, int i2, String[] strArr);

    void onMapProcessEvent(int i);

    void onMapSufaceChanged(int i, int i2, int i3);

    void onMapSurfaceRenderer(int i, int i2);

    void onOfflineMap(int i, String str, int i2);

    void onOpenLayerDataRequired(int i, String str, int i2, int i3, int i4, String[] strArr);

    void onRoadTips(int i, byte[] bArr);

    void onTransferParam(int i, int[] iArr);
}

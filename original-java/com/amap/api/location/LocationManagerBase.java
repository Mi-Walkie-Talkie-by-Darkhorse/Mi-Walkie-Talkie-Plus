package com.amap.api.location;

import android.app.Notification;
import android.webkit.WebView;

public interface LocationManagerBase {
    void disableBackgroundLocation(boolean z);

    void enableBackgroundLocation(int i, Notification notification);

    AMapLocation getLastKnownLocation();

    boolean isStarted();

    void onDestroy();

    void setLocationListener(AMapLocationListener aMapLocationListener);

    void setLocationOption(AMapLocationClientOption aMapLocationClientOption);

    void startAssistantLocation();

    void startAssistantLocation(WebView webView);

    void startLocation();

    void stopAssistantLocation();

    void stopLocation();

    void unRegisterLocationListener(AMapLocationListener aMapLocationListener);
}

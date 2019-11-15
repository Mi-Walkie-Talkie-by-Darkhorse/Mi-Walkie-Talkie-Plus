package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;

public interface IUiSettings {
    float getLogoMarginRate(int i) throws RemoteException;

    int getLogoPosition() throws RemoteException;

    int getZoomPosition() throws RemoteException;

    boolean isCompassEnabled() throws RemoteException;

    boolean isGestureScaleByMapCenter() throws RemoteException;

    boolean isIndoorSwitchEnabled() throws RemoteException;

    boolean isLogoEnable();

    boolean isMyLocationButtonEnabled() throws RemoteException;

    boolean isRotateGesturesEnabled() throws RemoteException;

    boolean isScaleControlsEnabled() throws RemoteException;

    boolean isScrollGesturesEnabled() throws RemoteException;

    boolean isTiltGesturesEnabled() throws RemoteException;

    boolean isZoomControlsEnabled() throws RemoteException;

    boolean isZoomGesturesEnabled() throws RemoteException;

    boolean isZoomInByScreenCenter() throws RemoteException;

    void setAllGesturesEnabled(boolean z) throws RemoteException;

    void setCompassEnabled(boolean z) throws RemoteException;

    void setGestureScaleByMapCenter(boolean z) throws RemoteException;

    void setIndoorSwitchEnabled(boolean z) throws RemoteException;

    void setLogoBottomMargin(int i) throws RemoteException;

    void setLogoEnable(boolean z);

    void setLogoLeftMargin(int i) throws RemoteException;

    void setLogoMarginRate(int i, float f) throws RemoteException;

    void setLogoPosition(int i) throws RemoteException;

    void setMyLocationButtonEnabled(boolean z) throws RemoteException;

    void setRotateGesturesEnabled(boolean z) throws RemoteException;

    void setScaleControlsEnabled(boolean z) throws RemoteException;

    void setScrollGesturesEnabled(boolean z) throws RemoteException;

    void setTiltGesturesEnabled(boolean z) throws RemoteException;

    void setZoomControlsEnabled(boolean z) throws RemoteException;

    void setZoomGesturesEnabled(boolean z) throws RemoteException;

    void setZoomInByScreenCenter(boolean z) throws RemoteException;

    void setZoomPosition(int i) throws RemoteException;
}

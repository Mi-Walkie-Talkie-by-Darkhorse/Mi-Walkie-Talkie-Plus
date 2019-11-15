package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;

public interface IArc extends IOverlay {
    int getStrokeColor() throws RemoteException;

    float getStrokeWidth() throws RemoteException;

    void setStrokeColor(int i) throws RemoteException;

    void setStrokeWidth(float f) throws RemoteException;
}

package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;

public interface IOverlay {
    void destroy();

    boolean equalsRemote(IOverlay iOverlay) throws RemoteException;

    String getId() throws RemoteException;

    float getZIndex() throws RemoteException;

    int hashCodeRemote() throws RemoteException;

    boolean isAboveMaskLayer();

    boolean isVisible() throws RemoteException;

    void remove() throws RemoteException;

    void setAboveMaskLayer(boolean z);

    void setVisible(boolean z) throws RemoteException;

    void setZIndex(float f) throws RemoteException;
}

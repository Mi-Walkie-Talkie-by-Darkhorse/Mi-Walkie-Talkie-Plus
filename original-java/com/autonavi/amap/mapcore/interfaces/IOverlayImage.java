package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;
import com.amap.api.maps.model.LatLng;

public interface IOverlayImage {
    void destroy(boolean z);

    boolean equalsRemote(IOverlayImage iOverlayImage) throws RemoteException;

    float getAnchorU();

    float getAnchorV();

    String getId() throws RemoteException;

    Object getObject();

    LatLng getPosition() throws RemoteException;

    float getRotateAngle();

    float getZIndex();

    int hashCodeRemote();

    boolean isVisible() throws RemoteException;

    boolean remove() throws RemoteException;

    void setAnchor(float f, float f2) throws RemoteException;

    void setObject(Object obj);

    void setPosition(LatLng latLng) throws RemoteException;

    void setRotateAngle(float f) throws RemoteException;

    void setVisible(boolean z) throws RemoteException;

    void setZIndex(float f);
}

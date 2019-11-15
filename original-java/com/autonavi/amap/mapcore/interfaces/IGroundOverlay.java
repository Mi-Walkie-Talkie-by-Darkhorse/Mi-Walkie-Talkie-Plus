package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;

public interface IGroundOverlay extends IOverlay {
    float getBearing() throws RemoteException;

    LatLngBounds getBounds() throws RemoteException;

    float getHeight() throws RemoteException;

    LatLng getPosition() throws RemoteException;

    float getTransparency() throws RemoteException;

    float getWidth() throws RemoteException;

    void setBearing(float f) throws RemoteException;

    void setDimensions(float f) throws RemoteException;

    void setDimensions(float f, float f2) throws RemoteException;

    void setImage(BitmapDescriptor bitmapDescriptor) throws RemoteException;

    void setPosition(LatLng latLng) throws RemoteException;

    void setPositionFromBounds(LatLngBounds latLngBounds) throws RemoteException;

    void setTransparency(float f) throws RemoteException;
}

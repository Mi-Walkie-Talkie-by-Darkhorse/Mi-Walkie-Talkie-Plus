package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;
import com.amap.api.maps.model.BaseHoleOptions;
import com.amap.api.maps.model.LatLng;
import java.util.List;

public interface ICircle extends IOverlay {
    boolean contains(LatLng latLng) throws RemoteException;

    LatLng getCenter() throws RemoteException;

    int getFillColor() throws RemoteException;

    List<BaseHoleOptions> getHoleOptions() throws RemoteException;

    double getRadius() throws RemoteException;

    int getStrokeColor() throws RemoteException;

    float getStrokeWidth() throws RemoteException;

    void setCenter(LatLng latLng) throws RemoteException;

    void setFillColor(int i) throws RemoteException;

    void setHoleOptions(List<BaseHoleOptions> list) throws RemoteException;

    void setRadius(double d) throws RemoteException;

    void setStrokeColor(int i) throws RemoteException;

    void setStrokeWidth(float f) throws RemoteException;
}

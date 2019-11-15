package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;
import com.amap.api.maps.model.BaseHoleOptions;
import com.amap.api.maps.model.LatLng;
import java.util.List;

public interface IPolygon extends IOverlay {
    boolean contains(LatLng latLng) throws RemoteException;

    int getFillColor() throws RemoteException;

    List<BaseHoleOptions> getHoleOptions() throws RemoteException;

    List<LatLng> getPoints() throws RemoteException;

    int getStrokeColor() throws RemoteException;

    float getStrokeWidth() throws RemoteException;

    void setFillColor(int i) throws RemoteException;

    void setHoleOptions(List<BaseHoleOptions> list) throws RemoteException;

    void setPoints(List<LatLng> list) throws RemoteException;

    void setStrokeColor(int i) throws RemoteException;

    void setStrokeWidth(float f) throws RemoteException;
}

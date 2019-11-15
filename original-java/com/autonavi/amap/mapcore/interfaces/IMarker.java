package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;
import com.amap.api.maps.model.BitmapDescriptor;
import com.amap.api.maps.model.animation.Animation;
import com.amap.api.maps.model.animation.Animation.AnimationListener;
import com.autonavi.amap.mapcore.IPoint;
import java.util.ArrayList;

public interface IMarker extends IOverlayImage {
    IPoint getGeoPoint();

    IMarkerAction getIMarkerAction();

    ArrayList<BitmapDescriptor> getIcons() throws RemoteException;

    int getPeriod() throws RemoteException;

    String getSnippet() throws RemoteException;

    String getTitle() throws RemoteException;

    void hideInfoWindow() throws RemoteException;

    boolean isDraggable();

    boolean isFlat();

    boolean isInfoWindowShown();

    boolean isPerspective() throws RemoteException;

    boolean isRemoved();

    void set2Top() throws RemoteException;

    void setAnimation(Animation animation);

    void setAnimationListener(AnimationListener animationListener);

    void setBelowMaskLayer(boolean z);

    void setDraggable(boolean z) throws RemoteException;

    void setFlat(boolean z) throws RemoteException;

    void setGeoPoint(IPoint iPoint);

    void setIcon(BitmapDescriptor bitmapDescriptor) throws RemoteException;

    void setIcons(ArrayList<BitmapDescriptor> arrayList) throws RemoteException;

    void setPeriod(int i) throws RemoteException;

    void setPerspective(boolean z) throws RemoteException;

    void setPositionByPixels(int i, int i2);

    void setSnippet(String str) throws RemoteException;

    void setTitle(String str) throws RemoteException;

    void showInfoWindow() throws RemoteException;

    boolean startAnimation();
}

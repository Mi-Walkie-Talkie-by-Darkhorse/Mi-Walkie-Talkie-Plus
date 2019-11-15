package com.autonavi.amap.mapcore.interfaces;

import android.os.RemoteException;
import com.amap.api.maps.model.MultiPointItem;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.MapConfig;
import java.util.List;

public interface IMultiPointOverlay {
    void addItem(MultiPointItem multiPointItem);

    void addItems(List<MultiPointItem> list);

    void destroy(boolean z);

    void draw(MapConfig mapConfig, float[] fArr, float[] fArr2);

    String getId() throws RemoteException;

    MultiPointItem onClick(IPoint iPoint);

    void remove(boolean z);

    void setAnchor(float f, float f2);

    void setVisible(boolean z);
}

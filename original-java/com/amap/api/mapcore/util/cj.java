package com.amap.api.mapcore.util;

import android.graphics.Rect;
import com.autonavi.amap.mapcore.interfaces.IMarkerAction;
import com.autonavi.amap.mapcore.interfaces.IOverlayImage;

/* compiled from: IOverlayImageDelegate */
public interface cj extends IOverlayImage {
    void a(l lVar);

    void a(l lVar, float[] fArr, int i, float f);

    void b(boolean z);

    IMarkerAction getIMarkerAction();

    Rect h();

    boolean i();

    boolean isInfoWindowShown();

    boolean j();

    int k();

    boolean l();
}

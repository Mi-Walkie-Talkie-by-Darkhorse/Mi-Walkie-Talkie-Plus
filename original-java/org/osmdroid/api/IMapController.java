package org.osmdroid.api;

public interface IMapController {
    void animateTo(IGeoPoint iGeoPoint);

    void scrollBy(int i, int i2);

    void setCenter(IGeoPoint iGeoPoint);

    int setZoom(int i);

    void stopAnimation(boolean z);

    void stopPanning();

    boolean zoomIn();

    boolean zoomInFixing(int i, int i2);

    boolean zoomOut();

    boolean zoomOutFixing(int i, int i2);

    boolean zoomTo(int i);

    boolean zoomToFixing(int i, int i2, int i3);

    void zoomToSpan(double d, double d2);

    @Deprecated
    void zoomToSpan(int i, int i2);
}

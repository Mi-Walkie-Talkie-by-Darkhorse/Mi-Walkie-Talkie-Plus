package org.osmdroid.views.overlay.compass;

public interface IOrientationProvider {
    void destroy();

    float getLastKnownOrientation();

    boolean startOrientationProvider(IOrientationConsumer iOrientationConsumer);

    void stopOrientationProvider();
}

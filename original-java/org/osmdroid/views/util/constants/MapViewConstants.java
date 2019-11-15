package org.osmdroid.views.util.constants;

import org.osmdroid.config.Configuration;

public interface MapViewConstants {
    public static final int ANIMATION_DURATION_DEFAULT = 1000;
    public static final int ANIMATION_DURATION_LONG = 2000;
    public static final int ANIMATION_DURATION_SHORT = 500;
    public static final int ANIMATION_SMOOTHNESS_DEFAULT = 10;
    public static final int ANIMATION_SMOOTHNESS_HIGH = 20;
    public static final int ANIMATION_SMOOTHNESS_LOW = 4;
    @Deprecated
    public static final boolean DEBUGMODE = Configuration.getInstance().isDebugMapView();
    public static final int MAXIMUM_ZOOMLEVEL = 23;
    public static final int MINIMUM_ZOOMLEVEL = 0;
    public static final int NOT_SET = Integer.MIN_VALUE;
}

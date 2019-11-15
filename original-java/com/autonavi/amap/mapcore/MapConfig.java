package com.autonavi.amap.mapcore;

import com.amap.api.maps.model.LatLngBounds;

public class MapConfig implements Cloneable {
    public static final int DEFAULT_RATIO = 1;
    private static final int GEO_POINT_ZOOM = 20;
    public static final float MAX_ZOOM = 19.0f;
    public static final float MAX_ZOOM_INDOOR = 20.0f;
    public static final float MIN_ZOOM = 3.0f;
    public static final int MSG_ACTION_ONBASEPOICLICK = 20;
    public static final int MSG_ACTION_ONMAPCLICK = 19;
    public static final int MSG_AUTH_FAILURE = 2;
    public static final int MSG_CALLBACK_MAPLOADED = 16;
    public static final int MSG_CALLBACK_ONTOUCHEVENT = 14;
    public static final int MSG_CALLBACK_SCREENSHOT = 15;
    public static final int MSG_CAMERAUPDATE_CHANGE = 10;
    public static final int MSG_CAMERAUPDATE_FINISH = 11;
    public static final int MSG_COMPASSVIEW_CHANGESTATE = 13;
    public static final int MSG_INFOWINDOW_UPDATE = 18;
    public static final int MSG_TILEOVERLAY_REFRESH = 17;
    public static final int MSG_ZOOMVIEW_CHANGESTATE = 12;
    private static final int TILE_SIZE_POW = 8;
    private int anchorX = 0;
    private int anchorY = 0;
    private volatile double changeGridRatio = 1.0d;
    private volatile double changeRatio = 1.0d;
    private volatile int changedCounter = 0;
    private int customBackgroundColor = -1;
    private String customTextureResourcePath;
    private Rectangle geoRectangle = new Rectangle();
    private int grid_x = 0;
    private int grid_y = 0;
    private boolean isBearingChanged = false;
    private boolean isBuildingEnable = true;
    private boolean isCenterChanged = false;
    private boolean isCustomStyleEnabled = false;
    private boolean isHideLogoEnable = true;
    private boolean isIndoorEnable = false;
    private boolean isMapTextEnable = true;
    private boolean isNeedUpdateMapRectNextFrame = false;
    private boolean isNeedUpdateZoomControllerState = false;
    private boolean isSetLimitZoomLevel;
    private boolean isTiltChanged = false;
    private boolean isTrafficEnabled = false;
    private boolean isWorldMapEnable = false;
    private boolean isZoomChanged = false;
    MapConfig last_mapconfig = null;
    private IPoint[] limitIPoints;
    private LatLngBounds limitLatLngBounds;
    private String mCustomStyleID;
    private String mCustomStylePath;
    private String mMapLanguage = "zh_cn";
    private int mMapStyleMode = 0;
    private int mMapStyleState = 0;
    private int mMapStyleTime = 0;
    private int mapHeight;
    private float mapPerPixelUnitLength;
    private FPoint[] mapRect = null;
    private int mapWidth;
    private float mapZoomScale = 1.0f;
    public float maxZoomLevel = 19.0f;
    public float minZoomLevel = 3.0f;
    private float s_c = 0.0f;
    private float s_r = 0.0f;
    private int s_x = 221010267;
    private int s_y = 101697799;
    private float s_z = 10.0f;

    public int getAnchorY() {
        return this.anchorY;
    }

    public void setAnchorY(int i) {
        this.anchorY = i;
    }

    public int getAnchorX() {
        return this.anchorX;
    }

    public void setAnchorX(int i) {
        this.anchorX = i;
    }

    public MapConfig(boolean z) {
        if (z) {
            this.last_mapconfig = new MapConfig(false);
            this.last_mapconfig.setGridXY(0, 0);
            this.last_mapconfig.setS_x(0);
            this.last_mapconfig.setS_y(0);
            this.last_mapconfig.setS_z(0.0f);
            this.last_mapconfig.setS_c(0.0f);
            this.last_mapconfig.setS_r(0.0f);
        }
    }

    public int getChangedCounter() {
        return this.changedCounter;
    }

    public void resetChangedCounter() {
        this.changedCounter = 0;
    }

    public boolean isMapStateChange() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (this.last_mapconfig == null) {
            return false;
        }
        int s_x2 = this.last_mapconfig.getS_x();
        int s_y2 = this.last_mapconfig.getS_y();
        float s_z2 = this.last_mapconfig.getS_z();
        float s_c2 = this.last_mapconfig.getS_c();
        float s_r2 = this.last_mapconfig.getS_r();
        this.isCenterChanged = s_x2 != this.s_x;
        this.isCenterChanged = s_y2 != this.s_y ? true : this.isCenterChanged;
        if (s_z2 != this.s_z) {
            z = true;
        } else {
            z = false;
        }
        this.isZoomChanged = z;
        if (this.isZoomChanged) {
            if (s_z2 <= this.minZoomLevel || this.s_z <= this.minZoomLevel || s_z2 >= this.maxZoomLevel || this.s_z >= this.maxZoomLevel) {
                this.isNeedUpdateZoomControllerState = true;
            } else {
                this.isNeedUpdateZoomControllerState = false;
            }
        }
        if (s_c2 != this.s_c) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.isTiltChanged = z2;
        if (s_r2 != this.s_r) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.isBearingChanged = z3;
        if (this.isCenterChanged || this.isZoomChanged || this.isTiltChanged || this.isBearingChanged || this.isNeedUpdateMapRectNextFrame) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z4) {
            this.isNeedUpdateMapRectNextFrame = false;
            this.changedCounter++;
            int i = (int) this.s_z;
            setGridXY(this.s_x >> ((20 - i) + 8), this.s_y >> ((20 - i) + 8));
            changeRatio();
        }
        return z4;
    }

    /* access modifiers changed from: protected */
    public void setGridXY(int i, int i2) {
        if (this.last_mapconfig != null) {
            this.last_mapconfig.setGridXY(this.grid_x, this.grid_y);
        }
        this.grid_x = i;
        this.grid_y = i2;
    }

    /* access modifiers changed from: protected */
    public int getGrid_X() {
        return this.grid_x;
    }

    /* access modifiers changed from: protected */
    public int getGrid_Y() {
        return this.grid_y;
    }

    public double getChangeRatio() {
        return this.changeRatio;
    }

    public double getChangeGridRatio() {
        return this.changeGridRatio;
    }

    private void changeRatio() {
        float f = 1.0f;
        double d = 1.0d;
        int s_x2 = this.last_mapconfig.getS_x();
        int s_y2 = this.last_mapconfig.getS_y();
        float s_z2 = this.last_mapconfig.getS_z();
        float s_c2 = this.last_mapconfig.getS_c();
        float s_r2 = this.last_mapconfig.getS_r();
        this.changeRatio = (double) (Math.abs(this.s_x - s_x2) + Math.abs(this.s_y - s_y2));
        this.changeRatio = this.changeRatio == 0.0d ? 1.0d : this.changeRatio * 2.0d;
        this.changeRatio = (s_z2 == this.s_z ? 1.0d : (double) Math.abs(s_z2 - this.s_z)) * this.changeRatio;
        float abs = s_c2 == this.s_c ? 1.0f : Math.abs(s_c2 - this.s_c);
        if (s_r2 != this.s_r) {
            f = Math.abs(s_r2 - this.s_r);
        }
        this.changeRatio *= (double) abs;
        this.changeRatio *= (double) f;
        this.changeGridRatio = (double) (Math.abs(this.last_mapconfig.getGrid_X() - this.grid_x) + (this.last_mapconfig.getGrid_Y() - this.grid_y));
        if (this.changeGridRatio != 0.0d) {
            d = this.changeGridRatio * 2.0d;
        }
        this.changeGridRatio = d;
        this.changeGridRatio = ((double) abs) * this.changeGridRatio;
        this.changeGridRatio *= (double) f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" s_x: ");
        sb.append(this.s_x);
        sb.append(" s_y: ");
        sb.append(this.s_y);
        sb.append(" s_z: ");
        sb.append(this.s_z);
        sb.append(" s_c: ");
        sb.append(this.s_c);
        sb.append(" s_r: ");
        sb.append(this.s_r);
        return sb.toString();
    }

    public boolean isZoomChanged() {
        return this.isZoomChanged;
    }

    public boolean isTiltChanged() {
        return this.isTiltChanged;
    }

    public boolean isBearingChanged() {
        return this.isBearingChanged;
    }

    public boolean isIndoorEnable() {
        return this.isIndoorEnable;
    }

    public void setIndoorEnable(boolean z) {
        this.isIndoorEnable = z;
    }

    public boolean isBuildingEnable() {
        return this.isBuildingEnable;
    }

    public void setBuildingEnable(boolean z) {
        this.isBuildingEnable = z;
    }

    public boolean isMapTextEnable() {
        return this.isMapTextEnable;
    }

    public void setMapTextEnable(boolean z) {
        this.isMapTextEnable = z;
    }

    public boolean isTrafficEnabled() {
        return this.isTrafficEnabled;
    }

    public void setTrafficEnabled(boolean z) {
        this.isTrafficEnabled = z;
    }

    public boolean isNeedUpdateZoomControllerState() {
        return this.isNeedUpdateZoomControllerState;
    }

    public int getS_x() {
        return this.s_x;
    }

    public void setS_x(int i) {
        if (this.last_mapconfig != null) {
            this.last_mapconfig.setS_x(this.s_x);
        }
        this.s_x = i;
    }

    public int getS_y() {
        return this.s_y;
    }

    public void setS_y(int i) {
        if (this.last_mapconfig != null) {
            this.last_mapconfig.setS_y(this.s_y);
        }
        this.s_y = i;
    }

    public float getS_z() {
        return this.s_z;
    }

    public void setS_z(float f) {
        if (this.last_mapconfig != null) {
            this.last_mapconfig.setS_z(this.s_z);
        }
        this.s_z = f;
    }

    public float getS_c() {
        return this.s_c;
    }

    public void setS_c(float f) {
        if (this.last_mapconfig != null) {
            this.last_mapconfig.setS_c(this.s_c);
        }
        this.s_c = f;
    }

    public float getS_r() {
        return this.s_r;
    }

    public void setS_r(float f) {
        if (this.last_mapconfig != null) {
            this.last_mapconfig.setS_r(this.s_r);
        }
        this.s_r = f;
    }

    public FPoint[] getMapRect() {
        return this.mapRect;
    }

    public void setMapRect(FPoint[] fPointArr) {
        if (this.last_mapconfig != null) {
            this.last_mapconfig.setMapRect(fPointArr);
        }
        this.mapRect = fPointArr;
    }

    public Rectangle getGeoRectangle() {
        return this.geoRectangle;
    }

    public void setMaxZoomLevel(float f) {
        float f2 = 19.0f;
        float f3 = 3.0f;
        if (f <= 19.0f) {
            f2 = f;
        }
        if (f2 >= 3.0f) {
            f3 = f2;
        }
        if (f3 < getMinZoomLevel()) {
            f3 = getMinZoomLevel();
        }
        this.isSetLimitZoomLevel = true;
        this.maxZoomLevel = f3;
    }

    public void setMinZoomLevel(float f) {
        float f2 = 19.0f;
        float f3 = 3.0f;
        if (f >= 3.0f) {
            f3 = f;
        }
        if (f3 <= 19.0f) {
            f2 = f3;
        }
        if (f2 > getMaxZoomLevel()) {
            f2 = getMaxZoomLevel();
        }
        this.isSetLimitZoomLevel = true;
        this.minZoomLevel = f2;
    }

    public float getMaxZoomLevel() {
        return this.maxZoomLevel;
    }

    public float getMinZoomLevel() {
        return this.minZoomLevel;
    }

    public IPoint[] getLimitIPoints() {
        return this.limitIPoints;
    }

    public void setLimitIPoints(IPoint[] iPointArr) {
        this.limitIPoints = iPointArr;
    }

    public boolean isSetLimitZoomLevel() {
        return this.isSetLimitZoomLevel;
    }

    public LatLngBounds getLimitLatLngBounds() {
        return this.limitLatLngBounds;
    }

    public void setLimitLatLngBounds(LatLngBounds latLngBounds) {
        this.limitLatLngBounds = latLngBounds;
        if (latLngBounds == null) {
            resetMinMaxZoomPreference();
        }
    }

    public void resetMinMaxZoomPreference() {
        this.minZoomLevel = 3.0f;
        this.maxZoomLevel = 19.0f;
        this.isSetLimitZoomLevel = false;
    }

    public void updateMapRectNextFrame(boolean z) {
        this.isNeedUpdateMapRectNextFrame = z;
    }

    public void setMapPerPixelUnitLength(float f) {
        this.mapPerPixelUnitLength = f;
    }

    public float getMapPerPixelUnitLength() {
        return this.mapPerPixelUnitLength;
    }

    public void setCustomStylePath(String str) {
        this.mCustomStylePath = str;
    }

    public String getCustomStylePath() {
        return this.mCustomStylePath;
    }

    public String getCustomStyleID() {
        return this.mCustomStyleID;
    }

    public void setCustomStyleID(String str) {
        this.mCustomStyleID = str;
    }

    public void setCustomStyleEnable(boolean z) {
        this.isCustomStyleEnabled = z;
    }

    public boolean isCustomStyleEnable() {
        return this.isCustomStyleEnabled;
    }

    public int getMapStyleTime() {
        return this.mMapStyleTime;
    }

    public void setMapStyleTime(int i) {
        this.mMapStyleTime = i;
    }

    public int getMapStyleMode() {
        return this.mMapStyleMode;
    }

    public void setMapStyleMode(int i) {
        this.mMapStyleMode = i;
    }

    public int getMapStyleState() {
        return this.mMapStyleState;
    }

    public void setMapStyleState(int i) {
        this.mMapStyleState = i;
    }

    public void setCustomTextureResourcePath(String str) {
        this.customTextureResourcePath = str;
    }

    public String getCustomTextureResourcePath() {
        return this.customTextureResourcePath;
    }

    public void setCustomBackgroundColor(int i) {
        this.customBackgroundColor = i;
    }

    public int getCustomBackgroundColor() {
        return this.customBackgroundColor;
    }

    public void setMapZoomScale(float f) {
        this.mapZoomScale = f;
    }

    public float getMapZoomScale() {
        return this.mapZoomScale;
    }

    public void setMapWidth(int i) {
        this.mapWidth = i;
    }

    public int getMapWidth() {
        return this.mapWidth;
    }

    public void setMapHeight(int i) {
        this.mapHeight = i;
    }

    public int getMapHeight() {
        return this.mapHeight;
    }

    public void setMapLanguage(String str) {
        this.mMapLanguage = str;
    }

    public String getMapLanguage() {
        return this.mMapLanguage;
    }

    public void setHideLogoEnble(boolean z) {
        this.isHideLogoEnable = z;
    }

    public boolean isHideLogoEnable() {
        return this.isHideLogoEnable;
    }

    public void setWorldMapEnable(boolean z) {
        this.isWorldMapEnable = z;
    }

    public boolean isWorldMapEnable() {
        return this.isWorldMapEnable;
    }
}

package com.amap.api.maps;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import com.amap.api.maps.model.AMapGestureListener;
import com.amap.api.maps.model.Arc;
import com.amap.api.maps.model.ArcOptions;
import com.amap.api.maps.model.CameraPosition;
import com.amap.api.maps.model.Circle;
import com.amap.api.maps.model.CircleOptions;
import com.amap.api.maps.model.CrossOverlay;
import com.amap.api.maps.model.CrossOverlayOptions;
import com.amap.api.maps.model.GroundOverlay;
import com.amap.api.maps.model.GroundOverlayOptions;
import com.amap.api.maps.model.IndoorBuildingInfo;
import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.LatLngBounds;
import com.amap.api.maps.model.Marker;
import com.amap.api.maps.model.MarkerOptions;
import com.amap.api.maps.model.MultiPointItem;
import com.amap.api.maps.model.MultiPointOverlay;
import com.amap.api.maps.model.MultiPointOverlayOptions;
import com.amap.api.maps.model.MyLocationStyle;
import com.amap.api.maps.model.MyTrafficStyle;
import com.amap.api.maps.model.NavigateArrow;
import com.amap.api.maps.model.NavigateArrowOptions;
import com.amap.api.maps.model.Poi;
import com.amap.api.maps.model.Polygon;
import com.amap.api.maps.model.PolygonOptions;
import com.amap.api.maps.model.Polyline;
import com.amap.api.maps.model.PolylineOptions;
import com.amap.api.maps.model.RouteOverlay;
import com.amap.api.maps.model.Text;
import com.amap.api.maps.model.TextOptions;
import com.amap.api.maps.model.TileOverlay;
import com.amap.api.maps.model.TileOverlayOptions;
import com.autonavi.amap.mapcore.IPoint;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.List;

public final class AMap {
    public static final String CHINESE = "zh_cn";
    public static final String ENGLISH = "en";
    public static final int LOCATION_TYPE_LOCATE = 1;
    public static final int LOCATION_TYPE_MAP_FOLLOW = 2;
    public static final int LOCATION_TYPE_MAP_ROTATE = 3;
    public static final int MAP_TYPE_BUS = 5;
    public static final int MAP_TYPE_NAVI = 4;
    public static final int MAP_TYPE_NIGHT = 3;
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    public static final int MASK_LAYER_NONE = -1;
    public static final int MASK_LAYER_UNDER_LINE = 1;
    public static final int MASK_LAYER_UNDER_MARKER = 0;
    private final IAMap a;
    private UiSettings b;
    private Projection c;
    private MyTrafficStyle d;

    public interface CancelableCallback {
        void onCancel();

        void onFinish();
    }

    public interface ImageInfoWindowAdapter extends InfoWindowAdapter {
        long getInfoWindowUpdateTime();
    }

    public interface InfoWindowAdapter {
        View getInfoContents(Marker marker);

        View getInfoWindow(Marker marker);
    }

    public interface MultiPositionInfoWindowAdapter extends InfoWindowAdapter {
        View getInfoWindowClick(Marker marker);

        View getOverturnInfoWindow(Marker marker);

        View getOverturnInfoWindowClick(Marker marker);
    }

    public interface OnCacheRemoveListener {
        void onRemoveCacheFinish(boolean z);
    }

    public interface OnCameraChangeListener {
        void onCameraChange(CameraPosition cameraPosition);

        void onCameraChangeFinish(CameraPosition cameraPosition);
    }

    public interface OnIndoorBuildingActiveListener {
        void OnIndoorBuilding(IndoorBuildingInfo indoorBuildingInfo);
    }

    public interface OnInfoWindowClickListener {
        void onInfoWindowClick(Marker marker);
    }

    public interface OnMapClickListener {
        void onMapClick(LatLng latLng);
    }

    public interface OnMapLoadedListener {
        void onMapLoaded();
    }

    public interface OnMapLongClickListener {
        void onMapLongClick(LatLng latLng);
    }

    public interface OnMapScreenShotListener {
        void onMapScreenShot(Bitmap bitmap);

        void onMapScreenShot(Bitmap bitmap, int i);
    }

    public interface OnMapTouchListener {
        void onTouch(MotionEvent motionEvent);
    }

    public interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker);
    }

    public interface OnMarkerDragListener {
        void onMarkerDrag(Marker marker);

        void onMarkerDragEnd(Marker marker);

        void onMarkerDragStart(Marker marker);
    }

    public interface OnMultiPointClickListener {
        boolean onPointClick(MultiPointItem multiPointItem);
    }

    public interface OnMyLocationChangeListener {
        void onMyLocationChange(Location location);
    }

    public interface OnPOIClickListener {
        void onPOIClick(Poi poi);
    }

    public interface OnPolylineClickListener {
        void onPolylineClick(Polyline polyline);
    }

    public interface onMapPrintScreenListener {
        void onMapPrint(Drawable drawable);
    }

    protected AMap(IAMap iAMap) {
        this.a = iAMap;
    }

    public final CameraPosition getCameraPosition() {
        try {
            return this.a.getCameraPosition();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final float getMaxZoomLevel() {
        return this.a.getMaxZoomLevel();
    }

    public final float getMinZoomLevel() {
        return this.a.getMinZoomLevel();
    }

    public final void moveCamera(CameraUpdate cameraUpdate) {
        try {
            this.a.moveCamera(cameraUpdate);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate) {
        try {
            this.a.animateCamera(cameraUpdate);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        try {
            this.a.animateCameraWithCallback(cameraUpdate, cancelableCallback);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, long j, CancelableCallback cancelableCallback) {
        if (j <= 0) {
            try {
                Log.w("AMap", "durationMs must be positive");
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return;
            }
        }
        this.a.animateCameraWithDurationAndCallback(cameraUpdate, j, cancelableCallback);
    }

    public final void stopAnimation() {
        try {
            this.a.stopAnimation();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final NavigateArrow addNavigateArrow(NavigateArrowOptions navigateArrowOptions) {
        try {
            return this.a.addNavigateArrow(navigateArrowOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final Polyline addPolyline(PolylineOptions polylineOptions) {
        try {
            return this.a.addPolyline(polylineOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final Circle addCircle(CircleOptions circleOptions) {
        try {
            return this.a.addCircle(circleOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final Arc addArc(ArcOptions arcOptions) {
        try {
            return this.a.addArc(arcOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final Polygon addPolygon(PolygonOptions polygonOptions) {
        try {
            return this.a.addPolygon(polygonOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final GroundOverlay addGroundOverlay(GroundOverlayOptions groundOverlayOptions) {
        try {
            return this.a.addGroundOverlay(groundOverlayOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final Marker addMarker(MarkerOptions markerOptions) {
        try {
            return this.a.addMarker(markerOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final Text addText(TextOptions textOptions) {
        try {
            return this.a.addText(textOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final ArrayList<Marker> addMarkers(ArrayList<MarkerOptions> arrayList, boolean z) {
        try {
            return this.a.addMarkers(arrayList, z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final List<Marker> getMapScreenMarkers() {
        try {
            return this.a.getMapScreenMarkers();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final TileOverlay addTileOverlay(TileOverlayOptions tileOverlayOptions) {
        try {
            return this.a.addTileOverlay(tileOverlayOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public MultiPointOverlay addMultiPointOverlay(MultiPointOverlayOptions multiPointOverlayOptions) {
        try {
            return this.a.addMultiPointOverlay(multiPointOverlayOptions);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final void clear() {
        try {
            this.a.clear();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void clear(boolean z) {
        try {
            this.a.clear(z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final int getMapType() {
        try {
            return this.a.getMapType();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 1;
        }
    }

    public final void setMapType(int i) {
        try {
            this.a.setMapType(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final boolean isTrafficEnabled() {
        try {
            return this.a.isTrafficEnabled();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public void setTrafficEnabled(boolean z) {
        try {
            this.a.setTrafficEnabled(z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void showMapText(boolean z) {
        try {
            this.a.setMapTextEnable(z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void showIndoorMap(boolean z) {
        try {
            this.a.setIndoorEnabled(z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void showBuildings(boolean z) {
        try {
            this.a.set3DBuildingEnabled(z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setMyTrafficStyle(MyTrafficStyle myTrafficStyle) {
        try {
            this.d = myTrafficStyle;
            this.a.setMyTrafficStyle(myTrafficStyle);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public MyTrafficStyle getMyTrafficStyle() {
        return this.d;
    }

    public final boolean isMyLocationEnabled() {
        try {
            return this.a.isMyLocationEnabled();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return false;
        }
    }

    public final void setMyLocationEnabled(boolean z) {
        try {
            this.a.setMyLocationEnabled(z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final Location getMyLocation() {
        try {
            return this.a.getMyLocation();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final void setLocationSource(LocationSource locationSource) {
        try {
            this.a.setLocationSource(locationSource);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setMyLocationStyle(MyLocationStyle myLocationStyle) {
        try {
            this.a.setMyLocationStyle(myLocationStyle);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final MyLocationStyle getMyLocationStyle() {
        try {
            return this.a.getMyLocationStyle();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final void setMyLocationType(int i) {
        try {
            this.a.setMyLocationType(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setMyLocationRotateAngle(float f) {
        try {
            this.a.setMyLocationRotateAngle(f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final UiSettings getUiSettings() {
        try {
            if (this.b == null) {
                this.b = this.a.getAMapUiSettings();
            }
            return this.b;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final Projection getProjection() {
        try {
            if (this.c == null) {
                this.c = this.a.getAMapProjection();
            }
            return this.c;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public final void setOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) {
        try {
            this.a.setOnCameraChangeListener(onCameraChangeListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnMapClickListener(OnMapClickListener onMapClickListener) {
        try {
            this.a.setOnMapClickListener(onMapClickListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnMapTouchListener(OnMapTouchListener onMapTouchListener) {
        try {
            this.a.setOnMapTouchListener(onMapTouchListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnPOIClickListener(OnPOIClickListener onPOIClickListener) {
        try {
            this.a.setOnPOIClickListener(onPOIClickListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnMyLocationChangeListener(OnMyLocationChangeListener onMyLocationChangeListener) {
        try {
            this.a.setOnMyLocationChangeListener(onMyLocationChangeListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        try {
            this.a.setOnMapLongClickListener(onMapLongClickListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        try {
            this.a.setOnMarkerClickListener(onMarkerClickListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnPolylineClickListener(OnPolylineClickListener onPolylineClickListener) {
        try {
            this.a.setOnPolylineClickListener(onPolylineClickListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnMarkerDragListener(OnMarkerDragListener onMarkerDragListener) {
        try {
            this.a.setOnMarkerDragListener(onMarkerDragListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnInfoWindowClickListener(OnInfoWindowClickListener onInfoWindowClickListener) {
        try {
            this.a.setOnInfoWindowClickListener(onInfoWindowClickListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setInfoWindowAdapter(InfoWindowAdapter infoWindowAdapter) {
        try {
            this.a.setInfoWindowAdapter(infoWindowAdapter);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnMapLoadedListener(OnMapLoadedListener onMapLoadedListener) {
        try {
            this.a.setOnMaploadedListener(onMapLoadedListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setOnIndoorBuildingActiveListener(OnIndoorBuildingActiveListener onIndoorBuildingActiveListener) {
        try {
            this.a.setOnIndoorBuildingActiveListener(onIndoorBuildingActiveListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setOnMultiPointClickListener(OnMultiPointClickListener onMultiPointClickListener) {
        try {
            this.a.setOnMultiPointClickListener(onMultiPointClickListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void getMapPrintScreen(onMapPrintScreenListener onmapprintscreenlistener) {
        this.a.getMapPrintScreen(onmapprintscreenlistener);
    }

    public void getMapScreenShot(OnMapScreenShotListener onMapScreenShotListener) {
        this.a.getMapScreenShot(onMapScreenShotListener);
    }

    public float getScalePerPixel() {
        try {
            return this.a.getScalePerPixel();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0.0f;
        }
    }

    public void runOnDrawFrame() {
        this.a.setRunLowFrame(false);
    }

    public void removecache() {
        try {
            this.a.removecache();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void removecache(OnCacheRemoveListener onCacheRemoveListener) {
        try {
            this.a.removecache(onCacheRemoveListener);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setCustomRenderer(CustomRenderer customRenderer) {
        try {
            this.a.setCustomRenderer(customRenderer);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setPointToCenter(int i, int i2) {
        try {
            this.a.setCenterToPixel(i, i2);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setMapTextZIndex(int i) {
        try {
            this.a.setMapTextZIndex(i);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final void setLoadOfflineData(boolean z) {
        try {
            this.a.setLoadOfflineData(z);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public final int getMapTextZIndex() {
        try {
            return this.a.getMapTextZIndex();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return 0;
        }
    }

    @Deprecated
    public static String getVersion() {
        return "5.7.0";
    }

    public void reloadMap() {
        this.a.reloadMap();
    }

    public void setRenderFps(int i) {
        this.a.setRenderFps(i);
    }

    public void setIndoorBuildingInfo(IndoorBuildingInfo indoorBuildingInfo) {
        try {
            this.a.setIndoorBuildingInfo(indoorBuildingInfo);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setAMapGestureListener(AMapGestureListener aMapGestureListener) {
        this.a.setAMapGestureListener(aMapGestureListener);
    }

    public float getZoomToSpanLevel(LatLng latLng, LatLng latLng2) {
        return this.a.getZoomToSpanLevel(latLng, latLng2);
    }

    public Pair<Float, LatLng> calculateZoomToSpanLevel(int i, int i2, int i3, int i4, LatLng latLng, LatLng latLng2) {
        return this.a.calculateZoomToSpanLevel(i, i2, i3, i4, latLng, latLng2);
    }

    public final InfoWindowAnimationManager getInfoWindowAnimationManager() {
        return this.a.getInfoWindowAnimationManager();
    }

    public void setMaskLayerParams(int i, int i2, int i3, int i4, int i5, long j) {
        this.a.setMaskLayerParams(i, i2, i3, i4, i5, j);
    }

    public void setMaxZoomLevel(float f) {
        this.a.setMaxZoomLevel(f);
    }

    public void setMinZoomLevel(float f) {
        this.a.setMinZoomLevel(f);
    }

    public void resetMinMaxZoomPreference() {
        this.a.resetMinMaxZoomPreference();
    }

    public void setMapStatusLimits(LatLngBounds latLngBounds) {
        try {
            this.a.setMapStatusLimits(latLngBounds);
            moveCamera(CameraUpdateFactory.newLatLngBounds(latLngBounds, 0));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public CrossOverlay addCrossOverlay(CrossOverlayOptions crossOverlayOptions) {
        return this.a.addCrossVector(crossOverlayOptions);
    }

    public RouteOverlay addRouteOverlay() {
        return this.a.addNaviRouteOverlay();
    }

    public float[] getViewMatrix() {
        return this.a.getViewMatrix();
    }

    public float[] getProjectionMatrix() {
        return this.a.getProjectionMatrix();
    }

    public void setMapCustomEnable(boolean z) {
        this.a.setMapCustomEnable(z);
    }

    public void setCustomMapStylePath(String str) {
        this.a.setCustomMapStylePath(str);
    }

    public void setCustomMapStyleID(String str) {
        this.a.setCustomMapStyleID(str);
    }

    public void setCustomTextureResourcePath(String str) {
        this.a.setCustomTextureResourcePath(str);
    }

    public void setRenderMode(int i) {
        this.a.setRenderMode(i);
    }

    public void getP20MapCenter(IPoint iPoint) {
        if (iPoint == null) {
            try {
                iPoint = new IPoint();
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return;
            }
        }
        iPoint.x = this.a.getMapConfig().getS_x();
        iPoint.y = this.a.getMapConfig().getS_y();
    }

    public String getMapContentApprovalNumber() {
        try {
            return this.a.getMapContentApprovalNumber();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public String getSatelliteImageApprovalNumber() {
        try {
            return this.a.getSatelliteImageApprovalNumber();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return null;
        }
    }

    public void setMapLanguage(String str) {
        try {
            this.a.setMapLanguage(str);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }
}

package org.osmdroid.views.overlay.infowindow;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.MapView.LayoutParams;

public abstract class InfoWindow {
    protected boolean mIsVisible = false;
    protected MapView mMapView;
    protected View mView;

    public abstract void onClose();

    public abstract void onOpen(Object obj);

    public InfoWindow(int i, MapView mapView) {
        this.mMapView = mapView;
        this.mView = ((LayoutInflater) mapView.getContext().getSystemService("layout_inflater")).inflate(i, (ViewGroup) mapView.getParent(), false);
        this.mView.setTag(this);
    }

    public MapView getMapView() {
        return this.mMapView;
    }

    public View getView() {
        return this.mView;
    }

    public void open(Object obj, GeoPoint geoPoint, int i, int i2) {
        close();
        onOpen(obj);
        LayoutParams layoutParams = new LayoutParams(-2, -2, geoPoint, 8, i, i2);
        if (this.mMapView == null || this.mView == null) {
            Log.w(IMapView.LOGTAG, "Error trapped, InfoWindow.open mMapView: " + (this.mMapView == null ? "null" : "ok") + " mView: " + (this.mView == null ? "null" : "ok"));
            return;
        }
        this.mMapView.addView(this.mView, layoutParams);
        this.mIsVisible = true;
    }

    public void close() {
        if (this.mIsVisible) {
            this.mIsVisible = false;
            ((ViewGroup) this.mView.getParent()).removeView(this.mView);
            onClose();
        }
    }

    public void onDetach() {
        close();
        if (this.mView != null) {
            this.mView.setTag(null);
        }
        this.mView = null;
        this.mMapView = null;
        if (Configuration.getInstance().isDebugMode()) {
            Log.d(IMapView.LOGTAG, "Marked detached");
        }
    }

    public boolean isOpen() {
        return this.mIsVisible;
    }

    public static void closeAllInfoWindowsOn(MapView mapView) {
        Iterator it = getOpenedInfoWindowsOn(mapView).iterator();
        while (it.hasNext()) {
            ((InfoWindow) it.next()).close();
        }
    }

    public static ArrayList<InfoWindow> getOpenedInfoWindowsOn(MapView mapView) {
        int childCount = mapView.getChildCount();
        ArrayList<InfoWindow> arrayList = new ArrayList<>(childCount);
        for (int i = 0; i < childCount; i++) {
            Object tag = mapView.getChildAt(i).getTag();
            if (tag != null && (tag instanceof InfoWindow)) {
                arrayList.add((InfoWindow) tag);
            }
        }
        return arrayList;
    }
}

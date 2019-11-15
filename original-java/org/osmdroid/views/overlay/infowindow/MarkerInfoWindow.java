package org.osmdroid.views.overlay.infowindow;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import org.osmdroid.api.IMapView;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.Marker;

public class MarkerInfoWindow extends BasicInfoWindow {
    protected Marker mMarkerRef;

    public MarkerInfoWindow(int i, MapView mapView) {
        super(i, mapView);
    }

    public Marker getMarkerReference() {
        return this.mMarkerRef;
    }

    public void onOpen(Object obj) {
        super.onOpen(obj);
        this.mMarkerRef = (Marker) obj;
        if (this.mView == null) {
            Log.w(IMapView.LOGTAG, "Error trapped, MarkerInfoWindow.open, mView is null!");
            return;
        }
        ImageView imageView = (ImageView) this.mView.findViewById(mImageId);
        Drawable image = this.mMarkerRef.getImage();
        if (image != null) {
            imageView.setImageDrawable(image);
            imageView.setVisibility(0);
            return;
        }
        imageView.setVisibility(8);
    }

    public void onClose() {
        super.onClose();
        this.mMarkerRef = null;
    }
}

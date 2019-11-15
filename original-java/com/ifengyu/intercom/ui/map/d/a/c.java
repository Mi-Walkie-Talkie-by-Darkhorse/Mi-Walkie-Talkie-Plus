package com.ifengyu.intercom.ui.map.d.a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.mylocation.IMyLocationProvider;
import org.osmdroid.views.overlay.mylocation.MyLocationNewOverlay;

/* compiled from: MyLocationOverlay */
public class c extends MyLocationNewOverlay {
    private GeoPoint a = new GeoPoint(0, 0);

    public c(IMyLocationProvider iMyLocationProvider, MapView mapView) {
        super(iMyLocationProvider, mapView);
        setDirectionArrow(((BitmapDrawable) mapView.getContext().getResources().getDrawable(R.drawable.icon_for_my_location)).getBitmap(), ((BitmapDrawable) mapView.getContext().getResources().getDrawable(R.drawable.icon_for_my_location)).getBitmap());
        this.mCirclePaint.setColor(-12272701);
    }

    public void onLocationChanged(Location location, IMyLocationProvider iMyLocationProvider) {
        super.onLocationChanged(location, iMyLocationProvider);
        if (((d) iMyLocationProvider).a() && MiTalkiApp.a().e()) {
            this.a.setLatitude(location.getLatitude());
            this.a.setLongitude(location.getLongitude());
            this.mMapView.getController().animateTo(this.a);
        }
    }

    public void setDirectionArrow(Bitmap bitmap, Bitmap bitmap2) {
        this.mPersonBitmap = bitmap;
        this.mDirectionArrowBitmap = bitmap2;
        this.mDirectionArrowCenterX = ((float) this.mDirectionArrowBitmap.getWidth()) / 2.0f;
        this.mDirectionArrowCenterY = ((float) this.mDirectionArrowBitmap.getHeight()) / 2.0f;
    }

    public void stopLocationProvider() {
        if (this.mMyLocationProvider != null) {
            this.mMyLocationProvider.stopLocationProvider();
        }
    }
}

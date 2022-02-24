package com.ifengyu.intercom.ui.map.f.a;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.overlay.mylocation.IMyLocationProvider;
import org.osmdroid.views.overlay.mylocation.MyLocationNewOverlay;

/* compiled from: MyLocationOverlay.java */
/* loaded from: classes2.dex */
public class c extends MyLocationNewOverlay {

    /* renamed from: a  reason: collision with root package name */
    private GeoPoint f6551a = new GeoPoint(0, 0);

    public c(IMyLocationProvider iMyLocationProvider, MapView mapView) {
        super(iMyLocationProvider, mapView);
        setDirectionArrow(((BitmapDrawable) mapView.getContext().getResources().getDrawable(R.drawable.icon_for_my_location)).getBitmap(), ((BitmapDrawable) mapView.getContext().getResources().getDrawable(R.drawable.icon_for_my_location)).getBitmap());
        this.mCirclePaint.setColor(-12272701);
    }

    @Override // org.osmdroid.views.overlay.mylocation.MyLocationNewOverlay, org.osmdroid.views.overlay.mylocation.IMyLocationConsumer
    public void onLocationChanged(Location location, IMyLocationProvider iMyLocationProvider) {
        super.onLocationChanged(location, iMyLocationProvider);
        if (((d) iMyLocationProvider).a() && MiTalkiApp.b().l()) {
            this.f6551a.setLatitude(location.getLatitude());
            this.f6551a.setLongitude(location.getLongitude());
            this.mMapView.getController().animateTo(this.f6551a);
        }
    }

    @Override // org.osmdroid.views.overlay.mylocation.MyLocationNewOverlay
    public void setDirectionArrow(Bitmap bitmap, Bitmap bitmap2) {
        this.mPersonBitmap = bitmap;
        this.mDirectionArrowBitmap = bitmap2;
        this.mDirectionArrowCenterX = bitmap2.getWidth() / 2.0f;
        this.mDirectionArrowCenterY = this.mDirectionArrowBitmap.getHeight() / 2.0f;
    }

    @Override // org.osmdroid.views.overlay.mylocation.MyLocationNewOverlay
    public void stopLocationProvider() {
        IMyLocationProvider iMyLocationProvider = this.mMyLocationProvider;
        if (iMyLocationProvider != null) {
            iMyLocationProvider.stopLocationProvider();
        }
    }
}

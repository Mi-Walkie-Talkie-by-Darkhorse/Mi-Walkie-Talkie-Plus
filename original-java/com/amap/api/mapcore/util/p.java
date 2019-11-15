package com.amap.api.mapcore.util;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.maps.AMapOptions;
import com.amap.api.maps.CameraUpdateFactory;
import com.amap.api.maps.UiSettings;
import com.amap.api.maps.model.CameraPosition;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: MapFragmentDelegateImp */
public class p implements IMapFragmentDelegate {
    public static volatile Context a;
    public int b = 0;
    private IAMap c;
    private int d = 0;
    private String e = "MapFragmentDelegateImp";
    private AMapOptions f;

    public p(int i) {
        this.d = i % 3;
    }

    public void setContext(Context context) {
        a(context);
    }

    private static void a(Context context) {
        if (context != null) {
            a = context.getApplicationContext();
        }
    }

    public void setOptions(AMapOptions aMapOptions) {
        this.f = aMapOptions;
    }

    public IAMap getMap() throws RemoteException {
        if (this.c == null) {
            if (a == null) {
                Log.w(this.e, "Context 为 null 请在地图调用之前 使用 MapsInitializer.initialize(Context paramContext) 来设置Context");
                return null;
            }
            int i = a.getResources().getDisplayMetrics().densityDpi;
            if (i <= 120) {
                g.a = 0.5f;
            } else if (i <= 160) {
                g.a = 0.8f;
            } else if (i <= 240) {
                g.a = 0.87f;
            } else if (i <= 320) {
                g.a = 1.0f;
            } else if (i <= 480) {
                g.a = 1.5f;
            } else if (i <= 640) {
                g.a = 1.8f;
            } else {
                g.a = 0.9f;
            }
            if (this.d == 0) {
                this.c = new c(a).a();
            } else if (this.d == 1) {
                this.c = new d(a).a();
            } else {
                this.c = new b(a).a();
            }
        }
        return this.c;
    }

    public void onInflate(Activity activity, AMapOptions aMapOptions, Bundle bundle) throws RemoteException {
        setContext(activity.getApplicationContext());
        this.f = aMapOptions;
    }

    public void onCreate(Bundle bundle) throws RemoteException {
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws RemoteException {
        if (a == null && layoutInflater != null) {
            setContext(layoutInflater.getContext().getApplicationContext());
        }
        try {
            this.c = getMap();
            this.c.setVisibilityEx(this.b);
            if (this.f == null && bundle != null) {
                byte[] byteArray = bundle.getByteArray("MapOptions");
                if (byteArray != null) {
                    Parcel obtain = Parcel.obtain();
                    obtain.unmarshall(byteArray, 0, byteArray.length);
                    obtain.setDataPosition(0);
                    this.f = AMapOptions.CREATOR.createFromParcel(obtain);
                }
            }
            a(this.f);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return this.c.getView();
    }

    /* access modifiers changed from: 0000 */
    public void a(AMapOptions aMapOptions) throws RemoteException {
        if (aMapOptions != null && this.c != null) {
            CameraPosition camera = aMapOptions.getCamera();
            if (camera != null) {
                this.c.moveCamera(CameraUpdateFactory.newCameraPosition(camera));
            }
            UiSettings aMapUiSettings = this.c.getAMapUiSettings();
            aMapUiSettings.setRotateGesturesEnabled(aMapOptions.getRotateGesturesEnabled());
            aMapUiSettings.setScrollGesturesEnabled(aMapOptions.getScrollGesturesEnabled());
            aMapUiSettings.setTiltGesturesEnabled(aMapOptions.getTiltGesturesEnabled());
            aMapUiSettings.setZoomControlsEnabled(aMapOptions.getZoomControlsEnabled());
            aMapUiSettings.setZoomGesturesEnabled(aMapOptions.getZoomGesturesEnabled());
            aMapUiSettings.setCompassEnabled(aMapOptions.getCompassEnabled());
            aMapUiSettings.setScaleControlsEnabled(aMapOptions.getScaleControlsEnabled());
            aMapUiSettings.setLogoPosition(aMapOptions.getLogoPosition());
            this.c.setMapType(aMapOptions.getMapType());
            this.c.setZOrderOnTop(aMapOptions.getZOrderOnTop());
        }
    }

    public void onResume() throws RemoteException {
        if (this.c != null) {
            this.c.onActivityResume();
        }
    }

    public void onPause() throws RemoteException {
        if (this.c != null) {
            this.c.onActivityPause();
        }
    }

    public void onDestroyView() throws RemoteException {
    }

    public void onDestroy() throws RemoteException {
        if (this.c != null) {
            this.c.clear();
            this.c.destroy();
            this.c = null;
        }
    }

    public void onLowMemory() throws RemoteException {
        Log.d("onLowMemory", "onLowMemory run");
    }

    public void onSaveInstanceState(Bundle bundle) throws RemoteException {
        if (this.c != null) {
            if (this.f == null) {
                this.f = new AMapOptions();
            }
            try {
                Parcel obtain = Parcel.obtain();
                this.f = this.f.camera(getMap().getCameraPosition());
                this.f.writeToParcel(obtain, 0);
                bundle.putByteArray("MapOptions", obtain.marshall());
            } catch (Throwable th) {
            }
        }
    }

    public boolean isReady() throws RemoteException {
        return false;
    }

    public void setVisibility(int i) {
        this.b = i;
        if (this.c != null) {
            this.c.setVisibilityEx(i);
        }
    }
}

package com.amap.api.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.Parcel;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.mapcore.util.ee;
import com.amap.api.mapcore.util.ha;
import com.amap.api.mapcore.util.p;
import com.autonavi.amap.mapcore.interfaces.IAMap;
import com.autonavi.amap.mapcore.interfaces.IMapFragmentDelegate;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class MapFragment extends Fragment {
    private AMap a;
    private IMapFragmentDelegate b;

    public static MapFragment newInstance() {
        return newInstance(new AMapOptions());
    }

    public static MapFragment newInstance(AMapOptions aMapOptions) {
        MapFragment mapFragment = new MapFragment();
        Bundle bundle = new Bundle();
        try {
            Parcel obtain = Parcel.obtain();
            aMapOptions.writeToParcel(obtain, 0);
            bundle.putByteArray("MapOptions", obtain.marshall());
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        mapFragment.setArguments(bundle);
        return mapFragment;
    }

    /* access modifiers changed from: protected */
    public IMapFragmentDelegate getMapFragmentDelegate() {
        if (this.b == null) {
            try {
                this.b = (IMapFragmentDelegate) ha.a(getActivity(), ee.e(), "com.amap.api.wrapper.MapFragmentDelegateWrapper", p.class, new Class[]{Integer.TYPE}, new Object[]{Integer.valueOf(0)});
            } catch (Throwable th) {
            }
            if (this.b == null) {
                this.b = new p(0);
                this.b.setContext(getActivity());
            }
        }
        return this.b;
    }

    public AMap getMap() {
        IMapFragmentDelegate mapFragmentDelegate = getMapFragmentDelegate();
        if (mapFragmentDelegate == null) {
            return null;
        }
        try {
            IAMap map = mapFragmentDelegate.getMap();
            if (map == null) {
                return null;
            }
            if (this.a == null) {
                this.a = new AMap(map);
            }
            return this.a;
        } catch (Throwable th) {
            return null;
        }
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(activity, attributeSet, bundle);
        try {
            getMapFragmentDelegate().onInflate(activity, new AMapOptions(), bundle);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            getMapFragmentDelegate().onCreate(bundle);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (bundle == null) {
            try {
                bundle = getArguments();
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
                return null;
            }
        }
        return getMapFragmentDelegate().onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onResume() {
        super.onResume();
        try {
            getMapFragmentDelegate().onResume();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onPause() {
        super.onPause();
        try {
            getMapFragmentDelegate().onPause();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onDestroyView() {
        try {
            getMapFragmentDelegate().onDestroyView();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        super.onDestroyView();
    }

    public void onDestroy() {
        try {
            getMapFragmentDelegate().onDestroy();
            this.a = null;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        super.onDestroy();
    }

    public void onLowMemory() {
        super.onLowMemory();
        try {
            getMapFragmentDelegate().onLowMemory();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        try {
            getMapFragmentDelegate().onSaveInstanceState(bundle);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        super.onSaveInstanceState(bundle);
    }

    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }

    public void setUserVisibleHint(boolean z) {
        if (z) {
            getMapFragmentDelegate().setVisibility(0);
        } else {
            getMapFragmentDelegate().setVisibility(8);
        }
    }
}

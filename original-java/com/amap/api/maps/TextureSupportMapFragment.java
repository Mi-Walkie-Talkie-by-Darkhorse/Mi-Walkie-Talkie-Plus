package com.amap.api.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.app.Fragment;
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

public class TextureSupportMapFragment extends Fragment {
    private AMap a;
    private IMapFragmentDelegate b;

    public static TextureSupportMapFragment newInstance() {
        return newInstance(new AMapOptions());
    }

    public static TextureSupportMapFragment newInstance(AMapOptions aMapOptions) {
        TextureSupportMapFragment textureSupportMapFragment = new TextureSupportMapFragment();
        Bundle bundle = new Bundle();
        try {
            Parcel obtain = Parcel.obtain();
            aMapOptions.writeToParcel(obtain, 0);
            bundle.putByteArray("MapOptions", obtain.marshall());
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        textureSupportMapFragment.setArguments(bundle);
        return textureSupportMapFragment;
    }

    /* access modifiers changed from: protected */
    public IMapFragmentDelegate getMapFragmentDelegate(Context context) {
        if (this.b == null) {
            try {
                Context context2 = context;
                this.b = (IMapFragmentDelegate) ha.a(context2, ee.e(), "com.amap.api.wrapper.MapFragmentDelegateWrapper", p.class, new Class[]{Integer.TYPE}, new Object[]{Integer.valueOf(1)});
            } catch (Throwable th) {
            }
            if (this.b == null) {
                this.b = new p(1);
                this.b.setContext(context);
            }
        }
        return this.b;
    }

    private IMapFragmentDelegate a() {
        return getMapFragmentDelegate(getActivity());
    }

    public AMap getMap() {
        IMapFragmentDelegate a2 = a();
        if (a2 == null) {
            return null;
        }
        try {
            IAMap map = a2.getMap();
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
            getMapFragmentDelegate(activity).onInflate(activity, new AMapOptions(), bundle);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
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
        return a().onCreateView(layoutInflater, viewGroup, bundle);
    }

    public void onResume() {
        super.onResume();
        try {
            a().onResume();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onPause() {
        super.onPause();
        try {
            a().onPause();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onDestroyView() {
        try {
            a().onDestroyView();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        super.onDestroyView();
    }

    public void onDestroy() {
        try {
            a().onDestroy();
            this.a = null;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        super.onDestroy();
    }

    public void onLowMemory() {
        super.onLowMemory();
        try {
            a().onLowMemory();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        try {
            a().onSaveInstanceState(bundle);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        super.onSaveInstanceState(bundle);
    }

    public void setArguments(Bundle bundle) {
        try {
            super.setArguments(bundle);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            a().setVisibility(0);
        } else {
            a().setVisibility(8);
        }
    }
}

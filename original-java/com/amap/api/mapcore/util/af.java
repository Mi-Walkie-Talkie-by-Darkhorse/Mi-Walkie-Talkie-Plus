package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.amap.api.maps.AMap.ImageInfoWindowAdapter;
import com.amap.api.maps.AMap.InfoWindowAdapter;
import com.amap.api.maps.AMap.MultiPositionInfoWindowAdapter;
import com.amap.api.maps.model.Marker;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: InfoWindowDelegate */
public class af {
    InfoWindowAdapter a = null;
    Context b;
    private boolean c = true;
    /* access modifiers changed from: private */
    public View d;
    /* access modifiers changed from: private */
    public TextView e;
    /* access modifiers changed from: private */
    public TextView f;
    /* access modifiers changed from: private */
    public Drawable g = null;
    private ae h;
    private ae i;
    private InfoWindowAdapter j = new InfoWindowAdapter() {
        public View getInfoWindow(Marker marker) {
            try {
                if (af.this.g == null) {
                    af.this.g = dv.a(af.this.b, "infowindow_bg.9.png");
                }
                if (af.this.d == null) {
                    af.this.d = new LinearLayout(af.this.b);
                    af.this.d.setBackground(af.this.g);
                    af.this.e = new TextView(af.this.b);
                    af.this.e.setText(marker.getTitle());
                    af.this.e.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    af.this.f = new TextView(af.this.b);
                    af.this.f.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    af.this.f.setText(marker.getSnippet());
                    ((LinearLayout) af.this.d).setOrientation(1);
                    ((LinearLayout) af.this.d).addView(af.this.e);
                    ((LinearLayout) af.this.d).addView(af.this.f);
                }
            } catch (Throwable th) {
                gf.b(th, "InfoWindowDelegate", "showInfoWindow decodeDrawableFromAsset");
                ThrowableExtension.printStackTrace(th);
            }
            return af.this.d;
        }

        public View getInfoContents(Marker marker) {
            return null;
        }
    };

    public af(Context context) {
        this.b = context;
        this.a = this.j;
    }

    public void a(ae aeVar) {
        this.h = aeVar;
        if (this.h != null) {
            this.h.a(this);
        }
    }

    public void b(ae aeVar) {
        this.i = aeVar;
        if (this.i != null) {
            this.i.a(this);
        }
    }

    public synchronized boolean a() {
        return this.c;
    }

    public void a(String str, String str2) {
        if (this.e != null) {
            this.e.setText(str);
        }
        if (this.f != null) {
            this.f.setText(str2);
        }
        if (this.d != null) {
            this.d.requestLayout();
        }
    }

    public synchronized void a(InfoWindowAdapter infoWindowAdapter) {
        this.a = infoWindowAdapter;
        if (this.a == null) {
            this.a = this.j;
            this.c = true;
        } else {
            this.c = false;
        }
        if (this.i != null) {
            this.i.a_();
        }
        if (this.h != null) {
            this.h.a_();
        }
    }

    public void b() {
        this.b = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.j = null;
        this.a = null;
        ee.a(this.g);
        this.g = null;
    }

    public View a(Marker marker) {
        if (this.a != null) {
            return this.a.getInfoWindow(marker);
        }
        return null;
    }

    public View b(Marker marker) {
        if (this.a != null) {
            return this.a.getInfoContents(marker);
        }
        return null;
    }

    public View c(Marker marker) {
        if (this.a == null || !(this.a instanceof MultiPositionInfoWindowAdapter)) {
            return null;
        }
        return ((MultiPositionInfoWindowAdapter) this.a).getInfoWindowClick(marker);
    }

    public View d(Marker marker) {
        if (this.a == null || !(this.a instanceof MultiPositionInfoWindowAdapter)) {
            return null;
        }
        return ((MultiPositionInfoWindowAdapter) this.a).getOverturnInfoWindow(marker);
    }

    public View e(Marker marker) {
        if (this.a == null || !(this.a instanceof MultiPositionInfoWindowAdapter)) {
            return null;
        }
        return ((MultiPositionInfoWindowAdapter) this.a).getOverturnInfoWindowClick(marker);
    }

    public long c() {
        if (this.a == null || !(this.a instanceof ImageInfoWindowAdapter)) {
            return 0;
        }
        return ((ImageInfoWindowAdapter) this.a).getInfoWindowUpdateTime();
    }

    public void d() {
        ae e2 = e();
        if (e2 != null) {
            e2.b();
        }
    }

    public synchronized ae e() {
        ae aeVar;
        if (this.a == null) {
            aeVar = null;
        } else if (this.a instanceof ImageInfoWindowAdapter) {
            aeVar = this.i;
        } else if (this.a instanceof MultiPositionInfoWindowAdapter) {
            aeVar = this.i;
        } else {
            aeVar = this.h;
        }
        return aeVar;
    }

    public boolean a(MotionEvent motionEvent) {
        ae e2 = e();
        if (e2 != null) {
            return e2.a(motionEvent);
        }
        return false;
    }

    public void f() {
        ae e2 = e();
        if (e2 != null) {
            e2.a_();
        }
    }

    public void a(cg cgVar) throws RemoteException {
        ae e2 = e();
        if (e2 != null) {
            e2.a(cgVar);
        }
    }

    public Drawable g() {
        if (this.g == null) {
            try {
                this.g = dv.a(this.b, "infowindow_bg.9.png");
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
        return this.g;
    }
}

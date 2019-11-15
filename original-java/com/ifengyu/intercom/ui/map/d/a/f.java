package com.ifengyu.intercom.ui.map.d.a;

import org.osmdroid.api.IGeoPoint;
import org.osmdroid.views.overlay.OverlayItem;

/* compiled from: MyOverlayItem */
public class f extends OverlayItem {
    private Object a;

    public f(String str, String str2, IGeoPoint iGeoPoint) {
        super(str, str2, iGeoPoint);
    }

    public void a(Object obj) {
        this.a = obj;
    }

    public Object a() {
        return this.a;
    }
}

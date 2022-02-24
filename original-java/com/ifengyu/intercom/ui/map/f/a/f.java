package com.ifengyu.intercom.ui.map.f.a;

import org.osmdroid.api.IGeoPoint;
import org.osmdroid.views.overlay.OverlayItem;

/* compiled from: MyOverlayItem.java */
/* loaded from: classes2.dex */
public class f extends OverlayItem {

    /* renamed from: a  reason: collision with root package name */
    private Object f6557a;

    public f(String str, String str2, IGeoPoint iGeoPoint) {
        super(str, str2, iGeoPoint);
    }

    public void a(Object obj) {
        this.f6557a = obj;
    }

    public Object a() {
        return this.f6557a;
    }
}

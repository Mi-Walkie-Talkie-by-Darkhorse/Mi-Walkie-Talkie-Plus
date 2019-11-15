package com.amap.api.maps.model;

import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;

public final class TextOptions implements Parcelable {
    public static final TextOptionsCreator CREATOR = new TextOptionsCreator();
    String a;
    private LatLng b;
    private String c;
    private Typeface d = Typeface.DEFAULT;
    private float e;
    private int f = 4;
    private int g = 32;
    private int h = -1;
    private int i = ViewCompat.MEASURED_STATE_MASK;
    private Object j;
    private int k = 20;
    private float l = 0.0f;
    private boolean m = true;

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        Bundle bundle = new Bundle();
        if (this.b != null) {
            bundle.putDouble("lat", this.b.latitude);
            bundle.putDouble("lng", this.b.longitude);
        }
        parcel.writeBundle(bundle);
        parcel.writeString(this.c);
        parcel.writeInt(this.d.getStyle());
        parcel.writeFloat(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.k);
        parcel.writeFloat(this.l);
        parcel.writeByte((byte) (this.m ? 1 : 0));
        if (this.j instanceof Parcelable) {
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("obj", (Parcelable) this.j);
            parcel.writeBundle(bundle2);
        }
    }

    public int describeContents() {
        return 0;
    }

    public TextOptions position(LatLng latLng) {
        this.b = latLng;
        return this;
    }

    public TextOptions text(String str) {
        this.c = str;
        return this;
    }

    public TextOptions typeface(Typeface typeface) {
        if (typeface != null) {
            this.d = typeface;
        }
        return this;
    }

    public TextOptions visible(boolean z) {
        this.m = z;
        return this;
    }

    public TextOptions zIndex(float f2) {
        this.l = f2;
        return this;
    }

    public TextOptions rotate(float f2) {
        this.e = f2;
        return this;
    }

    public TextOptions align(int i2, int i3) {
        this.f = i2;
        this.g = i3;
        return this;
    }

    public TextOptions backgroundColor(int i2) {
        this.h = i2;
        return this;
    }

    public TextOptions setObject(Object obj) {
        this.j = obj;
        return this;
    }

    public TextOptions fontColor(int i2) {
        this.i = i2;
        return this;
    }

    public TextOptions fontSize(int i2) {
        this.k = i2;
        return this;
    }

    public LatLng getPosition() {
        return this.b;
    }

    public String getText() {
        return this.c;
    }

    public Typeface getTypeface() {
        return this.d;
    }

    public float getRotate() {
        return this.e;
    }

    public int getAlignX() {
        return this.f;
    }

    public int getAlignY() {
        return this.g;
    }

    public int getBackgroundColor() {
        return this.h;
    }

    public int getFontColor() {
        return this.i;
    }

    public Object getObject() {
        return this.j;
    }

    public int getFontSize() {
        return this.k;
    }

    public float getZIndex() {
        return this.l;
    }

    public boolean isVisible() {
        return this.m;
    }
}

package com.amap.api.maps.model;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.http.HttpStatus;
import org.bouncycastle.crypto.tls.CipherSuite;

public final class NavigateArrowOptions implements Parcelable {
    public static final NavigateArrowOptionsCreator CREATOR = new NavigateArrowOptionsCreator();
    String a;
    private final List<LatLng> b = new ArrayList();
    private float c = 10.0f;
    private int d = Color.argb(221, 87, 235, HttpStatus.SC_NO_CONTENT);
    private int e = Color.argb(CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256, 0, CipherSuite.TLS_RSA_PSK_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA);
    private float f = 0.0f;
    private boolean g = true;

    public NavigateArrowOptions add(LatLng latLng) {
        this.b.add(latLng);
        return this;
    }

    public NavigateArrowOptions add(LatLng... latLngArr) {
        this.b.addAll(Arrays.asList(latLngArr));
        return this;
    }

    public NavigateArrowOptions addAll(Iterable<LatLng> iterable) {
        for (LatLng add : iterable) {
            this.b.add(add);
        }
        return this;
    }

    public NavigateArrowOptions width(float f2) {
        this.c = f2;
        return this;
    }

    public NavigateArrowOptions topColor(int i) {
        this.d = i;
        return this;
    }

    @Deprecated
    public NavigateArrowOptions sideColor(int i) {
        this.e = i;
        return this;
    }

    public NavigateArrowOptions zIndex(float f2) {
        this.f = f2;
        return this;
    }

    public NavigateArrowOptions visible(boolean z) {
        this.g = z;
        return this;
    }

    public List<LatLng> getPoints() {
        return this.b;
    }

    public float getWidth() {
        return this.c;
    }

    public int getTopColor() {
        return this.d;
    }

    @Deprecated
    public int getSideColor() {
        return this.e;
    }

    public float getZIndex() {
        return this.f;
    }

    public boolean isVisible() {
        return this.g;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.b);
        parcel.writeFloat(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeFloat(this.f);
        parcel.writeByte((byte) (this.g ? 1 : 0));
        parcel.writeString(this.a);
    }
}

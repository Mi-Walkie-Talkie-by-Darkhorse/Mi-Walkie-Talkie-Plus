package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;

public class Poi implements Parcelable {
    public static final PoiCreator CREATOR = new PoiCreator();
    private final String a;
    private final LatLng b;
    private final String c;

    public Poi(String str, LatLng latLng, String str2) {
        this.a = str;
        this.b = latLng;
        this.c = str2;
    }

    public String getName() {
        return this.a;
    }

    public LatLng getCoordinate() {
        return this.b;
    }

    public String getPoiId() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Poi)) {
            return false;
        }
        Poi poi = (Poi) obj;
        if (!poi.getName().equals(this.a) || !poi.getCoordinate().equals(this.b) || !poi.getPoiId().equals(this.c)) {
            return false;
        }
        return true;
    }

    public String toString() {
        return "poiid " + this.c + " name:" + this.a + "  coordinate:" + this.b.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeParcelable(this.b, i);
        parcel.writeString(this.c);
    }

    public int hashCode() {
        return super.hashCode();
    }
}

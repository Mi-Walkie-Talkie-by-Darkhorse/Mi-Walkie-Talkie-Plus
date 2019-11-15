package com.amap.api.services.core;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.mipush.sdk.Constants;

public class LatLonPoint implements Parcelable {
    public static final Creator<LatLonPoint> CREATOR = new Creator<LatLonPoint>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new LatLonPoint(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new LatLonPoint[i];
        }
    };
    private double a;
    private double b;

    public LatLonPoint(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    public double getLongitude() {
        return this.b;
    }

    public void setLongitude(double d) {
        this.b = d;
    }

    public double getLatitude() {
        return this.a;
    }

    public void setLatitude(double d) {
        this.a = d;
    }

    public LatLonPoint copy() {
        return new LatLonPoint(this.a, this.b);
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.a);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31;
        long doubleToLongBits2 = Double.doubleToLongBits(this.b);
        return (i * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        LatLonPoint latLonPoint = (LatLonPoint) obj;
        if (Double.doubleToLongBits(this.a) != Double.doubleToLongBits(latLonPoint.a)) {
            return false;
        }
        if (Double.doubleToLongBits(this.b) != Double.doubleToLongBits(latLonPoint.b)) {
            return false;
        }
        return true;
    }

    public String toString() {
        return this.a + Constants.ACCEPT_TIME_SEPARATOR_SP + this.b;
    }

    protected LatLonPoint(Parcel parcel) {
        this.a = parcel.readDouble();
        this.b = parcel.readDouble();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.a);
        parcel.writeDouble(this.b);
    }
}

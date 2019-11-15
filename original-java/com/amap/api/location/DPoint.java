package com.amap.api.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class DPoint implements Parcelable {
    public static final Creator<DPoint> CREATOR = new Creator<DPoint>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new DPoint(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DPoint[i];
        }
    };
    private double a = 0.0d;
    private double b = 0.0d;

    public DPoint() {
    }

    public DPoint(double d, double d2) {
        double d3 = 180.0d;
        double d4 = 90.0d;
        double d5 = -180.0d;
        double d6 = -90.0d;
        if (d2 <= 180.0d) {
            d3 = d2;
        }
        if (d3 >= -180.0d) {
            d5 = d3;
        }
        if (d <= 90.0d) {
            d4 = d;
        }
        if (d4 >= -90.0d) {
            d6 = d4;
        }
        this.a = d5;
        this.b = d6;
    }

    public double getLongitude() {
        return this.a;
    }

    public void setLongitude(double d) {
        double d2 = 180.0d;
        double d3 = -180.0d;
        if (d <= 180.0d) {
            d2 = d;
        }
        if (d2 >= -180.0d) {
            d3 = d2;
        }
        this.a = d3;
    }

    public double getLatitude() {
        return this.b;
    }

    public void setLatitude(double d) {
        double d2 = 90.0d;
        double d3 = -90.0d;
        if (d <= 90.0d) {
            d2 = d;
        }
        if (d2 >= -90.0d) {
            d3 = d2;
        }
        this.b = d3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DPoint)) {
            return false;
        }
        DPoint dPoint = (DPoint) obj;
        if (this.b == dPoint.b && this.a == dPoint.a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Double.valueOf((this.b + this.a) * 1000000.0d).intValue();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.a);
        parcel.writeDouble(this.b);
    }

    protected DPoint(Parcel parcel) {
        this.a = parcel.readDouble();
        this.b = parcel.readDouble();
    }
}

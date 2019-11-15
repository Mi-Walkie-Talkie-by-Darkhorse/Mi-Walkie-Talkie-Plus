package org.osmdroid.util;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.mipush.sdk.Constants;
import java.io.Serializable;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.util.constants.GeoConstants;
import org.osmdroid.views.util.constants.MathConstants;

public class GeoPoint implements Parcelable, Serializable, Cloneable, IGeoPoint, GeoConstants, MathConstants {
    public static final Creator<GeoPoint> CREATOR = new Creator<GeoPoint>() {
        public GeoPoint createFromParcel(Parcel parcel) {
            return new GeoPoint(parcel);
        }

        public GeoPoint[] newArray(int i) {
            return new GeoPoint[i];
        }
    };
    static final long serialVersionUID = 1;
    private double mAltitude;
    private double mLatitude;
    private double mLongitude;

    @Deprecated
    public GeoPoint(int i, int i2) {
        this.mLatitude = ((double) i) / 1000000.0d;
        this.mLongitude = ((double) i2) / 1000000.0d;
    }

    @Deprecated
    public GeoPoint(int i, int i2, int i3) {
        this.mLatitude = ((double) i) / 1000000.0d;
        this.mLongitude = ((double) i2) / 1000000.0d;
        this.mAltitude = (double) i3;
    }

    public GeoPoint(double d, double d2) {
        this.mLatitude = d;
        this.mLongitude = d2;
    }

    public GeoPoint(double d, double d2, double d3) {
        this.mLatitude = d;
        this.mLongitude = d2;
        this.mAltitude = d3;
    }

    public GeoPoint(Location location) {
        this(location.getLatitude(), location.getLongitude(), location.getAltitude());
    }

    public GeoPoint(GeoPoint geoPoint) {
        this.mLatitude = geoPoint.mLatitude;
        this.mLongitude = geoPoint.mLongitude;
        this.mAltitude = geoPoint.mAltitude;
    }

    public static GeoPoint fromDoubleString(String str, char c) {
        int indexOf = str.indexOf(c);
        int indexOf2 = str.indexOf(c, indexOf + 1);
        if (indexOf2 == -1) {
            return new GeoPoint(Double.parseDouble(str.substring(0, indexOf)), Double.parseDouble(str.substring(indexOf + 1, str.length())));
        }
        return new GeoPoint(Double.parseDouble(str.substring(0, indexOf)), Double.parseDouble(str.substring(indexOf + 1, indexOf2)), Double.parseDouble(str.substring(indexOf2 + 1, str.length())));
    }

    public static GeoPoint fromInvertedDoubleString(String str, char c) {
        int indexOf = str.indexOf(c);
        int indexOf2 = str.indexOf(c, indexOf + 1);
        if (indexOf2 == -1) {
            return new GeoPoint(Double.parseDouble(str.substring(indexOf + 1, str.length())), Double.parseDouble(str.substring(0, indexOf)));
        }
        return new GeoPoint(Double.parseDouble(str.substring(indexOf + 1, indexOf2)), Double.parseDouble(str.substring(0, indexOf)), Double.parseDouble(str.substring(indexOf2 + 1, str.length())));
    }

    public static GeoPoint fromIntString(String str) {
        int indexOf = str.indexOf(44);
        int indexOf2 = str.indexOf(44, indexOf + 1);
        if (indexOf2 == -1) {
            return new GeoPoint(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1, str.length())));
        }
        return new GeoPoint(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1, indexOf2)), Integer.parseInt(str.substring(indexOf2 + 1, str.length())));
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public double getAltitude() {
        return this.mAltitude;
    }

    public void setLatitude(double d) {
        this.mLatitude = d;
    }

    public void setLongitude(double d) {
        this.mLongitude = d;
    }

    public void setAltitude(double d) {
        this.mAltitude = d;
    }

    public void setCoords(double d, double d2) {
        this.mLatitude = d;
        this.mLongitude = d2;
    }

    public GeoPoint clone() {
        return new GeoPoint(this.mLatitude, this.mLongitude, this.mAltitude);
    }

    public String toIntString() {
        return ((int) (this.mLatitude * 1000000.0d)) + Constants.ACCEPT_TIME_SEPARATOR_SP + ((int) (this.mLongitude * 1000000.0d)) + Constants.ACCEPT_TIME_SEPARATOR_SP + ((int) this.mAltitude);
    }

    public String toString() {
        return this.mLatitude + Constants.ACCEPT_TIME_SEPARATOR_SP + this.mLongitude + Constants.ACCEPT_TIME_SEPARATOR_SP + this.mAltitude;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj.getClass() != getClass()) {
            return false;
        }
        GeoPoint geoPoint = (GeoPoint) obj;
        if (!(geoPoint.mLatitude == this.mLatitude && geoPoint.mLongitude == this.mLongitude && geoPoint.mAltitude == this.mAltitude)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((((int) (this.mLatitude * 1.0E-6d)) * 17) + ((int) (this.mLongitude * 1.0E-6d))) * 37) + ((int) this.mAltitude);
    }

    private GeoPoint(Parcel parcel) {
        this.mLatitude = parcel.readDouble();
        this.mLongitude = parcel.readDouble();
        this.mAltitude = parcel.readDouble();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeDouble(this.mLatitude);
        parcel.writeDouble(this.mLongitude);
        parcel.writeDouble(this.mAltitude);
    }

    public int distanceTo(IGeoPoint iGeoPoint) {
        double d = 0.01745329238474369d * this.mLatitude;
        double d2 = 0.01745329238474369d * this.mLongitude;
        double latitude = 0.01745329238474369d * iGeoPoint.getLatitude();
        double longitude = 0.01745329238474369d * iGeoPoint.getLongitude();
        double cos = Math.cos(d);
        double cos2 = Math.cos(latitude);
        double cos3 = Math.cos(d2) * cos * cos2 * Math.cos(longitude);
        return (int) (Math.acos((Math.sin(d) * Math.sin(latitude)) + (Math.sin(d2) * cos * cos2 * Math.sin(longitude)) + cos3) * 6378137.0d);
    }

    public double bearingTo(IGeoPoint iGeoPoint) {
        double radians = Math.toRadians(this.mLatitude);
        double radians2 = Math.toRadians(this.mLongitude);
        double radians3 = Math.toRadians(iGeoPoint.getLatitude());
        double radians4 = Math.toRadians(iGeoPoint.getLongitude()) - radians2;
        return (Math.toDegrees(Math.atan2(Math.sin(radians4) * Math.cos(radians3), (Math.cos(radians) * Math.sin(radians3)) - ((Math.sin(radians) * Math.cos(radians3)) * Math.cos(radians4)))) + 360.0d) % 360.0d;
    }

    public GeoPoint destinationPoint(double d, float f) {
        double d2 = d / 6378137.0d;
        float f2 = 0.017453292f * f;
        double latitude = 0.01745329238474369d * getLatitude();
        double longitude = 0.01745329238474369d * getLongitude();
        double asin = Math.asin((Math.sin(latitude) * Math.cos(d2)) + (Math.cos(latitude) * Math.sin(d2) * Math.cos((double) f2)));
        return new GeoPoint(asin / 0.01745329238474369d, (Math.atan2((Math.sin((double) f2) * Math.sin(d2)) * Math.cos(latitude), Math.cos(d2) - (Math.sin(latitude) * Math.sin(asin))) + longitude) / 0.01745329238474369d);
    }

    public static GeoPoint fromCenterBetween(GeoPoint geoPoint, GeoPoint geoPoint2) {
        return new GeoPoint((geoPoint.getLatitude() + geoPoint2.getLatitude()) / 2.0d, (geoPoint.getLongitude() + geoPoint2.getLongitude()) / 2.0d);
    }

    public String toDoubleString() {
        return this.mLatitude + Constants.ACCEPT_TIME_SEPARATOR_SP + this.mLongitude + Constants.ACCEPT_TIME_SEPARATOR_SP + this.mAltitude;
    }

    public String toInvertedDoubleString() {
        return this.mLongitude + Constants.ACCEPT_TIME_SEPARATOR_SP + this.mLatitude + Constants.ACCEPT_TIME_SEPARATOR_SP + this.mAltitude;
    }

    @Deprecated
    public int getLatitudeE6() {
        return (int) (getLatitude() * 1000000.0d);
    }

    @Deprecated
    public int getLongitudeE6() {
        return (int) (getLongitude() * 1000000.0d);
    }
}
